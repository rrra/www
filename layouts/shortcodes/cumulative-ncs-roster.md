{{/* Complete list of NCS roster with links to SK pages */}}

{{ $thisyear := now.Format "2006" }}

{{/* Build list of SK call-signs for cross checking */}}
{{/* bracket call-signs to avoid substring hits */}}
{{ $scratch := newScratch }}
{{ $scratch.Add "sk" "|" }}
{{ range where .Site.Pages "Type" "sk" }}
	{{ $scratch.Add "sk" ( lower .Title ) }}
	{{ $scratch.Add "sk" "|" }}
{{ end }}

<p class="noprint">Cumulative NCS roster for formal RRRA nets
listed on the <a href="/calendar/">RRRA website calendar</a>.</p>

<p class="noprint">Please
visit the <a href="/ncs/">{{ $thisyear }} NCS Roster</a>
to view the {{ $thisyear }} roster of NCS operators.</p>

<dl id="list">
{{ range $key, $value := .Site.Taxonomies.ncs.ByCount }}
	{{ $test := printf "|%s|" ( lower $value.Name ) }}
	<dt class="twocol" style="width:10em;">
		{{ if in  ( $scratch.Get "sk" ) $test }}
			<a href="/sk/{{ lower .Page.Title }}">{{ .Page.Title }} - SK</a>
		{{ else }}{{ .Page.Title }}{{ end }}</dt>
	<dd class="twocol"><a href="/ncs/{{ $value.Name }}">{{ $value.Count }} net{{ if ne 1 $value.Count }}s{{ end }}</a></dd>
{{ end }}       
</dl>
