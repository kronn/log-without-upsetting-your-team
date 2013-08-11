!SLIDE

!SLIDE top small
.notes rails tells us a story

	Processing ArticlesController#index
	(for 127.0.0.1 at 2013-07-09 10:30:13) [GET]
		Parameters: {"section_id"=>"1", "action"=>"index",
		             "controller"=>"articles"}
	can not find custom layout "layouts/startpage"
	Rendering template within layouts/home/home
	Rendering pages/articles/show
	Rendered layouts/shared/_head (15.8ms)
	Rendered shared/_flash (0.7ms)
	Rendered layouts/shared/_login_box (19.7ms)
	Rendered layouts/shared/_shop_menu (5.3ms)
	Rendered layouts/shared/_menu (1818.7ms)
	Rendered searches/_search_form (1.5ms)
	Rendered layouts/shared/_footer (426.5ms)
	Rendered layouts/shared/_skyscraper (3.5ms)
	Rendered layouts/shared/_foot (0.6ms)
	Completed in 2762ms (View: 2484, DB: 113) | 200 OK [http://app.dev/]

!SLIDE top small
.notes we want just the information

	lograge format

!SLIDE bullets incremental

# Lessons
* all logs are equal
* some are more equal

