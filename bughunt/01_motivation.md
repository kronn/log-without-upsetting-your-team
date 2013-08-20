!SLIDE transition=fade

&nbsp;

!SLIDE transition=fade small-right

> The only good Bug is a dead Bug!

<small>Buenos Aires Resident<br />Starship Troopers</small>

!SLIDE bullets incremental top
.notes There are different types of errors

# possible error types
* inconsistent data
* erratic failures


!SLIDE bullets top
.notes Or, if you are in the blame-game :)

# possible error sources
* user input
* external APIs


!SLIDE bullets incremental top
.notes One of the standard tools in such situations is logging.

# production.log
* logger.info

!SLIDE bullets incremental top
.notes Next, you want more information and think about raising the loglevel.

# raising the log level

* `config.log_level = :info`
* `config.log_level = :debug`


!SLIDE bullets incremental top big
.notes I advise not to raise the loglevel for the whole application in this case.
Actually, I cannot think of a good reason to make it more verbose than is is right now.

* Do not
* raise
* the loglevel
