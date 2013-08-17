!SLIDE transition=fade

&nbsp;

!SLIDE transition=fade small-right

> The only good Bug is a dead Bug!

<small>Buenos Aires Resident<br />Starship Troopers</small>

!SLIDE bullets incremental top
.notes There are situations in which you need to know more about an error.

# possible error types
* inconsistent data
* erratic failures


!SLIDE bullets top
.notes If you are in the blame-game :)

# possible error sources
* user input
* external APIs


!SLIDE bullets incremental top
.notes One of the standard tools in such situations is logging.
With the presence of the production.log it is tempting to just pour messages in there.

# production.log
* logger.info

!SLIDE bullets incremental top
.notes Next, you want more information and think about raising the loglevel.

# raising the log level

* `config.log_level = :info`
* `config.log_level = :debug`


!SLIDE bullets incremental top big
.notes Advise: DO NOT RAISE THE LOGLEVEL.
I advise not to raise the loglevel for the whole application in this case.
Actually, I cannot think of a good reason to make it more verbose than is is right now.

* Do not
* raise
* the loglevel
