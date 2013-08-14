!SLIDE transition=fade
 
&nbsp;

!SLIDE transition=fade

# What could possibly go wrong?

!SLIDE

	Everything the software does for,
	it also does *to* you.

(Josh Susser || David Brady)
on the RubyRouges

!SLIDE bullets incremental

# IO takes time
* we had an increase of 200 - 2500 ms
* Joe Developer and Sam Salesperson don't like that
* if you were amazon, you would did with such numbers

!SLIDE

# Monitoring breaks
* because the format changed
* Jane Ops and Kim DevOps don't like that

!SLIDE

# Diskusage increases
* logs can grow really big
* even with log-rotation
* every partition has limits
* again, Ops-people don't like that

!SLIDE

# What else?
* of course, we never forget such a thing
* unless we do
* and then discover it 2years later
* personally, I don't like that
