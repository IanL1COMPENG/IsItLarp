Is It Larp? — LinkedIn PDF Profile Name Fix

REPLACE ONLY: server.mjs

How to update your GitHub repository:
1. Open https://github.com/IanL1COMPENG/IsItLarp
2. Choose Add file > Upload files.
3. Upload this server.mjs at the repository root (beside package.json), replacing the existing server.mjs.
4. Commit changes. Render will usually auto-deploy, or deploy latest commit manually.
5. Upload a LinkedIn PDF on https://isitlarp.onrender.com and click Check profile.

What changed:
- The existing frontend already displays data.displayName. Previously the server always returned 'LinkedIn profile'.
- Now Gemini is asked to identify the profile owner's printed name from the uploaded PDF.
- The server checks that name appears near the beginning of the extracted PDF text before displaying it.
- If the name cannot be determined safely, it retains 'LinkedIn profile' instead of guessing.
- No change to Gemini model settings, Tavily search, PDF parser, dependencies, or website design.

The LARP score is about wording, not proof that a person lied or used AI.
