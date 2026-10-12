Is It Larp? — Safer, stricter LARP scoring backend
=================================================
Replacement for: https://github.com/IanL1COMPENG/IsItLarp/blob/main/server.mjs

HOW TO UPDATE
1. Extract this ZIP.
2. In your GitHub repository, replace the existing root-level server.mjs
   with the server.mjs in this ZIP. Use Add file > Upload files > Commit changes.
3. Render should redeploy automatically. Otherwise select Manual Deploy > Deploy latest commit.
4. Open https://isitlarp.onrender.com and test your profile.

DO NOT change or upload .env or private API keys.

WHAT CHANGED
- Retains GEMINI_API_KEY + TAVILY_API_KEY, your existing Gemini model
  (gemini-3.5-flash-lite), the existing /api/analyze response format,
  and the 85-second Gemini request timeout.
- Finds formulaic and buzzword-heavy resume language more consistently.
- Treats the score as writing hype only, not proof of lies or AI authorship.
- NEVER mixes pasted profile text and Tavily search results.
- Only displays quoted excerpts that exist in one supplied passage.
- Ignores Gemini-invented profile names, roles, fields, summaries,
  job titles, explanations and statistics when not supported by text.
- URL-only results are marked low-confidence search previews; these
  snippets may be out of date, so paste profile text for more accurate results.
- No frontend update and no new API key required.

IMPORTANT
A short search snippet cannot reveal someone's real experience or
prove whether ChatGPT wrote their profile. The site audits wording, not truth.

TESTED
node --check server.mjs (passed)
Local API tests with mocked Gemini + Tavily (passed): a user-pasted
retail/business profile received no hallucinated engineering claims,
and an unrelated LinkedIn search result was filtered out.
