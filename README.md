# 🍖 Fresh Meat Shop - Complete Setup Guide

## 📋 Quick Start (Local Development)

### Windows Users - Easy Setup:

1. **Run the setup script**

   ```cmd
   cd frontend
   setup-and-run.bat
   ```

2. **Start backend in another terminal**

   ```cmd
   cd backend
   npm install
   npm run dev
   ```

3. **Access the app**
   - Customer Store: http://localhost:3000
   - Admin Panel: http://localhost:3000/admin/login

---

## 🚀 Deploy for Production (QR Code Access)

### ⚡ Quick Deploy with Vercel (5 minutes)

1. **Install Vercel CLI**

   ```bash
   npm install -g vercel
   ```

2. **Deploy Backend**

   ```bash
   cd backend
   vercel
   ```

   - Copy your backend URL (e.g., `https://meat-backend.vercel.app`)

3. **Update Frontend Config**
   - Edit `frontend/.env.production`:

   ```
   NEXT_PUBLIC_API_URL=https://your-backend-url.vercel.app
   ```

4. **Deploy Frontend**

   ```bash
   cd frontend
   vercel
   ```

   - Copy your frontend URL (e.g., `https://meat-shop.vercel.app`)

5. **Generate QR Code**
   - Visit: https://www.qr-code-generator.com/
   - Enter your frontend URL
   - Download and print

6. **Done!** 🎉
   - Customers scan QR → Order meat online
   - Update prices daily via admin panel

---

## 📱 Features

### For Customers:

- ✅ Browse meat items with images
- ✅ Select weight/quantity variants
- ✅ Add to cart with quantity controls
- ✅ View cart with total price
- ✅ Mobile-friendly design
- ✅ Works offline (PWA)
- ✅ Install as app on phone

### For Admin:

- ✅ Update price per kg/piece
- ✅ All variants auto-calculate
- ✅ Toggle stock availability
- ✅ See calculated prices before saving
- ✅ Secure login

---

## 🛠️ Tech Stack

- **Frontend**: Next.js 16, React 19, Tailwind CSS, TypeScript
- **Backend**: Node.js, Express, MongoDB, JWT Auth
- **Deployment**: Vercel (or any Node.js host)

---

## 📖 Detailed Documentation

See [DEPLOYMENT.md](./DEPLOYMENT.md) for:

- Multiple deployment options
- Custom server setup
- Environment configuration
- Troubleshooting

---

## 🔐 Admin Credentials

Create admin user in MongoDB or via backend route.

Default login page: `/admin/login`

---

## 📞 Support

For issues or questions, check:

1. DEPLOYMENT.md
2. Frontend console for errors
3. Backend logs

---

## 🎯 Daily Workflow

1. **Morning**: Login to admin panel
2. **Update**: Change per-kg prices
3. **Save**: All variant prices auto-calculate
4. **Customers**: Scan QR code → See updated prices
5. **Done!**
