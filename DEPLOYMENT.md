# Simplest Deployment Guide

## Option 1: Vercel (EASIEST - 2 minutes)

Vercel is made by the Next.js team and requires zero configuration:

1. **Push to GitHub** (if not already):
   ```bash
   git add .
   git commit -m "Prepare for deployment"
   git push
   ```

2. **Deploy to Vercel**:
   - Go to [vercel.com](https://vercel.com)
   - Sign in with GitHub
   - Click "Add New Project"
   - Import your GitHub repository
   - Add Environment Variables:
     - `OPENAI_API_KEY` = your OpenAI key
     - `FIRECRAWL_KEY` = your FireCrawl key
     - `NEXT_PUBLIC_ENABLE_API_KEYS` = false (or true if you want users to input keys)
   - Click "Deploy"

✅ Done! Your app will be live at `your-app.vercel.app` in ~2 minutes.

## Option 2: Netlify (Also Easy)

1. Go to [netlify.com](https://netlify.com)
2. "Add new site" → "Import an existing project"
3. Connect GitHub repository
4. Build settings (auto-detected):
   - Build command: `npm run build`
   - Publish directory: `.next`
5. Add environment variables (same as above)
6. Deploy

## Option 3: Railway (Simple with CLI)

```bash
# Install Railway CLI
npm i -g @railway/cli

# Login and deploy
railway login
railway init
railway up

# Add environment variables via dashboard
railway open
```

## Local Testing First

Before deploying, test locally:

```bash
npm install
npm run dev
```

Visit http://localhost:3000

## Environment Variables Needed

- `OPENAI_API_KEY` - Your OpenAI API key
- `FIRECRAWL_KEY` - Your FireCrawl API key
- `NEXT_PUBLIC_ENABLE_API_KEYS` - Set to `false` to use your keys directly

## Recommended: Vercel

For the absolute least amount of work, use Vercel. It's designed for Next.js and handles everything automatically.
