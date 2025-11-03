# User Authentication & Data Storage Guide

## Demo Accounts Available:
- **Admin Account**: 
  - Username: `admin`
  - Password: `admin123`
  - Role: Administrator (full access)

- **Analyst Account**: 
  - Username: `analyst`
  - Password: `analyst123`
  - Role: Data Analyst

- **Auditor Account**: 
  - Username: `auditor`
  - Password: `auditor123`
  - Role: Compliance Auditor

## How User-Specific Data Works:

### 1. Login Process
- Each user gets their own private workspace
- Data is automatically saved to your specific account
- Progress is preserved across sessions

### 2. Data Storage Examples:
- **Admin user assessments**: `user_admin_assessment_GDPR`
- **Analyst user assessments**: `user_analyst_assessment_GDPR`
- **Auditor user assessments**: `user_auditor_assessment_GDPR`

### 3. What Gets Saved Per User:
- ✅ Assessment responses and answers
- ✅ Evidence files uploaded
- ✅ Progress completion status
- ✅ Framework-specific data
- ✅ Timestamps and completion percentages

### 4. Multi-User Benefits:
- **No data mixing**: Each user sees only their work
- **Privacy**: Other users cannot access your assessments
- **Progress tracking**: Personal dashboard with your statistics
- **Secure isolation**: Complete separation between user data

### 5. Data Persistence:
- Data saves automatically as you work
- Survives browser restarts and page refreshes
- Persists until manually cleared or browser storage is full

## Current Implementation Status:
✅ User authentication system: **WORKING**
✅ Data isolation per user: **WORKING**  
✅ Progress saving: **WORKING**
✅ Automatic loading: **WORKING**
✅ Dashboard statistics: **WORKING**

## Troubleshooting:
If you're not seeing your saved work:
1. Ensure you're logged in with the same account
2. Check browser localStorage for your user data
3. Clear browser cache if needed and login again
4. Use the demo accounts to test the system