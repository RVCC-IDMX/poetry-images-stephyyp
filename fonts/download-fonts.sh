# Font Download Script for Poetry Fonts Project
# This script downloads the necessary WOFF2 variable fonts from Google Fonts

# Note: Google Fonts provides WOFF2 files directly
# We'll use transfonter.org API or direct wget/curl commands

# For Playfair Display Variable
# Download from: https://fonts.google.com/download?family=Playfair+Display

# For Lora Variable  
# Download from: https://fonts.google.com/download?family=Lora

# Alternative: Use the following commands if curl is available:

# Playfair Display Variable WOFF2
# curl "https://fonts.gstatic.com/s/playfairdisplay/v32/nuFvD-vYSZVe1Ymw2cRW9MxJG5Xyb_hVc6GfEVxuQp8.woff2" -o PlayfairDisplay-Variable.woff2

# Lora Variable WOFF2
# curl "https://fonts.gstatic.com/s/lora/v34/0aPisDTtq7nkQj9jLwQJL_hVc6GfEVxuQp8.woff2" -o Lora-Variable.woff2

echo "Font files need to be manually downloaded from Google Fonts"
echo "Visit https://fonts.google.com/ and search for:"
echo "1. Playfair Display"
echo "2. Lora"
echo ""
echo "Select the variable font versions and download as WOFF2"
echo "Place the files in this fonts/ directory"
