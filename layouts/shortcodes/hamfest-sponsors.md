{{ $year := $.Page.Params.date | dateFormat "2006" }}
{{ range $.Site.Data.hamfest }}
	{{ if eq .year $year }}
		<div id="banner">
			<h3>Sponsors & Donors</h3>
			<ul>
			{{ range .donors }}
				<li>{{ . | markdownify }}
			{{ end }}
			</ul>
		</div>
	{{ end }}
{{ end }}
