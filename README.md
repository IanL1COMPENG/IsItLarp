# Is It Larp? — Evidence-based detector update

This is a drop-in update to the current working Gemini + Tavily website. It preserves the existing PDF extraction and API keys.

## Replace these two files on GitHub

1. `server.mjs` at the repository root.
2. `public/index.html` inside the **public** folder.

`package.json` and Render environment variables do **not** need to change.

On Render, wait for automatic deployment or select **Manual Deploy → Deploy latest commit**.

## What changed

- More focused checking of inflated role titles, scope and ownership claims, vague outcomes, generic language and overstatements of expertise.
- The Gemini response now contains exact quote pairs for claim-to-duty comparisons; the server checks both quotes are in the supplied text and close enough that they're less likely to refer to unrelated work.
- The major and year of study appear only when explicit, quotable evidence of them appears in the supplied profile. Graduation year alone is **not** treated as a reliable indication of year of study.
- React, Node.js, coding, AI and other advanced technologies are **not** penalized merely because someone is a freshman, is in another major, or used a tool where AI assistance is possible.
- Strong phrases such as "expert" without concrete supporting descriptions can be flagged as **needs context**, not proof of falsehood.
- Generic, polished and ChatGPT-like phrases are labeled as *template-like*, not "written by AI."
- Scores use bounded server-side evidence rules rather than trusting Gemini's unverified score.
- Invented evidence is rejected, and PDF/pasted profile text cannot be mixed with Tavily snippets.

## Research used to guide the rubric

- LinkedIn Help, *Practices to avoid when optimizing your profile for LinkedIn search* — recommends avoiding keyword stuffing and inflating experience/education: https://www.linkedin.com/help/linkedin/answer/a525117
- LinkedIn Learning, *The 10 Words You Shouldn't Use in Your LinkedIn Profile* — highlights generic buzzwords: https://www.linkedin.com/business/learning/blog/career-success-tips/the-10-words-you-absolutely-shouldnt-put-in-your-linkedin-profil
- ACL Findings NAACL 2025, *A Practical Examination of AI-Generated Text Detectors for Large Language Models* — finds detector performance unreliable in some conditions: https://aclanthology.org/2025.findings-naacl.271/
- LinkedIn Help, *Create a good LinkedIn profile* — encourages relevant experiences and project media: https://www.linkedin.com/help/linkedin/answer/a554351/edit-your-profile
- Google Gemini API structured output documentation: https://ai.google.dev/gemini-api/docs/generate-content/structured-output

## Limitations

The score measures the **presentation of claims**, not the chance someone lied, used ChatGPT, or couldn't possibly know a skill. Some entries could be genuine even if the details are sparse. Search previews are less reliable than LinkedIn PDF exports or pasted profile text. 

Tests: `node --check` on the backend and inline JavaScript, plus five offline mocked-Gemini scenarios (freshman React project, inflated retail title with matching duties, invented engineering claims, invalid year inference and repeated generic prose). Live Gemini behavior with this updated prompt has **not** yet been tested.
