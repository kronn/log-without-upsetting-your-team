!SLIDE transition=fade
 
&nbsp;

!SLIDE title_slide transition=fade

There are situations in which you need to know more about an error. One
of the standard tools in such situations is logging. With the presence
of the production.log it's tempting to just pour messages in there.

Now you have a bigger log and put that burden on the whole team.

Or, you put your carefully crafted log in a dedicated logfile and do not upset
your team. With a little luck and a friendly word, you might even get a special
graph by the ops-folks from you log so you can visually debug and detect
recurring patterns.

You can even think of lowering the log_level to :warning, if you like
