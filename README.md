# Is It Larp? — Corporate-Glaze Detector (v3)

Replace the files in the GitHub repository with `server.mjs` and `public/index.html`. Keep `package.json` and your existing Render API keys.

## What changed
- Evidence-anchored heuristic detector that still works when Gemini returns zero warnings.
- More playful explanations for generic LinkedIn phrasing and big results that merit clarification.
- Timeline questions from dates explicitly present, not assumptions that a freshman cannot learn a technology.
- Does not claim someone lied, used AI, or has an impossible job simply from résumé text.
- Preserves Gemini, Tavily, LinkedIn PDF parsing and profile name extraction.

## Install
1. Upload root `server.mjs` on GitHub to replace the existing file.
2. Open `public/` in GitHub and replace `index.html` with `public/index.html` from this package.
3. Commit the changes; Render should deploy automatically.
4. Re-test with the same LinkedIn PDF.

Tested against the user-provided LinkedIn PDF extracted text with a simulated Gemini response containing zero findings: 51/100, with six exact-quote follow-up observations and one concrete task. This score describes the writing, not dishonesty.

No new API keys are needed. This is a presentation-hype score, not an employment verification or an AI-authorship probability.
