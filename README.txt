# Is It Larp? — Gemini backend

Replace your repository's existing `server.mjs` with the one in this ZIP. Keep `public/index.html` and `package.json` unchanged.

In your Render Web Service -> Environment add:
- `GEMINI_API_KEY`: your secret Gemini API key from https://aistudio.google.com/api-keys
- `TAVILY_API_KEY`: your existing Tavily key, for optional search of publicly indexed LinkedIn snippets.

You can remove `OPENAI_API_KEY` because this version does not use OpenAI.

Make sure `public/index.html` exists and `package.json` is in the repository root. Deploy latest commit on Render, then visit `/api/status`. Both booleans should be `true` when both keys are set.

Default Gemini model: `gemini-3.1-flash-lite`. Optional `GEMINI_MODEL` overrides the model.

Gemini free-tier quotas apply. LinkedIn URL-only checks depend on Tavily finding publicly indexed text. The score describes word choice, not whether a person is lying.
