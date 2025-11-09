# 🚀 Quick Setup Guide

Follow these steps to get your Streaming Platform Database Management System running:

## Step 1: Install XAMPP
1. Download XAMPP from https://www.apachefriends.org/
2. Install and start **Apache** and **MySQL** services from XAMPP Control Panel

## Step 2: Setup Database
1. Open your browser and go to http://localhost/phpmyadmin
2. Click "New" to create a database
3. Name it `streaming_platform`
4. Click "Create"
5. Select your new database
6. Go to "Import" tab
7. Import files in this order:
   - First: `database_setup.sql` (creates tables)
   - Then: `DCL.sql` (adds sample data)

## Step 3: Configure Database Connection
1. Copy `connect.example.php` to `connect.php`
2. Open `connect.php` and update:
   ```php
   $dbname = "streaming_platform";  // Database name you created
   $username = "root";              // Usually 'root' for XAMPP
   $password = "";                  // Usually empty for XAMPP
   ```

## Step 4: Deploy Project
1. Copy the entire project folder to:
   - **Windows**: `C:\xampp\htdocs\streaming-platform\`
   - **Mac**: `/Applications/XAMPP/htdocs/streaming-platform/`
   - **Linux**: `/opt/lampp/htdocs/streaming-platform/`

## Step 5: Run Application
1. Open browser
2. Go to: http://localhost/streaming-platform/
3. You should see the Database Management interface!

## 🎯 Testing
- Select different tables from dropdown
- View the sample data
- Try adding new entries
- Test removing entries by ID

## 🆘 Troubleshooting
- **Connection failed**: Check if MySQL is running in XAMPP
- **Database not found**: Make sure you created the database and imported SQL files
- **Permission denied**: Check file permissions in htdocs folder
- **Page not loading**: Verify Apache is running and files are in correct directory

---
**Need help?** Check the main README.md for detailed documentation!