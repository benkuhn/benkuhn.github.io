---
layout: post
title: Technological dark matter
---

Some tech companies seem ridiculously large proportionally to what they do.

To pick some random examples: Dropbox is 800 people, and their major product hasn't changed since '09. Facebook is pushing 10,000 employees to build a website--sure, a *really big* website, but it did basically the same thing a decade ago. (And these examples are basically random; I could pick on most other large tech companies.) What gives? Are they just really unproductive? Do their engineers work on unimportant things? What do they do that's big enough to justify their headcount?

I think that often software companies do over-hire and then work on silly things. But there are also a lot of things beneath the iceberg-tip app that most people come into contact with:

- **Monetization.** For many companies, their money-making product is barely visible to users at all. For instance, I've heard someone estimate that about half of Facebook's engineers work on adtech. Ads occupy a tiny corner of the experience of the typical Facebook user--none if you use an adblocker--but they're insanely important to Facebook and small optimizations can have a relatively enormous effect on Facebook's bottom line. So it makes sense for them to milk that opportunity.

    Along similar lines, a lot of consumer products have "enterprise" versions that make them the real money but also have a lot more overhead. For instance, my old employer, Theorem, sublet an office from [Livefyre](http://livefyre.com/), which a hosted commenting system like Disqus. Livefyre had something like 50-100 engineers to make a comment system. That's because they got all their revenue from white-label contracts with enormous news sites like the BBC with tons of custom work and high-touch engineering integration support.

- **Internal tools.** Many now-large companies were started before the profusion of SAAS apps that most new startups use. For instance, Dropbox has an entire team devoted to payment processing. Why do they process their own payments? Because when Dropbox was starting their payment processing, Patrick Collison still went out to personally pitch people on Stripe. Similarly, Dropbox built their own analytics framework because Mixpanel barely existed at the time (if it existed at all). Heck, a bunch of companies from that era host their own datacenters because AWS wasn't mature (or existent) when they started.

- **Defenses.** Once any company gets to a certain size, masses of unscrupulous people try to exploit them. Facebook spends a huge amount of effort fighting spam. Paypal was famously within days of being destroyed by fraud. Stripe already has e-books written about how to defraud them. I've heard it estimated that about 1% of all credit card transactions are fraudulent--that's on the order of $10 billion a year. That kind of loss justifies hiring a *lot* of engineers to fix it.

- **Localization.** People in the US tend to underestimate the difference between the US and other countries. Localizing an app to new markets, in a way that actually causes it to succeed, can be a *huge* undertaking. For instance, a friend of mine worked at Amazon on their launch in Japan, where it's customary to allow people to schedule deliveries. So Amazon had to build an entirely new delivery scheduling system just to launch in this one country.

- **Long tail features.** There's a famous adage, coined I think by Joel Spolsky, that "nobody uses more than 5% of Microsoft Word... but everyone uses a different 5%." For every one of Word's twenty bajillion features, there's probably some user for whom that feature saved their livelihood.

    When you're just starting out, it makes sense to build a small, focused product and make it the best you can be. That's because features that only appeal to 0.1% of your audience will get you tens of users at most. On the other hand, 0.1% of Word's or Facebook's audience is hundreds of thousands of people. Heck, even at Wave's relatively small scale, we spend a lot of our engineering effort on customer support tools that never touch 80% of our users.

- **Micro-optimizations.** Have you ever noticed how often Facebook tweaks their user interface? I think once every two or three weeks I notice them A/B testing some change on me. That type of extensive testing isn't worth it for small companies, but at Facebook's size they'd probably be happy to have 10 people work on A/B testing for a year if it improves their product by 1%.

    Similarly, many big companies spend a *lot* of time working on site reliability (cf. for example Netflix's [chaos monkey](http://techblog.netflix.com/2012/07/chaos-monkey-released-into-wild.html), one of my all-time favorite pieces of software, which periodically takes pieces of Netflix's infrastructure offline). If you make, say, $10,000 a minute in revenue (or about $5b/year, like Netflix), going from 99.9% uptime to 99.99% is worth $4.5m--enough to fund quite a large site reliability team.
