# Is It Larp? — Full Profile PDF version

This fixes the misleading URL-only analysis. A LinkedIn URL does not grant the app access to login-protected LinkedIn profile content. The website now supports user-provided profile PDFs exported through LinkedIn's own **More → Save to PDF** tool, and still accepts pasted text. URL-only public search snippets are used **only with explicit opt-in**, labeled as incomplete.

## Update your existing GitHub repository
Replace **three files** at their respective paths:
- `server.mjs` at repository root
- `package.json` at repository root
- `public/index.html` inside the existing `public` folder

Commit to GitHub. Render should auto-deploy. Render Build Command: `npm install`, Start Command: `npm start`. Keep the same `GEMINI_API_KEY`, `GEMINI_MODEL` (if set), and optional `TAVILY_API_KEY`. No new API keys.

## On your website
Open a LinkedIn profile on desktop. Click **More** or **Resources** → **Save to PDF** (if available). Return to your website, choose **Upload LinkedIn PDF**, and check the profile. The text is extracted from the provided PDF and only exact quoted excerpts can appear in result flags. The server does **not** store the uploaded PDF; it uses it during the analysis request.

If a profile doesn't offer Save to PDF, you can paste the About and Experience text instead. Imported PDFs are not proof that a claim is true and may omit portions of a profile. Scoring remains a critique of wording, not a fraud/AI authorship detector.

Note: LinkedIn limits who can use Save to PDF and PDF exports may not include every section. Avoid posting or sharing third parties' nonpublic information without permission.
