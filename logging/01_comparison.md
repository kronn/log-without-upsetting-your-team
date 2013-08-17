!SLIDE transition=fade

&nbsp;

!SLIDE transition=fade

# A look at the logs

!SLIDE commandline incremental top 
.notes rails tells us a story

	$ cd rails3-app && tail log/development.log
	Processing ArticlesController#index (for 127.0.0.1 at 2013-07-09 10:30:13) [GET]
	Started GET "/" for 127.0.0.1 at 2013-07-11 00:01:14 +0200
	Processing by HomeController#home as HTML
	  Article Load (0.3ms)  SELECT "articles".* FROM "articles" LIMIT 1
	  Article Load (0.3ms)  SELECT "articles".* FROM "articles" ORDER BY position ASC
	  Rendered home/home.html.haml within layouts/default (20.7ms)
	  Rendered application/_flash.html.haml (0.1ms)
	  CACHE (0.0ms)  SELECT "articles".* FROM "articles" ORDER BY position ASC
	  Rendered search/_search_box.html.haml (6.6ms)
	  Rendered layouts/_navigation.html.haml (1.0ms)
	  Rendered application/_footer.html.haml (3.5ms)
	Completed 200 OK in 58ms (Views: 51.8ms | ActiveRecord: 2.4ms)

	$ whatis development.log
	development.log (5)         - verbose logging in prose
	                              suitable for understanding the flow

!SLIDE top code
.notes rails tells us a story

<pre><code>
Processing ArticlesController#index (for 127.0.0.1 at 2013-07-09 10:30:13) [GET]
Started GET "/" for 127.0.0.1 at 2013-07-11 00:01:14 +0200
Processing by HomeController#home as HTML
  Article Load (0.3ms)  SELECT "articles".* FROM "articles" LIMIT 1
  Article Load (0.3ms)  SELECT "articles".* FROM "articles" ORDER BY position ASC
  Rendered home/home.html.haml within layouts/default (20.7ms)
  Rendered application/_flash.html.haml (0.1ms)
  CACHE (0.0ms)  SELECT "articles".* FROM "articles" ORDER BY position ASC
  Rendered search/_search_box.html.haml (6.6ms)
  Rendered layouts/_navigation.html.haml (1.0ms)
  Rendered application/_footer.html.haml (3.5ms)
Completed 200 OK in 58ms (Views: 51.8ms | ActiveRecord: 2.4ms)
</code></pre>

!SLIDE top code
.notes rails tells us a story

<pre><code>
Processing ArticlesController#index (for 127.0.0.1 at 2013-07-09 10:30:13) [GET]
Started <b>GET</b> <b>"/"</b> for 127.0.0.1 at 2013-07-11 00:01:14 +0200
Processing by <b>HomeController#home</b> as <b>HTML</b>
  Article Load (0.3ms)  SELECT "articles".* FROM "articles" LIMIT 1
  Article Load (0.3ms)  SELECT "articles".* FROM "articles" ORDER BY position ASC
  Rendered home/home.html.haml within layouts/default (20.7ms)
  Rendered application/_flash.html.haml (0.1ms)
  CACHE (0.0ms)  SELECT "articles".* FROM "articles" ORDER BY position ASC
  Rendered search/_search_box.html.haml (6.6ms)
  Rendered layouts/_navigation.html.haml (1.0ms)
  Rendered application/_footer.html.haml (3.5ms)
Completed <b>200</b> OK in <b>58ms</b> (Views: <b>51.8ms</b> | ActiveRecord: <b>2.4ms</b>)
</code></pre>

!SLIDE incremental commandline top
.notes we want just the information

	$ tail -n 1 log/production.log
	[2013-07-11 11:48:20 +0200] method=GET path=/ format=*/*
	  controller=home action=home status=200
	  duration=784.89 view=558.99 db=219.42

	$ whatis production.log
	production.log (5)          - concise logging, suitable
	                              for further processing

	$ grep log_level config/environments/production.rb -C 1
	  # do not change the loglevel as monitoring depends on this format
	  config.log_level = :info
	  config.lograge.enabled = true

!SLIDE bullets incremental

# the road so far
* bughunting might involve logging
* each log has a *different* purpose
* rails' standard log is telling a story
* on production concise info is enough
