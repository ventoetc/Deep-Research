# Windows Setup Guide

## Quick Start (PowerShell)

1. **Open PowerShell** in this directory
2. **Run the setup script**:
   ```powershell
   .\setup-and-start.ps1
   ```

If you get an execution policy error, run this first:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

The script will:
- Check for Node.js and npm
- Install all dependencies
- Start the development server
- Open http://localhost:3000

## Manual Setup (Alternative)

If you prefer to run commands manually:

```powershell
# Install dependencies
npm install

# Start the dev server
npm run dev
```

## Using the App

1. Visit http://localhost:3000 in your browser
2. Enter your API keys in the dialog:
   - OpenAI API Key
   - FireCrawl API Key
3. Start researching!

## Requirements

- **Node.js** v14 or later - [Download](https://nodejs.org/)
- **API Keys**:
  - OpenAI: https://platform.openai.com/api-keys
  - FireCrawl: https://firecrawl.dev/

## Troubleshooting

**Script won't run?**
- Enable script execution: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

**Node.js not found?**
- Install from https://nodejs.org/
- Restart PowerShell after installation

**Port 3000 already in use?**
- The script will automatically try port 3001, 3002, etc.

## Next Steps

Once you've tested locally and want to deploy:
- See [QUICKSTART.md](QUICKSTART.md) for Vercel deployment (2 minutes)
- See [DEPLOYMENT.md](DEPLOYMENT.md) for other hosting options
