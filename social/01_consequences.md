!SLIDE transition=fade
 
&nbsp;

!SLIDE transition=fade

# What could possibly go wrong?

!SLIDE small-right

> everything the system does for you, <br />
> the system also does to you

<small>
Leaver's Law OR David Brady
</small>

!SLIDE bullets incremental top

# IO takes time
* we had an increase of 200 - 2500 ms
* if you were amazon, you would die with such numbers
* Joe Developer and Sam Salesperson don't like that

!SLIDE bullets incremental top

# Monitoring breaks
* because the format changed
* Jane Ops and Kim DevOps don't like that

!SLIDE bullets incremental top

# Diskusage increases
* logs can grow really big
* even with log-rotation
* every partition has limits
* again, Ops-people don't like that

!SLIDE bullets incremental top

# What else?
* of course, we never forget such a thing
* unless we do
* and then discover it 2 years later
* personally, I don't like that

!SLIDE bullets incremental top
.notes it was a javascript-bug, so app-logging was not super-useful

# Bug squashing
* we raised the loglevel
* we spent time, sweat and tears
* we eventually found it
* the bad way

