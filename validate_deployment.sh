#!/bin/bash

echo "🚀 CRA Assessment Tool - Netlify Deployment Package Validator"
echo "=============================================================="

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the netlify_deployment folder."
    exit 1
fi

echo "✅ Checking deployment files..."

# Check required files
files=("index.html" "data.js" "README.md" "_redirects" "netlify.toml")
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file - Found"
    else
        echo "❌ $file - Missing"
        exit 1
    fi
done

echo ""
echo "📊 File Statistics:"
echo "==================="

# Show file sizes
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        size=$(du -h "$file" | cut -f1)
        echo "📄 $file: $size"
    fi
done

echo ""
echo "🔍 Validating data.js content..."

# Check if data.js has the required content
if grep -q "window.assessmentData" data.js; then
    echo "✅ Assessment data found"
else
    echo "❌ Assessment data missing"
    exit 1
fi

if grep -q "AI_GRC" data.js; then
    echo "✅ AI GRC framework included"
else
    echo "❌ AI GRC framework missing"
    exit 1
fi

# Count frameworks in data.js
framework_count=$(grep -o '"code":' data.js | wc -l)
echo "📊 Found $framework_count frameworks in data"

echo ""
echo "🌐 Deployment Instructions:"
echo "=========================="
echo "1. Upload all files to Netlify:"
echo "   - Drag & drop: https://app.netlify.com/drop"
echo "   - Or use Netlify CLI: netlify deploy --prod --dir ."
echo ""
echo "2. Your site will include:"
echo "   - 19 compliance frameworks"
echo "   - 562+ assessment items"
echo "   - 9 NEW AI frameworks & legislation"
echo "   - Evidence upload for each question"
echo "   - Start new assessment option"
echo "   - Modern responsive interface"
echo "   - Progress tracking & results export"
echo ""
echo "✅ All files validated successfully!"
echo "🚀 Ready for Netlify deployment!"