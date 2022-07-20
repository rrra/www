{{/* 
Sponsors and donors listed in ./data/hamfest/YYYY.toml
See existing files for formatting
*/}}

{{ $year := $.Page.Params.date | dateFormat "2006" }}
{{ range $.Site.Data.hamfest }}
	{{ if eq .year $year }}
		<h3>{{ if .sponsor }}Sponsors{{ end }}{{ if and ( .sponsor ) ( .donor ) }} & {{ end }}{{ if .donor }}Donors{{ end }}</h3>
		<p>This Hamfest was made possible by contributions from:</p>
		{{ with .sponsor }}
			<ul style="list-style:none;border-left:0;margin-left:0;">
			{{ range . }}
				{{/* From https://gohugo.io/templates/shortcode-templates/ */}}
				<figure {{ with .class }}class="{{ . }}"{{ end }}>
					{{ with .level }}<h4>{{ . }} Sponsor</h4>{{ end }}
					{{ with .link }}<a href="{{ . }}">{{ end }}
						{{ if .image  }}<img src="{{ .image }}" {{ with .name }}alt="{{ . }}" title="Visit {{ . }}"{{ end }} />{{ end }}
					{{ if .link }}</a>{{ end }}
					{{ if or ( .name ) ( .caption ) }}
					<figcaption><p>
						{{ .caption }}
						{{ with .link }}<a href="{{ . }}"> {{ end }}
							{{ .name }}
						{{ if .link }}</a>{{ end }}
					</p></figcaption>
				{{ end }}
			</figure>
		{{ end }}
		</ul>
		{{ end }}
		{{ if and ( .sponsor ) ( .donor ) }}<h4>Donors</h4>{{ end }}
		{{ with .donor }}
			<ul>
			{{ range . }}
				{{ with .favicon }}<li style="list-style:none;position:relative;left:-20px;"><img src="{{ . | safeURL }}" /> {{ else }}<li>{{ end }}{{ with .link }}<a href="{{ . }}">{{ end }}{{ .name }}{{ with .link }}</a>{{ end }}</li>
			{{ end }}
			</ul>
		{{ end }}
	{{ end }}
{{ end }}

