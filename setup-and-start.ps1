#!/usr/bin/env pwsh
# Open Deep Research - Setup and Start Script
# Run this to install dependencies and start the development server

Write-Host "================================" -ForegroundColor Cyan
Write-Host "Open Deep Research - Setup" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Check if Node.js is installed
Write-Host "Checking for Node.js..." -ForegroundColor Yellow
try {
    $nodeVersion = node --version
    Write-Host "✓ Node.js found: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Node.js not found!" -ForegroundColor Red
    Write-Host "Please install Node.js from https://nodejs.org/" -ForegroundColor Red
    Write-Host "Press any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit 1
}

Write-Host ""

# Check if npm is installed
Write-Host "Checking for npm..." -ForegroundColor Yellow
try {
    $npmVersion = npm --version
    Write-Host "✓ npm found: $npmVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ npm not found!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "================================" -ForegroundColor Cyan
Write-Host "Installing Dependencies" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Install dependencies
Write-Host "Running npm install..." -ForegroundColor Yellow
npm install

if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "✗ Installation failed!" -ForegroundColor Red
    Write-Host "Press any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit 1
}

Write-Host ""
Write-Host "✓ Dependencies installed successfully!" -ForegroundColor Green
Write-Host ""

# Check if .env.local exists
if (-Not (Test-Path ".env.local")) {
    Write-Host "================================" -ForegroundColor Cyan
    Write-Host "Environment Configuration" -ForegroundColor Cyan
    Write-Host "================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "No .env.local file found. You have two options:" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "1. Use the web dialog (recommended for testing)" -ForegroundColor White
    Write-Host "   - Just start the app and enter your API keys in the browser" -ForegroundColor Gray
    Write-Host ""
    Write-Host "2. Create .env.local file (optional)" -ForegroundColor White
    Write-Host "   - Copy .env.example to .env.local" -ForegroundColor Gray
    Write-Host "   - Add your API keys to the file" -ForegroundColor Gray
    Write-Host ""
}

Write-Host "================================" -ForegroundColor Cyan
Write-Host "Starting Development Server" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "The app will open at: http://localhost:3000" -ForegroundColor Green
Write-Host ""
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""
Start-Sleep -Seconds 2

# Start the dev server
npm run dev
