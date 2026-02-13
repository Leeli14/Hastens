# Deployment Guide for E-Commerce Flutter App

This guide covers automated deployment using GitHub Actions to **GitHub Pages** or **Netlify**.

---

## Option 1: GitHub Pages (Recommended for simplicity)

### What it does:
- Automatically builds your Flutter web app whenever you push to `main` or `new-branch-gpt`
- Deploys to GitHub Pages (free, no external signup needed)
- Site will be available at: `https://YOUR_USERNAME.github.io/Hastens/`

### Setup steps:

1. **Enable GitHub Pages in your repository:**
   - Go to Settings → Pages
   - Source: Deploy from a branch
   - Branch: `gh-pages` (will be auto-created by the workflow)
   - Save

2. **Trigger the workflow:**
   - Push code to `main` branch:
     ```bash
     git checkout main
     git push origin main
     ```
   - Or manually trigger: Go to Actions → "Build & Deploy to GitHub Pages" → Run workflow

3. **Wait for build to complete:**
   - Check Actions tab for workflow status
   - Once complete, your app is live at `https://YOUR_USERNAME.github.io/Hastens/`

### Troubleshooting GitHub Pages:
- If pages don't load, ensure Settings → Pages shows `gh-pages` branch as source
- Clear browser cache if changes don't appear
- Check Actions tab for build errors (usually Flutter dependency or build issues)

---

## Option 2: Netlify (More features, easier preview)

### What it does:
- Builds and deploys to Netlify (faster CDN, automatic HTTPS)
- Preview deploys on every pull request
- Site will be available at: `https://YOUR_SITE_NAME.netlify.app/`

### Setup steps:

1. **Create a Netlify account:**
   - Go to https://netlify.com
   - Sign up (free tier available)

2. **Get Netlify secrets:**
   - Log in → User settings → Applications → Personal access tokens
   - Generate a new token, copy it
   - Also get your Site ID from Site settings → General → Site ID

3. **Add secrets to GitHub:**
   - Go to your repo: Settings → Secrets and variables → Actions
   - Click "New repository secret"
   - Add two secrets:
     - Name: `NETLIFY_AUTH_TOKEN`, Value: (paste your token)
     - Name: `NETLIFY_SITE_ID`, Value: (paste your site ID)

4. **Trigger the workflow:**
   - Push code to `main`:
     ```bash
     git checkout main
     git push origin main
     ```
   - Or manually trigger: GitHub Actions → "Build & Deploy to Netlify" → Run workflow

5. **Wait for deploy:**
   - Check Actions tab
   - Once done, visit your Netlify site URL

### Netlify advantages:
- Faster builds (cached dependencies)
- Automatic preview links for pull requests
- Better analytics and performance monitoring (even on free plan)

---

## Option 3: Firebase Hosting (if you still want to use it)

If Firebase is working for you now, here's the correct setup:

1. **Initialize Firebase Hosting:**
   ```bash
   cd e_commerce
   npm install -g firebase-tools
   firebase init hosting
   ```
   When prompted:
   - Choose your project
   - Public directory: `build/web`
   - Single-page app? **Yes**
   - Overwrite `index.html`? **No**

2. **Create `firebase.json` if missing:**
   ```json
   {
     "hosting": {
       "public": "build/web",
       "ignore": [
         "firebase.json",
         "**/.*",
         "**/node_modules/**"
       ],
       "rewrites": [
         {
           "source": "**",
           "destination": "/index.html"
         }
       ]
     }
   }
   ```

3. **Build & deploy:**
   ```bash
   cd e_commerce
   flutter build web --release
   firebase deploy --only hosting
   ```

---

## Choosing between GitHub Pages vs Netlify vs Firebase

| Feature | GitHub Pages | Netlify | Firebase |
|---------|--------------|---------|----------|
| **Cost** | Free | Free | Free (then pay) |
| **Setup complexity** | Simple | Medium | Medium |
| **Build speed** | ~3-5 min | ~1-2 min | ~3-5 min |
| **Preview on PR** | No | **Yes** | No |
| **Custom domain** | Yes | Yes | Yes |
| **Analytics** | No | Yes (free) | Yes (free) |
| **Best for** | Open source projects | Professional apps | Google ecosystem users |

---

## Testing locally before deployment

Build the web app locally and test it:

```bash
cd e_commerce
flutter build web --release
cd build/web
python3 -m http.server 8000
```

Then visit `http://localhost:8000` in your browser.

---

## Common issues & fixes

### **App shows blank page**
- Clear browser cache and hard reload (Ctrl+Shift+R)
- Check browser console (F12) for JavaScript errors
- Ensure `base href` is correct (GitHub Pages includes repo name)

### **404 on page refresh**
- This is normal for SPAs; the workflow already includes a rewrite rule

### **Images/assets not loading**
- Check paths in your Flutter code (are they package-relative or absolute?)
- Rebuild and redeploy

### **Flutter app freezes during build**
- GitHub Actions runner might be out of memory
- Try building locally first to ensure it works

---

## Next steps

1. Choose GitHub Pages or Netlify above
2. Follow setup steps for your choice
3. Push code to trigger the workflow
4. Check Actions tab to monitor build progress
5. Once deployed, share your live URL!

For help: check the Actions tab output or reply with error logs.
