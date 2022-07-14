{{/* 
Sponsors and donors listed in ./data/hamfest/YYYY.toml
See existing files for formatting
*/}}

{{ $year := $.Page.Params.date | dateFormat "2006" }}
{{ range $.Site.Data.hamfest }}
	{{ if eq .year $year }}
		<div id="banner">
			{{ with .sponsors }}
				<h3>Hamfest Sponsors</h3>
				<ul style="list-style:none;border:0;margin:0;">
				{{ range . }}
					<li><img src="{{ . }}" alt="Name goes
here"></li>
				{{ end }}
				</ul>
			{{ end }}
			{{ with .donors }}
				<h3>Door Prize Donors</h3>
				<ul>
				{{ range .}}
					<li>{{ . | markdownify }}</li>
				{{ end }}
				</ul>
			{{ end }}
		</div>
	{{ end }}
{{ end }}

{{/*
# From https://gohugo.io/templates/shortcode-templates/

<figure {{ with .Get "class" }}class="{{.}}"{{ end }}>
    {{ with .Get "link" }}<a href="{{ . }}">{{ end }}
        <img src="{{ .Get "src" }}" {{ if or (.Get "alt") (.Get "caption") }}alt="{{ with .Get "alt" }}{{ . }}{{ else }}{{ .Get "caption" }}{{ end }}"{{ end }} />
    {{ if .Get "link" }}</a>{{ end }}
    {{ if or (or (.Get "title") (.Get "caption")) (.Get "attr") }}
    <figcaption>{{ if isset .Params "title" }}
        <h4>{{ .Get "title" }}</h4>{{ end }}
        {{ if or (.Get "caption") (.Get "attr") }}<p>
        {{ .Get "caption" }}
        {{ with .Get "attrlink" }}<a href="{{ . }}"> {{ end }}
            {{ .Get "attr" }}
        {{ if .Get "attrlink" }}</a> {{ end }}
        </p> {{ end }}
    </figcaption>
    {{ end }}
</figure>

*/}}
