<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8" />
    <meta name="author" content="{{ site.meta.author.name }}" />
    <meta name="keywords" content="{{ page.tags | join: ',' }}" />
    <title>{{ site.name }}{% if page.title %} / {{ page.title }}{% endif %}</title>
    <link href="http://mytharcher.github.com/feed.xml" rel="alternate" title="{{ site.name }}" type="application/atom+xml" />
    <link rel="stylesheet" type="text/css" href="/assets/css/site.css" />
    <link rel="stylesheet" type="text/css" href="/assets/css/code/github.css" />
    {% for style in page.styles %}<link rel="stylesheet" type="text/css" href="{{ style }}" />
    {% endfor %}
  </head>

  <body class="{{ page.pageClass }}">

    <div class="main">
      {{ content }}

      <footer>
	<p>&copy; Since 2012</p>
      </footer>
    </div>

    <side>
      <h2><a href="/">{{ site.name }}</a><a href="/feed.xml" class="feed-link" title="Subscribe"><img src="http://blog.rexsong.com/wp-content/themes/rexsong/icon_feed.gif" alt="RSS feed" /></a></h2>
      
      <nav class="block">
	<ul>
	  {% for category in site.custom.categories %}<li class="{{ category.name }}"><a href="/category/{{ category.name }}/">{{ category.title }}</a></li>
	  {% endfor %}
	</ul>
      </nav>
      
      <form action="/search/" class="block block-search">
	<h3>Search</h3>
	<p><input type="search" name="q" placeholder="Search" /></p>
      </form>
      
      <div class="block block-about">
	<h3>关于我</h3>
	<figure>
	  {% if site.meta.author.gravatar %}<img src="{{ site.meta.gravatar}}{{ site.meta.author.gravatar }}?s=256" />{% endif %}
	  <figcaption><strong>{{ site.meta.author.name }}</strong></figcaption>
	</figure>
	<p>速冻沙漠，Further Lee。喜欢Coding，哲学，文学和羽毛球。喜欢说真话。</p>
      </div>

      <div class="bshare-custom icon-medium">
	<a title="分享到Facebook" class="bshare-facebook" href="javascript:void(0);"></a>
	<a title="分享到Twitter" class="bshare-twitter" href="javascript:void(0);"></a>
	<a title="分享到LinkedIn" class="bshare-linkedin" href="javascript:void(0);"></a>
	<a title="分享到新浪微博" class="bshare-sinaminiblog" href="javascript:void(0);"></a>
	<a title="分享到人人网" class="bshare-renren" href="javascript:void(0);"></a>
	<a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a>
	<span class="BSHARE_COUNT bshare-share-count" style="float: none; "></span>
      </div>
      
      <div class="block block-license">
	<h3>Copyright</h3>
	<p><a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/2.5/cn/" target="_blank" class="hide-target-icon" title="Copyright declaration of site content"><img alt="知识共享许可协议" src="http://i.creativecommons.org/l/by-nc-nd/2.5/cn/88x31.png" /></a></p>
      </div>
      
      {% if site.meta.author.github %}
      <div class="block block-fork">
	<a href="https://github.com/{{ site.meta.author.github }}"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png" alt="Fork me on GitHub"></a>
      </div>
      {% endif %}
      
    </side>

    <script src="http://elfjs.googlecode.com/files/elf-0.4.0-min.js"></script>
    <script src="/assets/js/highlight.js"></script>
    <script src="/assets/js/hljs/languages/css.js"></script>
    <script src="/assets/js/hljs/languages/xml.js"></script>
    <script src="/assets/js/hljs/languages/javascript.js"></script>
    <script src="/assets/js/hljs/languages/php.js"></script>
    <script src="/assets/js/hljs/languages/ruby.js"></script>

    <script src="/assets/js/site.js"></script>
    {% for script in page.scripts %}<script src="{{ script }}"></script>
    {% endfor %}
    <script>
      site.Urls.GOOGLE_API = '{{site.meta.gapi}}';
      site.Urls.DISCUS_COMMENT = '{{ site.meta.author.disqus }}' ? 'http://{{ site.meta.author.disqus }}.{{ site.meta.disqus }}' : '';

      site.Vars.SITE_NAME = '{{ site.name }}';
      site.Vars.GOOGLE_CUSTOM_SEARCH_ID = '{{ site.meta.author.gcse }}';
    </script>
    <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
    <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>

  </body>
</html>
