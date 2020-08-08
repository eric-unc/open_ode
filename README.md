# open_ode

open_ode is a Ruby gem that implements various numberical procedures for solving orinary differential equations (ODEs), similar to those provided by MATLAB. This includes Forward Euler's, and Adams-Bashforth's methods, among others. open_ode is designed to be relatively light-weight.

## Q/A

**Does this actually work?**

Right now? No, it's a work-in-progress.

**Will this work for second and other higher order differential equations? And what about partial differential equations?**

I don't know how those work so probably not. In an imaginary world where there's a lot of demand and I am a total mathematical genius, I'll look into it. As for PDEs, this gem is called open_*ode* so it is unlikely to ever support those.

**What's the difference between this and the "ode" Ruby gem?**

The ode gem has not been updated since 2014. It's a wrapper for a FORTRAN library, and is highly complex. I cannot vouch for how well it works or not, but it doesn't have any tests, so it's a roll of the dice. This gem, once it is out of alpha, will be much simpler, although it could be slower.

**Do you have any plans to port this gem to Crystal when it is finished?**

Funny you ask that very specific question, question-asking guy. I do. I was originally going to write this in Crystal, however I decided not to, since I am familar with Ruby, while still needing some practice to reinforce my knowledge, and Crystal does not have strong Windows support just yet (plus the documentation for it is not as extensive as with Ruby).
