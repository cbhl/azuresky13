---
title: "What I've Been Reading (August 2025)"
created_at: 2025-08-04 16:00:00 -0400
kind: article
published: true
---

Here are my thoughts on a few things I read lately.

## Books

<!-- Insert book cover here -->
- _Algospeak_ by Adam Aleksic

In an attempt to try to be a little bit more offline, I picked up a physical copy of Adam Aleksic's _Algospeak_ from a local bookstore. Aleksic makes some fairly astute observations, such as how creators "cross-post... and as such try to work within the most severe algorithmic constraints" and how middle-schoolers "aren't saying 'unalive' to avoid algorithmic censorship, they do so because they see other people using it."

Aleksic uses etymology to really dissect how slang and new words move from memes and trends into the offline world. He says they need to start in a community (where they spread through memes), be unobtrusive (not too tied to a meme or too random), and fill a "semantic gap" (that is, express an idea that doesn't have an existing word, so that its use is sticky).

He also discusses techniques that video creators use to hold your attention -- like how videos often start instantly with someone speaking (unless they have a "millennial pause") and the use of new phrases like "no because".

Aleksic then shows how these two ideas, combined with the growing proliferation of communities, creates a cycle that causes English to evolve faster and faster.

Finally, Aleksic closes by showing how corporations use microlabels and hyper-compartmentalization of identity to commodify them and sell you more stuff (clothes, music, and so forth).

After reading the book, I was surprised to find that a dozen or so friends also follow Aleksic on [Instagram](https://www.instagram.com/etymologynerd/) and a few even had it on their Goodreads To-Read lists. IMO, _Algospeak_ is a good and quick read for anyone who works as a developer on a social network or ecommerce.

<!-- subscribe now -->

## Blogs and other internet stuff

- [_Vibe code is legacy code_](https://blog.val.town/vibe-code) ([HN](https://news.ycombinator.com/item?id=44739556))

I've heard a few anecdotal reports from dev friends that AI doesn't make them 2x more productive, let alone 10x more productive. _Vibe Code is Legacy Code_ offers a  simple, compelling argument why this could be the case.

- [_fast_](https://www.catherinejue.com/fast) ([HN](https://news.ycombinator.com/item?id=44736967))

_fast_ reiterates that if your software feels instant, that it changes how users use it.

There are a lot of fun new performance problems to solve with AI / LLMs. The 0.1 / 1.0 / 10 second guidelines that Catherine alludes to date back to 1968 ([_Response Times: The 3 Important Limits_](https://www.nngroup.com/articles/response-times-3-important-limits/)) and they still apply today.

Last year we saw techniques such as speculative decoding [(_Lex Fridman podcast #447_)](https://youtu.be/oFfVt3S51T4?t=1200) and streaming responses.

<!-- insert image here. (Aside: speedcubes are a real-world example of how performance can induce usage.) -->

- [_The best available open weight LLMs now come from China_](https://simonwillison.net/2025/Jul/30/chinese-models/)

Key word being _open_ (well, weights-available).

I'd probably still default to trying a closed model first. Of course you need a strategy for dealing with `HTTP 429 Too Many Requests` if you happen to get a sudden surge of traffic, a way to track if quality ("evals") regress, and to periodically re-evaluate with new models and providers.

It has been cool seeing some of the throughput numbers from Cerebras and Groq though, if you can find a subproblem in the grander architecture where it makes sense to slot them in.

- [_Does the Bitter Lesson Have Limits?_](https://www.dbreunig.com/2025/08/01/does-the-bitter-lesson-have-limits.html) ([HN](https://news.ycombinator.com/item?id=44762022))
- [_tokens are getting more expensive_](https://ethanding.substack.com/p/ai-subscriptions-get-short-squeezed) ([HN](https://news.ycombinator.com/item?id=44775700))

I first came across [_the Bitter Lesson_](http://www.incompleteideas.net/IncIdeas/BitterLesson.html) from a former colleague. If it does hold, then in the limit you get results like "we don't even need OSes any more; just emulate the OS with a generative model". Some folks at the University of Waterloo tried this ([_NeuralOS_](https://arxiv.org/abs/2507.08800), ([HN](https://news.ycombinator.com/item?id=44564531))) and the results were simultaneously shocking ("wow I can actually click an icon and open a window") and underwhelming ("we're using the full power of an H100 and this is in many ways a worse 'computer' than I had in 1995").

Power, compute, and financial constraints (that is, "the laws of physics" and "budgets") suggest to me that there's still plenty of economic value to be delivered by "building knowledge in" in the short term with classical methods.

I think my favorite version of this was [Timefold's _How I built an AI company to save my open source project_](https://timefold.ai/blog/how-i-built-an-ai-company-to-save-my-open-source-project). Timefold is "just" a rebranded constraint solver and has nothing to do with LLMs or generative AI, but brands itself as AI because that's what VCs, boards, and investors demand of businesses.

<!-- subscribe CTA here -->

