<header>
	<h1>{% if page.title %}<a href="/" class="minor">{{ site.name }}</a> / {{ page.title }}{% else %}{{ site.name }}{% endif %}</h1>
	{% if page.title == null %}<p class="additional">= =根据地</p>{% endif %}
</header>
