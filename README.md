# 🎬 Streaming Platform Database Management System

A web-based database management system for a video streaming platform (similar to Netflix/Hulu). This project provides a complete CRUD interface for managing users, content, subscriptions, and viewing analytics.

## 📋 Features

- **User Management**: Handle customer profiles, subscriptions, and demographics
- **Content Management**: Manage movies, TV series, episodes, and metadata
- **Subscription System**: Track different plan types and payment history
- **Analytics**: Monitor user watch history and preferences
- **Review System**: User ratings and comments for content
- **Web Interface**: User-friendly frontend for database operations

## 🏗️ Database Schema

### Core Tables:
- **USER**: Customer information and subscription details
- **CONTENT**: Base table for all media content
- **MOVIE**: Movie-specific details (inherits from CONTENT)
- **SERIES**: TV series with season information (inherits from CONTENT)
- **EPISODE**: Individual episode details for series
- **WATCHHISTORY**: User viewing records and duration
- **REVIEW**: User ratings and comments
- **SUBSCRIPTION**: Plan types and pricing information
- **PAYMENT**: Transaction and billing records
- **GENRE**: Content categorization
- **DIRECTOR**: Director information
- **ACTOR**: Cast information

## 🚀 Installation & Setup

### Prerequisites
- **XAMPP/WAMP/MAMP** (includes Apache, PHP 7.4+, MySQL 5.7+)
- Web browser (Chrome, Firefox, Safari, etc.)

### Step 1: Install XAMPP
1. Download XAMPP from [https://www.apachefriends.org/](https://www.apachefriends.org/)
2. Install and start Apache and MySQL services

### Step 2: Setup Database
1. Open phpMyAdmin (http://localhost/phpmyadmin)
2. Create a new database named `streaming_platform`
3. Import the SQL files in this order:
   ```sql
   -- First run: DML.sql (creates tables)
   -- Then run: DCL.sql (inserts sample data)
   ```

### Step 3: Configure Database Connection
1. Copy `connect.php` and update the database credentials:
   ```php
   $host = "localhost";
   $dbname = "streaming_platform";  // Your database name
   $username = "root";              // Your MySQL username
   $password = "";                  // Your MySQL password (usually empty for XAMPP)
   ```

### Step 4: Deploy Files
1. Copy all project files to `C:\xampp\htdocs\streaming-platform\` (Windows)
2. Or `/Applications/XAMPP/htdocs/streaming-platform/` (Mac)
3. Or `/opt/lampp/htdocs/streaming-platform/` (Linux)

### Step 5: Access Application
Open your browser and navigate to:
```
http://localhost/streaming-platform/
```

## 🖥️ Usage

### Main Interface
- **Table Selection**: Choose from dropdown to view different database tables
- **View Data**: Automatically loads and displays table contents
- **Add Entries**: Fill the form to insert new records
- **Remove Entries**: Enter ID to delete specific records

### Available Tables
- USER, SUBSCRIPTION, WATCHHISTORY, PAYMENT
- CONTENT, MOVIE, SERIES, EPISODE
- REVIEW, GENRE, DIRECTOR, ACTOR

## 📁 File Structure

```
streaming-platform/
├── index.php          # Main application interface
├── connect.php         # Database connection configuration
├── fetch_data.php      # Retrieves table data for display
├── add_remove.php      # Handles CRUD operations
├── get_columns.php     # Gets table column information
├── script.js          # Frontend JavaScript functionality
├── style.css          # Application styling
├── DML.sql            # Database schema (table creation)
├── DCL.sql            # Sample data insertion
└── README.md          # This documentation
```

## 🔧 Technical Details

### Backend
- **PHP 7.4+**: Server-side processing
- **MySQL**: Database management system
- **PDO**: Database abstraction layer for security

### Frontend
- **HTML5**: Structure and markup
- **CSS3**: Styling and layout
- **JavaScript (ES6)**: Dynamic functionality and AJAX calls

### Architecture
- **MVC Pattern**: Separation of concerns
- **AJAX**: Asynchronous data loading
- **RESTful**: Clean API endpoints for data operations

## 🔒 Security Notes

⚠️ **Important**: This is an educational project and contains several security vulnerabilities:

- SQL injection possibilities in some queries
- No input validation or sanitization
- Plain text password storage
- No authentication/authorization system
- No CSRF protection

**For production use**, implement:
- Prepared statements for all queries
- Input validation and sanitization
- Password hashing (bcrypt/Argon2)
- User authentication system
- HTTPS encryption
- Error handling and logging

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🐛 Known Issues

- [ ] SQL injection vulnerabilities need fixing
- [ ] Add input validation for all forms
- [ ] Implement proper error handling
- [ ] Add user authentication system
- [ ] Improve responsive design for mobile devices

## 🚀 Future Enhancements

- [ ] User authentication and authorization
- [ ] Advanced search and filtering
- [ ] Data visualization and analytics dashboard
- [ ] Export data to CSV/PDF
- [ ] Multi-language support
- [ ] REST API for mobile app integration

## 📞 Support

If you have any questions or run into issues, please open an issue on GitHub or contact the maintainer.

---

**Built with ❤️ for learning database management and web development**
