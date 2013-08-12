!SLIDE transition=fade

# Log-Formats


!SLIDE commandline incremental top
.notes rails tells us a story

	$ cd rails2-app && tail log/development.log
	Processing ArticlesController#index (for 127.0.0.1 at 2013-07-09 10:30:13) [GET]
		Parameters: {"section_id"=>"1", "action"=>"index", "controller"=>"articles"}
	Theme Load (0.8ms)   SELECT * FROM `themes` WHERE (`themes`.site_id = 1 AND (active = 1))
	can not find custom layout "layouts/startpage"
	Rendering template within layouts/home/home
	Rendering pages/articles/show
	Rendered layouts/shared/_head (15.8ms)
	Rendered shared/_flash (0.7ms)
	Rendered layouts/shared/_login_box (19.7ms)
	Section Load (0.2ms)   SELECT * FROM `sections` WHERE (`sections`.`id` = 3) ORDER BY lft
	CACHE (0.0ms)   SELECT * FROM `sections` WHERE (`sections`.`id` = 3) ORDER BY lft
	Rendered layouts/shared/_shop_menu (5.3ms)
	Rendered layouts/shared/_menu (1818.7ms)
	Rendered searches/_search_form (1.5ms)
	Rendered layouts/shared/_footer (426.5ms)
	Completed in 2762ms (View: 2484, DB: 113) | 200 OK [http://app.dev/]


!SLIDE commandline incremental top
.notes rails tells us a story

	$ cd rails3-app && tail log/development.log
	Processing ArticlesController#index (for 127.0.0.1 at 2013-07-09 10:30:13) [GET]
	Started GET "/" for 127.0.0.1 at 2013-08-12 00:01:14 +0200
	Processing by HomeController#home as HTML
	  Catalog Load (0.3ms)  SELECT "catalogs".* FROM "catalogs" LIMIT 1
	  Catalog Load (0.3ms)  SELECT "catalogs".* FROM "catalogs" ORDER BY position ASC
	  Rendered catalog/_offers.html.haml (0.0ms)
	  Rendered home/_offers.html.haml (2.8ms)
	  Rendered home/home.html.haml within layouts/default (20.7ms)
	  Rendered application/_flash.html.haml (0.1ms)
	  CACHE (0.0ms)  SELECT "catalogs".* FROM "catalogs" ORDER BY position ASC
	  Rendered search/_search_box.html.haml (6.6ms)
	  Rendered layouts/_navigation.html.haml (1.0ms)
	  Rendered application/_footer.html.haml (3.5ms)
	Completed 200 OK in 58ms (Views: 54.6ms | ActiveRecord: 2.4ms)

	$ whatis development.log
	development.log (5)         - verbose logging in prose


!SLIDE incremental commandline top
.notes we want just the information

	$ tail -n 1 log/production.log
	[2013-07-11 11:48:20 +0200] method=GET path=/ format=*/* controller=home action=home
		status=200 duration=784.89 view=558.99 db=219.42

	$ whatis production.log
	production.log (5)          - concise logging, suitable for further processing

	$ grep log_level config/environments/production.rb -C 1
	  # do not change the loglevel as monitoring depends on this format
	  config.log_level = :info
	  config.lograge.enabled = true


!SLIDE incremental commandline top
.notes other use-cases

	$ tail -n 10 log/newrelic_agent.log
	[07/11/13 11:44:20 +0200 vulcan (17559)] INFO : Dispatcher: passenger
	[07/11/13 11:44:20 +0200 vulcan (17559)] INFO : Application: AwesomeApp (Production)
	[07/11/13 11:44:20 +0200 vulcan (17559)] INFO : Connecting workers after forking.
	[07/11/13 11:44:20 +0200 vulcan (17559)] INFO : New Relic Ruby Agent 3.5.3 Initialized: pid = 17559
	[07/11/13 11:44:20 +0200 vulcan (17559)] INFO : Agent Log at /home/application/projects/awesome_app/production/releases/20130701090220/log/newrelic_agent.log
	[07/11/13 11:44:20 +0200 vulcan (17559)] INFO : NewRelic::Agent::Samplers::DelayedJobSampler sampler not available: No DJ worker present
	[07/11/13 11:44:28 +0200 vulcan (17699)] INFO : Starting the worker thread in 17699 after forking.
	[07/11/13 11:44:39 +0200 vulcan (17699)] INFO : Connected to NewRelic Service at collector-0.newrelic.com
	[07/11/13 11:44:39 +0200 vulcan (17699)] INFO : Reporting to: https://rpm.newrelic.com/accounts/1337/applications/23431337
	[07/11/13 11:44:39 +0200 vulcan (17699)] INFO : Reporting performance data every 60 seconds.

	$ whatis newrelic_agent.log
	newrelic_agent.log (5)      - multiline logging, suitable for debugging a little


!SLIDE bullets incremental

# the road so far
* each log has a purpose
* each log has a *different* purpose
* rails' standard log is telling a story
* on production we want other information
