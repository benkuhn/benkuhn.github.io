---
layout: post
title: Coders at Work on finding and preventing bugs
---

## On debugging

The most striking thing here was how many people just used print statements:

> [I assume you use symbolic debuggers. Do you ever resort to print statements?] I don't know of anybody who does that if they have the choice of using a good debugger. --Dan Ingalls

> Print statements. The great gods of programming said, “Thou shalt put printf statements in your program at the point where you think it's gone wrong, recompile, and run it.” --Joe Armstrong

> Mostly I just print values. When I'm developing a program I do a tremendous amount of printing. And by the time I take out, or comment out, the prints it really is pretty solid. I rarely have to go back. --Ken Thompson

> GHC has flags that let you say, in rather a batch-dumpy kind of way, “Just print out various things.”... Or sometimes I don't see what's going wrong so then I might scatter a few unsafe printfs around to show me what's actually going on. --Simon Peyton Jones

> Haskell. Because it was a purely functional language, I couldn't just drop in print statements. --Guy Steele

> Joe's Law of Debugging, which is that all errors will be plus/minus three statements of the place you last changed the program. --Joe Armstrong

> Debugging technology has been sadly underresearched. --Brendan Eich

## Testing

Most people were pretty enthused about testing:

> I had to force a lot of people to write tests, mostly people who were working for me. I would write tests to guard against my own code breaking, and then once they wrote code, I was like, “Are you even sure that works? Write a test. Prove it to me.” At a certain point, people realize, “Holy crap, it does pay off,” especially maintenance costs later. --Brad Fitzpatrick

> I've been more low-level than I should've been. I think what I've learned with Mozilla and Firefox has been about more test-driven development, which I think is valuable. And other things like fuzz testing, which we do a lot of. --Brendan Eich

> And the only way to make a program testable is to think about that before you write the first line of code. You can't retrofit block points and assert points and test points that work efficiently and do the right thing if you wait until the program is working. --Bernie Cosell

> I see tests more as a way of correcting errors rather than as a way of design. This extreme approach of saying, “Well, the first thing you do is write a test that says I get the right answer at the end,” and then you run it and see that it fails, and then you say, “What do I need next?”—that doesn't seem like the right way to design something to me. --Peter Norvig

The biggest outlier was Jamie Zawinski:

> Would development have been easier or faster if you guys had been more disciplined about testing? Zawinski: I don't think so. I think it would have just slowed us down. There's a lot to be said for just getting it right the first time. --Zawinski

Given that the Netscape project ended up floundering in a botched rewrite, I suspect that not testing might have worked for Jamie but not for his teammates...

## Assertions

A few interviewees drew special attention to their liberal use of asserting of invariants:

> Obviously putting in assert statements is always a good idea for debugging and like you said, for documentation purposes. It expressed the intent. We did that a lot. --Jamie Zawinski

> I have plenty of assertions, so if those botch then I'll be in the debugger for sure. --Brendan Eich

> I have a tendency to drop in assertions, particularly at the beginnings of procedures and at important points along the way. And when trying to—maybe “prove” is too strong a word—trying to justify to myself the correctness of some code I will often think in terms of an invariant and then prove that the invariant is maintained. I think that's a fruitful way to think about it. --Guy Steele

> If I'm writing code with some kind of tricky mathematical invariant I will go for a proof. I wouldn't dream of writing a sorting routine without constructing some kind of invariant and proving it. --Guy Steele

