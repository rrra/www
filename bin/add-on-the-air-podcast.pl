#!/usr/bin/perl

use strict;
use warnings;

use HTML::TreeBuilder;
use Try::Tiny;
use DateTime qw();

my @episodes;
my @dl_url;

my $index_url = "https://blubrry.com/arrlontheair/";

sub get_tree {
	my ( $url ) = @_;
	my $tree = try { HTML::TreeBuilder->new_from_url($url) };

	unless ($tree) {
		my $response = $HTML::TreeBuilder::lwp_response;
		if ($response->is_success) {
			print "Content of $index_url is not HTML, it's " . $response->content_type;
			sleep 3;
		} else {
			print "Couldn't get $index_url: ", $response->status_line;
			sleep 3;
		}
	exit;
	}
}

#===========================================================================
# Main Code
#---------------------------------------------------------------------------

my $path = "content/post/";
exit unless -d $path;

my $tree = get_tree($index_url) || die "failed to parse $index_url";

for ( $tree->look_down ( '_tag', 'a',
	sub {
		my $href = $_[0]{href};
		if ( defined $href and $href =~ m/ontheair/ and not $href =~ m/autoplay/ ) {
			push @episodes, $href
		}
	}
) ) { }

my $episode_url = $episodes[0];
$tree = get_tree($episode_url) || die "failed to parse $episode_url";

my $page_title = $tree->look_down ( '_tag', 'title' ) || die "title?";
my $ep_body    = $tree->look_down ( 'class', 'ep-body') || die "description container";
my $page_desc  = $ep_body->look_down ( '_tag', 'p') || die "description?";

for ( $tree->look_down ( 'class', 'sidebar-button download-btn',
	sub {
		my $href = $_[0]{href};
		if ( defined $href ) {
			push @dl_url, $href
		}
	}
) ) { }

my $dl_url = $dl_url[0];
my $ep_url = $episode_url;
my $title  = $page_title->as_text;
my $desc   = $page_desc->as_text;
$desc =~ s/"/*/g;

my $slug = $title;
$slug =~ s/'//g;
$slug =~ s/ /-/g;
$slug =~ s/-+/-/g;
$slug =~ tr/A-Z/a-z/;

my $now       = DateTime->now( time_zone => 'local');
my $zone      = $now->strftime('%z');
$zone         =~ s/(.*)(..)$/$1:$2/;
my $datestamp = $now->iso8601() . $zone;

my $filename = $path . $now->strftime('%Y/') . $slug . ".md";
exit if -f $filename;

open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";

print $fh <<"END_HERE_1";
+++
authors = [ "K0STK" ]
categories = [ "Education" ]
slug = ""
tags = [ "ARRL", "podcast" ]
moreText = "Listen To The Podcast"
thumbnail = "https://assets.blubrry.com/coverart/300/930449-721631.jpg"
END_HERE_1

print $fh "date = \"$datestamp\"\n";
print $fh "title = \"$title\"\n";
print $fh "description = \"$title: $desc\"\n";
print $fh "+++\n";
print $fh "In this episode of ARRL's monthly On The Air podcast: ";
print $fh "\"" . $desc . "\"\[^1\]\n\n";
print $fh "\[^1\]: \"$title\", blubrry podcasting, retrieved " . $now->strftime('%B %d %Y') . ", $ep_url.\n\n";
print $fh "<!--more-->\n\n";
print $fh "{{< audio \"$dl_url\" \"Download the podcast\" >}}\n\n";
print $fh "{{< about-on-the-air >}}\n";

close($fh);

exec "sensible-editor $filename";
