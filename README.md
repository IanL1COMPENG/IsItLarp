# Is It Larp? — PDF reader repair

This patch keeps your existing design, Gemini model, Tavily search, keys and API endpoints.

## What's changed

- Server-side text extraction now tries Mozilla PDF.js (`pdfjs-dist` 4.10.38) before the older `pdf-parse` reader.
- Falls back to the old reader when the new reader fails or extracts too little text.
- Distinguishes password-protected PDFs, scanned/image-only PDFs, invalid files and incompatible PDF formats.
- Logs only parsing errors and page/text counts, not the profile's private content.

## Update GitHub

You need only **two changed files**, both at your repository root:
- `server.mjs`
- `package.json`

Leave `public/index.html` as it currently is. It's included here only to make the ZIP a full backup.

After committing, Render must run its **Build Command `npm install`** to install the new `pdfjs-dist` dependency. Its Start Command stays `npm start`. Keep `GEMINI_API_KEY` and `TAVILY_API_KEY` unchanged. Avoid manually uploading a `node_modules` directory.

Use a real exported LinkedIn PDF, ideally from LinkedIn **More → Save to PDF**, not a screenshot or scanned file. PDFs with no selectable text cannot be extracted by this text-only server and must be pasted as text or processed with OCR separately.

If the upload still fails, take a screenshot of the new Render logs that start with `PDF.js extraction failed:` or `pdf-parse fallback failed:`. That will show the remaining issue without you sharing the profile PDF publicly.
