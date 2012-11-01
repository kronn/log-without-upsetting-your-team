!SLIDE transition=fade

!SLIDE section_title transition=fade

# Lessons learned #

!SLIDE bullets incremental

# Ruby #

* `autoload` vs. `require`
* `/regex/` as parameters
* `&& and ||` are `equal? or not`
* `class Some::Thing` is only a class

!SLIDE bullets incremental

# different versions

* 1.8.6, 1.8.7, 1.9.2
* patchlevel
* Rubinius, jRuby
* Maglev? IronRuby?

!SLIDE bullets incremental

# rubygems w/o rubygems #

* `$LOAD_PATH`
* `RUBYOPT='-r rubygems'`

!SLIDE bullets incremental

# Debian compat, anyone? #

* installation `=>` setup.rb
* man pages `=>` ronn
* no rubygems `=>` `$LOAD_PATH`

!SLIDE bullets incremental

# jeweler? gemspec? bundler? #

* first jeweler
* then gemspec
* bundler for development
