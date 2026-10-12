# Is It Larp?

A minimal, low-key LinkedIn **hype and résumé-inflation checker** with AI-powered text analysis. White background, one URL field, plain results.

The score is a **subjective 0–100 wording/hype index**, **not** a probability that someone lied, used AI, or falsified credentials. The site respects legitimate retail and entry-level work.

## Quick start

1. Install **Node.js 20 or newer**. No npm packages are needed. On Windows, you can double-click `start-windows.bat` after unzipping.
2. Copy `.env.example` to `.env`.
3. In `.env`, set your own `OPENAI_API_KEY` (required for real analysis).
4. Optionally set `BRAVE_SEARCH_API_KEY` (to retrieve publicly indexed snippets when you enter a URL alone).
5. In the `isitlarporno` folder, double-click `start-windows.bat` (Windows) or run:

   ```bash
   npm start
   ```

6. Visit **http://localhost:3000**.

The **fictional example verdict** works without API keys. For a live AI check, use the profile text field. With both keys set, URL-only checks are attempted against public search results, but will politely ask for text when not enough material is available.

## Why can't it read every LinkedIn URL?

LinkedIn often restricts access to profiles and its rules prohibit unauthorized scraping. This project **does not scrape LinkedIn** or bypass sign-in restrictions. It uses user-provided profile text and can optionally fetch search-index snippets through Brave Search. Search snippets are not identity verification or proof of employment. If public results are insufficient, the app requests the About/Experience text instead of fabricating a score.

## What the AI does

- Checks title inflation and exaggerated claims based on the supplied text.
- Calls out generic corporate language and missing specifics.
- Credits concrete duties, metrics, responsibilities and results.
- Returns short evidence quotes, confidence level, plain-English translations and a 0–100 subjective hype score.
- **Does not detect AI authorship with certainty, verify employment, or determine dishonesty.**

## Files

- `public/index.html` — complete responsive frontend, including a no-API-key fictional demo.
- `server.mjs` — zero-dependency Node backend for OpenAI's Responses API and optional Brave web search.
- `.env.example` — safe template for server-side keys.
- `.gitignore` — prevents accidental publishing of `.env`.

## Deployment

Deploy to a **Node-compatible host** and set `OPENAI_API_KEY` and optionally `BRAVE_SEARCH_API_KEY` as *server-side environment variables*. The default start command is `npm start`, and the server respects the `PORT` environment variable.

**GitHub Pages alone is not enough for real AI analysis**, since it cannot run the Node backend. It can only host a static version of the site (including the fictional demo).

## Technical notes

- No profiles are saved in a database or publicly shared by the app.
- Keys are never sent to the browser.
- In-memory IP-based request limit of 15 checks per hour for basic protection (use real API gateway limits for production).
- Content is rendered as text, not unsanitized HTML.
- AI input is treated as untrusted; prompt injection and hallucinations remain general model limitations.
- Review privacy terms, privacy policy, analytics policy, moderation and third-party API costs before a public launch.
