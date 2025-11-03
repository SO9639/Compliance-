# CRA Assessment Tool - Troubleshooting Guide

## Issues Reported
1. **No login prompt appearing**
2. **Unable to upload CSV files**
3. **Assessments not listing or showing**

## Root Cause Analysis

Based on the 404 error screenshot and the issues you described, the main problem is that the authentication system is working correctly, but there are **file access and browser caching issues** preventing the login screen from appearing properly.

## Solutions (Try in Order)

### Solution 1: Use the Simple Access Page (Recommended)
**Open this file in your browser:**
```
access.html
```

This page will:
- ✅ Automatically clear any old login data
- ✅ Provide clear instructions
- ✅ Give you demo account credentials
- ✅ Launch the main application properly

### Solution 2: Use the Diagnostic Page
**Open this file to test everything:**
```
diagnostic.html
```

This will:
- ✅ Test all components of the application
- ✅ Identify exactly what's wrong
- ✅ Apply a quick fix if needed

### Solution 3: Manual Browser Method
If the above don't work:

1. **Press F12** to open Developer Tools
2. **Go to Console tab**
3. **Type:** `localStorage.clear()`
4. **Press Enter**
5. **Reload the page** (F5)
6. **Open:** `index.html` in the browser

## Demo Login Accounts

Once you see the login screen, use any of these accounts:

| Role | Username | Password | Access Level |
|------|----------|----------|--------------|
| **Admin** | `admin` | `admin123` | Full system access |
| **Analyst** | `analyst` | `analyst123` | Analysis & reporting |
| **Auditor** | `auditor` | `auditor123` | Review capabilities |

## After Successful Login

Once logged in, you should see:
- ✅ **Framework Selection** - 19 compliance frameworks
- ✅ **Data Catalogue Upload** - CSV import functionality
- ✅ **Assessment Tools** - Complete assessment features
- ✅ **User-specific Data** - Your work saved to your account

## Common Issues & Fixes

### Issue: "Login popup not appearing"
**Cause:** Old authentication data stuck in browser
**Fix:** Clear localStorage using any of the methods above

### Issue: "CSV upload not working"  
**Cause:** Not logged in or JavaScript errors
**Fix:** Ensure you're logged in first, then try uploading

### Issue: "Assessments not showing"
**Cause:** Need to select a framework first
**Fix:** Choose a compliance framework from the dropdown

### Issue: "Page won't load (404 errors)"
**Cause:** File path issues or browser security
**Fix:** Use the `access.html` file instead of direct file access

## File Structure
```
enhanced_cra_tool/
├── index.html              # Main application (requires authentication)
├── access.html             # Simple access page (RECOMMENDED START HERE)
├── diagnostic.html         # Test and diagnostic tool
├── simple_access.html      # Alternative access page
├── reset_login.html        # Authentication reset page
└── [other supporting files]
```

## Step-by-Step Action Plan

1. **Open:** `access.html` in your browser
2. **Click:** "Clear All Data" button
3. **Click:** "Open CRA Assessment Tool" 
4. **You should see:** Login popup with three account options
5. **Login with:** Any demo account (admin/admin123 recommended)
6. **Now you should see:** Full application with framework selection

## If Still Having Issues

1. **Try a different browser** (Chrome, Firefox, Edge)
2. **Use incognito/private mode**
3. **Clear all browser data** (Ctrl+Shift+Delete)
4. **Disable browser extensions** temporarily

## Technical Details

- **Authentication:** localStorage-based (browser storage)
- **Data Isolation:** Each user has separate data storage
- **Framework:** Bootstrap 5 + Vanilla JavaScript
- **Browser Support:** Modern browsers with JavaScript enabled

## Support

If you continue having issues after trying all solutions:
1. Try the diagnostic page first
2. Check browser console for error messages
3. Try different browsers
4. Contact support with specific error messages

---

**Remember:** The application is fully functional - it's just a matter of accessing it properly with cleared authentication data.