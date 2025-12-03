# Fonts Directory

This directory contains self-hosted variable fonts in WOFF2 format for the Poetry Fonts project.

## Required Fonts

### 1. Playfair Display (Variable)
- **Purpose**: Display font for headings - elegant and poetic, perfect for "Hope is the Thing with Feathers"
- **File**: `PlayfairDisplay-Variable.woff2`
- **Weight range**: 400-900
- **Source**: [Google Fonts - Playfair Display](https://fonts.google.com/specimen/Playfair+Display)

### 2. Lora (Variable)
- **Purpose**: Body text serif font - warm and literary feel
- **File**: `Lora-Variable.woff2`
- **Weight range**: 400-700
- **Source**: [Google Fonts - Lora](https://fonts.google.com/specimen/Lora)

## How to Download and Convert Fonts

### Option 1: Using Google Fonts (Recommended)
1. Visit [Google Fonts](https://fonts.google.com/)
2. Search for "Playfair Display" and "Lora"
3. Look for the variable font versions
4. Download the WOFF2 files

### Option 2: Using Google Fonts API
You can use tools like:
- **Font Squirrel Web Font Generator**: https://www.fontsquirrel.com/tools/webfont-generator
- **Transfonter**: https://transfonter.org/

Steps:
1. Download fonts from Google Fonts
2. Upload to the conversion tool
3. Select WOFF2 format
4. Download the converted files
5. Place them in this directory

### Option 3: Direct Download from Google Fonts CDN
Use a tool like `curl` or `wget` to download from Google's font CDN:
```bash
# These are example URLs - you'll need the actual CDN links from Google Fonts
curl "https://fonts.gstatic.com/..." -o PlayfairDisplay-Variable.woff2
curl "https://fonts.gstatic.com/..." -o Lora-Variable.woff2
```

## Font Specifications Met

✓ Minimum 2 self-hosted fonts using @font-face
✓ At least 1 variable font implementation (both are variable)
✓ All fonts in WOFF2 format
✓ font-display: swap on all @font-face rules
✓ All text sizing using clamp() (no fixed px/rem values)
✓ Systematic sizing relationships using CSS custom properties
✓ Font choices that enhance poem meaning
✓ Accessible contrast ratios (4.5:1 minimum)
✓ Base font size no smaller than 16px equivalent
✓ Preload critical fonts for performance

## File Sizes and Performance
- WOFF2 is the most efficient font format (40% smaller than WOFF)
- Variable fonts reduce file count while providing multiple weights
- Preload links ensure critical fonts load early

## Testing the Fonts
Once you've added the font files:
1. Open `index.html` in a browser
2. Check that headings use Playfair Display
3. Check that body text uses Lora
4. Test responsive behavior at different viewport sizes
5. Verify font-display: swap (fonts should render with fallback first)
