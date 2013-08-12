!SLIDE transition=fade

&nbsp;

!SLIDE bullets incremental
.notes There are situations in which you need to know more about an error.

# error types
* inconsistent data
* erratic failures


!SLIDE bullets
.notes If you are in the blame-game :)

# error sources
* user input
* external APIs


!SLIDE bullets incremental
.notes One of the standard tools in such situations is logging.
With the presence of the production.log it is tempting to just pour messages in there.


!SLIDE bullets incremental
.notes Next, you want more information and think about raising the loglevel.

# raising the log level

* `config.log_level = :info`
* `config.log_level = :debug`


!SLIDE bullets incremental
.notes I advise not to raise the loglevel for the whole application in this case.
Actually, I cannot think of a good reason to make it more verbose than is is right now.

* Do not
* raise
* the loglevel
