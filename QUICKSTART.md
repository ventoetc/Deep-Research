# Quick Start - Deploy in 2 Minutes

## Fastest Way: Deploy to Vercel Now

1. **Add your API keys to `.env.local`**:
   ```bash
   # Edit .env.local and replace with your keys:
   OPENAI_API_KEY=sk-...your-actual-key...
   FIRECRAWL_KEY=fc-...your-actual-key...
   ```

2. **Push to GitHub**:
   ```bash
   git push
   ```

3. **Deploy on Vercel**:
   - Visit [vercel.com/new](https://vercel.com/new)
   - Sign in with GitHub
   - Import this repository
   - Add the same environment variables from `.env.local`
   - Click Deploy
   - ✅ Live in ~90 seconds!

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
