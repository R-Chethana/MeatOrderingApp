# Fresh Meat Shop - Deployment Guide

## 🚀 Deployment Options

### Option 1: Deploy to Vercel (Recommended - Free & Easy)

1. **Install Vercel CLI**

   ```bash
   npm install -g vercel
   ```

2. **Login to Vercel**

   ```bash
   vercel login
   ```

3. **Deploy Backend First**

   ```bash
   cd backend
   vercel
   ```

   - Follow prompts and note your backend URL

4. **Update Frontend Environment**
   - Update `frontend/.env.production` with your backend URL:

   ```
   NEXT_PUBLIC_API_URL=https://your-backend-url.vercel.app
   ```

5. **Deploy Frontend**

   ```bash
   cd frontend
   vercel
   ```

6. **Get QR Code**
   - Visit: https://www.qr-code-generator.com/
   - Enter your frontend URL
   - Download and print QR code

---

### Option 2: Deploy to Your Own Server

1. **Build the Applications**

   ```bash
   # Backend
   cd backend
   npm run build  # If you add build script

   # Frontend
   cd frontend
   npm run build
   ```

2. **Run on Server**

   ```bash
   # Backend (use PM2 for production)
   npm install -g pm2
   cd backend
   pm2 start npm --name "meat-backend" -- start

   # Frontend
   cd frontend
   pm2 start npm --name "meat-frontend" -- start
   ```

3. **Configure Domain & SSL**
   - Point your domain to server IP
   - Set up Nginx as reverse proxy
   - Install SSL certificate (Let's Encrypt)

---

### Option 3: Deploy to Netlify (Frontend Only)

1. **Build Frontend**

   ```bash
   cd frontend
   npm run build
   ```

2. **Install Netlify CLI**

   ```bash
   npm install -g netlify-cli
   netlify login
   ```

3. **Deploy**
   ```bash
   netlify deploy --prod
   ```

---

## 📱 Make it a Progressive Web App (PWA)

The app includes PWA support for:

- ✅ Install on phone home screen
- ✅ Offline support
- ✅ Fast loading
- ✅ Native app-like experience

---

## 🔗 Share with Customers

After deployment:

1. Get your production URL (e.g., `https://your-app.vercel.app`)
2. Generate QR code at: https://www.qr-code-generator.com/
3. Print QR code and display at your shop
4. Customers scan → Instant access to order meat!

---

## 🔄 Update Daily Prices

Access admin panel at:
`https://your-app-url.com/admin/login`

Update prices once, all variants calculate automatically!

---

## ⚙️ Environment Variables

**Backend (.env)**:

```
MONGODB_URI=your_mongodb_connection_string
JWT_SECRET=your_secret_key
PORT=5000
```

**Frontend (.env.production)**:

```
NEXT_PUBLIC_API_URL=https://your-backend-url.com
```
