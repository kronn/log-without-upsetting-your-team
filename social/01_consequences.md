!SLIDE transition=fade
 
&nbsp;

!SLIDE transition=fade

# What could possibly go wrong?

!SLIDE small-right

> everything the system does for you, the system also does to you

<small>
Leaver's&nbsp;Law as stated by David&nbsp;Brady on the RubyRogues
</small>

!SLIDE bullets incremental

# IO takes time
* we had an increase of 200 - 2500 ms
* if you were amazon, you would die with such numbers
* Joe Developer and Sam Salesperson don't like that

!SLIDE bullets incremental

# Monitoring breaks
* because the format changed
* Jane Ops and Kim DevOps don't like that

!SLIDE bullets incremental

# Diskusage increases
* logs can grow really big
* even with log-rotation
* every partition has limits
* again, Ops-people don't like that

!SLIDE bullets incremental

# What else?
* of course, we never forget such a thing
* unless we do
* and then discover it 2years later
* personally, I don't like that
