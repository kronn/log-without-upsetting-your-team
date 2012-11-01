!SLIDE transition=fade

!SLIDE section_title transition=fade

to_pass
====================

!SLIDE top

problem
====================

!SLIDE top

problem
====================

	Passwords should be easy to remember
	and hard to guess.  One technique is
	to have a sentence which can be easily
	remembered, transformed to a password.

!SLIDE

show, don't tell
====================
.notes '

!SLIDE commandline incremental

	$ password_of "I love my wife Melinda"
	IlmwM

	$ password_of "I love my wife Melinda" -a secure
	Tn2MwMlEj

	$ echo "I love my wife Melinda" | to_pass
	IlmwM$

	$ echo "I love my wife Melinda" | to_pass | pbcopy


!SLIDE bullets incremental

`to_pass` == `password_of`
--------------------------

* `to_pass --help`
* manpages available

!SLIDE bullets incremental

Architecture
====================

* Strings are transformed
* according to an algorithm
* which has conversion steps

!SLIDE bullets incremental

Algorithms
====================

* YAML-files
* some are provided
* `~/.to_pass/algorithms/___.yml`
* `rake algorithms` in project
* `man 5 to_pass-algorithm`

!SLIDE top

	@@@ YAML
	desc: Basic Algorithm for german usage
	name: Basic (german)
	sentence:
	  - replace: words
	  - first_chars
	  - replace: symbols
	  - collapse_chars
	word:
	  - replace: chars
	  - replace: symbols
	replacements:
	  symbols:
	    a: '@'
	  words:
	    ein: 1
	    eine: 1
	    zwei: 2
	    drei: 3
	    vier: 4
	    fuenf: 5
	    sechs: 6
	    sieben: 7
	    acht: 8
	    neun: 9
	  chars:
	    a: 4
	    e: 3
	    i: 1
	    o: 0
	    s: 5


!SLIDE bullets incremental

Converter
====================

* Ruby classes
* some are provided
* `~/.to_pass/converters/___.rb`
* `rake converters` in project
* `man 5 to_pass-converter`

!SLIDE top

	@@@ ruby
	module ToPass::Converters
	  class CollapseChars
	    # all the blanks are removed.
	    #
	    # this is useful if you convert
	    # a sentence into a password.
	    def self.collapse_chars(string)
	      string = string.split(' ').join('')
	    end
	  end
	end

!SLIDE bullets incremental

Obtaining
====================

* gem install to_pass
* git clone kronn/to_pass
* setup.rb

!SLIDE bullets incremental

Future
====================

* see <a href="http://github.com/kronn/to_pass">github.com/kronn/to_pass</a>
* there is a TODO-file
* new releases
* 1.0.0. still ahead
