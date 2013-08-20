# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "showoff"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott Chacon"]
  s.date = "2011-09-10"
  s.description = "  ShowOff is a Sinatra web app that reads simple configuration files for a\n  presentation.  It is sort of like a Keynote web app engine.  I am using it\n  to do all my talks in 2010, because I have a deep hatred in my heart for\n  Keynote and yet it is by far the best in the field.\n\n  The idea is that you setup your slide files in section subdirectories and\n  then startup the showoff server in that directory.  It will read in your\n  showoff.json file for which sections go in which order and then will give \n  you a URL to present from.\n"
  s.email = "schacon@gmail.com"
  s.executables = ["showoff"]
  s.files = ["README.rdoc", "Rakefile", "LICENSE", "bin/showoff", "lib/showoff", "lib/showoff/version.rb", "lib/showoff_utils.rb", "lib/showoff.rb", "lib/commandline_parser.rb", "views/index.erb", "views/onepage.erb", "views/header.erb", "views/presenter.erb", "public/css", "public/css/presenter.css", "public/css/showoff.css", "public/css/960.css", "public/css/spinner_bar.gif", "public/css/theme", "public/css/theme/ui.datepicker.css", "public/css/theme/ui.core.css", "public/css/theme/ui.accordion.css", "public/css/theme/ui.progressbar.css", "public/css/theme/ui.base.css", "public/css/theme/ui.all.css", "public/css/theme/ui.slider.css", "public/css/theme/ui.tabs.css", "public/css/theme/ui.dialog.css", "public/css/theme/images", "public/css/theme/images/ui-bg_diagonals-small_100_f0efea_40x40.png", "public/css/theme/images/ui-bg_glass_55_fcf0ba_1x400.png", "public/css/theme/images/ui-bg_highlight-soft_25_5A9D1A_1x100.png", "public/css/theme/images/ui-icons_e7e6e4_256x240.png", "public/css/theme/images/ui-bg_highlight-soft_25_327E04_1x100.png", "public/css/theme/images/ui-icons_cd0a0a_256x240.png", "public/css/theme/images/ui-icons_8DC262_256x240.png", "public/css/theme/images/ui-icons_808080_256x240.png", "public/css/theme/images/ui-bg_glow-ball_25_2e2e28_600x600.png", "public/css/theme/images/ui-bg_highlight-soft_100_f0efea_1x100.png", "public/css/theme/images/ui-icons_eeeeee_256x240.png", "public/css/theme/images/ui-bg_inset-soft_22_3b3b35_1x100.png", "public/css/theme/images/ui-icons_ffffff_256x240.png", "public/css/theme/images/ui-bg_highlight-soft_95_ffedad_1x100.png", "public/css/theme/images/ui-bg_flat_35_f0f0f0_40x100.png", "public/css/theme/ui.theme.css", "public/css/theme/ui.resizable.css", "public/css/sh_style.css", "public/css/reset.css", "public/css/fg.menu.css", "public/css/onepage.css", "public/js", "public/js/jTypeWriter.js", "public/js/core.js", "public/js/fg.menu.js", "public/js/presenter.js", "public/js/jquery-1.7.2.min.js", "public/js/sh_main.min.js", "public/js/onepage.js", "public/js/showoffcore.js", "public/js/jquery-print.js", "public/js/coffee-script.js", "public/js/jquery.cycle.all.js", "public/js/jquery.ws-0.3pre.js", "public/js/sh_lang", "public/js/sh_lang/sh_ruby.min.js", "public/js/sh_lang/sh_latex.min.js", "public/js/sh_lang/sh_html.min.js", "public/js/sh_lang/sh_erlang.min.js", "public/js/sh_lang/sh_ldap.min.js", "public/js/sh_lang/sh_scala.min.js", "public/js/sh_lang/sh_spec.min.js", "public/js/sh_lang/sh_php.min.js", "public/js/sh_lang/sh_xml.min.js", "public/js/sh_lang/sh_oracle.min.js", "public/js/sh_lang/sh_coffeescript.min.js", "public/js/sh_lang/sh_flex.min.js", "public/js/sh_lang/sh_xorg.min.js", "public/js/sh_lang/sh_gherkin.js", "public/js/sh_lang/sh_python.min.js", "public/js/sh_lang/sh_glsl.min.js", "public/js/sh_lang/sh_css.min.js", "public/js/sh_lang/sh_makefile.min.js", "public/js/sh_lang/sh_tcl.min.js", "public/js/sh_lang/sh_haxe.min.js", "public/js/sh_lang/sh_cucumber.min.js", "public/js/sh_lang/sh_sml.min.js", "public/js/sh_lang/sh_caml.min.js", "public/js/sh_lang/sh_slang.min.js", "public/js/sh_lang/sh_bison.min.js", "public/js/sh_lang/sh_gherkin.min.js", "public/js/sh_lang/sh_perl.min.js", "public/js/sh_lang/sh_prolog.min.js", "public/js/sh_lang/sh_javascript_dom.min.js", "public/js/sh_lang/sh_m4.min.js", "public/js/sh_lang/sh_c.min.js", "public/js/sh_lang/sh_sql.min.js", "public/js/sh_lang/sh_pascal.min.js", "public/js/sh_lang/sh_properties.min.js", "public/js/sh_lang/sh_log.min.js", "public/js/sh_lang/sh_changelog.min.js", "public/js/sh_lang/sh_desktop.min.js", "public/js/sh_lang/sh_cpp.min.js", "public/js/sh_lang/sh_csharp.min.js", "public/js/sh_lang/sh_java.min.js", "public/js/sh_lang/sh_diff.min.js", "public/js/sh_lang/sh_javascript.min.js", "public/js/sh_lang/sh_sh.min.js", "public/js/sh_lang/sh_lsm.min.js", "public/js/jquery.batchImageLoad.js", "public/js/jquery.doubletap-0.1.js", "public/js/jquery.uuid.js", "public/js/jquery.cookie.js", "public/js/showoff.js", "public/favicon.ico"]
  s.homepage = "http://github.com/schacon/showoff"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "The best damn presentation software a developer could ever love."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.3"])
      s.add_runtime_dependency(%q<redcarpet>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<gli>, ["~> 2"])
      s.add_runtime_dependency(%q<parslet>, [">= 0"])
      s.add_development_dependency(%q<mg>, [">= 0"])
    else
      s.add_dependency(%q<sinatra>, ["~> 1.3"])
      s.add_dependency(%q<redcarpet>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<gli>, ["~> 2"])
      s.add_dependency(%q<parslet>, [">= 0"])
      s.add_dependency(%q<mg>, [">= 0"])
    end
  else
    s.add_dependency(%q<sinatra>, ["~> 1.3"])
    s.add_dependency(%q<redcarpet>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<gli>, ["~> 2"])
    s.add_dependency(%q<parslet>, [">= 0"])
    s.add_dependency(%q<mg>, [">= 0"])
  end
end
