# Quick Start - Deploy in 2 Minutes

## Fastest Way: Deploy to Vercel Now

**No file editing needed!** The app has a built-in API key dialog.

1. **Deploy on Vercel**:
   - Visit [vercel.com/new](https://vercel.com/new)
   - Sign in with GitHub
   - Import this repository
   - Click Deploy (no environment variables needed!)
   - ✅ Live in ~90 seconds!

2. **Use it**:
   - Visit your deployed site
   - Enter your OpenAI and FireCrawl API keys in the dialog
   - Start researching!

## Alternative: Pre-configure API Keys (Optional)

If you want to disable the API key dialog and use server-side keys:

1. Add environment variables in Vercel:
   - `OPENAI_API_KEY=sk-...`
   - `FIRECRAWL_KEY=fc-...`
   - `NEXT_PUBLIC_ENABLE_API_KEYS=false`

2. Redeploy

## Or Test Locally First

```bash
npm install
npm run dev
# Visit http://localhost:3000
```

## What You Get

A web UI for AI-powered deep research that:
- Uses OpenAI for intelligent research
- Uses FireCrawl for web scraping
- Generates detailed markdown reports
- Shows real-time research progress

## Need More Details?

See [DEPLOYMENT.md](DEPLOYMENT.md) for other hosting options (Netlify, Railway, etc.)
