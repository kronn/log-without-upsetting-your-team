!SLIDE transition=fade
 
&nbsp;

!SLIDE bullets incremental
.notes
There are situations in which you need to know more about an error. One
of the standard tools in such situations is logging. With the presence
of the production.log it's tempting to just pour messages in there.

## Tempation
* `production.log`
* `log_level = :debug`

!SLIDE bullets incremental
.notes
Now you have a bigger log and put that burden on the whole team.

# Burden
* big logs are big
* and you're not alone

!SLIDE bullets incremental
.notes
Or, you put your carefully crafted log in a dedicated logfile and do not upset
your team. With a little luck and a friendly word, you might even get a special
graph by the ops-folks from you log so you can visually debug and detect
recurring patterns.

# Specialise
* dedicate a logfile
* log your business domain
* graph the results

!SLIDE 
You can even think of lowering the log_level to :warning, if you like

# Future
* `log_level = :warning`?
* `ls -1 log/*.log | wc -l # => 23`?
* `ls -1 log/*.log | wc -l # => 42`?
