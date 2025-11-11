# Repository corrections and analysis

**Student:** Stephanie Perdomo (@stephyyp)
**Poem:** "Hope is the Thing with Feathers" by Emily Dickinson
**Date corrected:** November 10, 2025

---

## What was wrong and why

Your repository had three critical issues that prevented it from meeting assignment requirements:

### Issue 1: Missing `<body>` tag (CRITICAL)

**What was wrong:**
Your HTML file was missing the opening `<body>` tag. While browsers are forgiving and will often render content anyway, this violates HTML5 standards and will cause W3C validation errors.

**Why this matters:**
- W3C validation requires proper document structure
- The assignment requires 0 validation errors
- Missing structural tags can cause unexpected rendering in some browsers

**What was fixed:**
Added proper `<body>` tag wrapping all content from `<header>` through `<footer>`.

### Issue 2: CSS opacity bug - images invisible (CRITICAL)

**What was wrong:**
Your CSS file had this code:

```css
article img {
  opacity: 0; /* Images start invisible */
  transition: opacity 1.5s ease-in-out;
}

body.loaded article img {
  opacity: 1; /* Images become visible when body has "loaded" class */
}
```

This code expects JavaScript to add a "loaded" class to the body element when the page finishes loading:

```javascript
// This JavaScript was MISSING from your project
window.addEventListener('load', function() {
  document.body.classList.add('loaded');
});
```

**Why images were invisible:**
- Images started at `opacity: 0` (completely transparent)
- CSS waited for the `body.loaded` class to make them visible
- Without JavaScript, the "loaded" class was **never added**
- Images stayed at `opacity: 0` forever = invisible

This is why your images displayed fine in VS Code Live Preview (which might add the class) but were invisible when deployed to Netlify.

**The lesson:**
If your CSS expects a class that JavaScript should add, you **MUST** include the JavaScript file, or don't use that CSS feature. For this assignment, JavaScript is not required, so the fade-in effect was removed entirely.

**What was fixed:**
- Commented out `opacity: 0` and the transition line
- Commented out the entire `body.loaded article img` rule
- Images now display normally without any opacity tricks

### Issue 3: No Cloudinary or srcset implementation (CRITICAL)

**What was wrong:**
Your images were using local file paths:

```html
<img src="images/feather.jpg" alt="feather">
<img src="images/bird.jpg" alt="bird">
```

The assignment **requires**:
- Images hosted on Cloudinary CDN
- Responsive images using `srcset` attribute
- Automatic format optimization (`f_auto`)
- Automatic quality optimization (`q_auto`)
- Descriptive alt text (not just "feather" or "bird")

**What was fixed:**
Replaced local images with Cloudinary URLs including:

```html
<img
  src="https://res.cloudinary.com/cynthia-teeters/image/upload/f_auto,q_auto,w_600/v1762790991/steph/feather.jpg"
  srcset="
    ...w_400/...feather.jpg 400w,
    ...w_600/...feather.jpg 600w,
    ...w_900/...feather.jpg 900w"
  sizes="(max-width: 600px) 100vw, 50vw"
  alt="A delicate white feather symbolizing hope that perches in the soul"
  loading="lazy">
```

**What these attributes do:**
- `f_auto` - Cloudinary automatically serves WebP format for modern browsers (faster loading)
- `q_auto` - Cloudinary automatically optimizes image quality (smaller file size, same visual quality)
- `srcset` - Provides multiple image sizes so browsers can download the best size for the screen
- `sizes` - Tells the browser how wide the image will be displayed
- `loading="lazy"` - Images below the fold don't load until user scrolls (faster page load)

### Issue 4: Missing viewport meta tag

**What was wrong:**
Your HTML `<head>` was missing the viewport meta tag.

**Why this matters:**
Without this tag, mobile browsers will display your page at desktop width and zoom out, making everything tiny and hard to read.

**What was fixed:**
Added to the `<head>` section:

```html
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
```

This tells mobile browsers to display your page at the actual screen width.

### Issue 5: Missing Cloudinary preconnect

**What was added:**
Added a performance optimization in the `<head>`:

```html
<link rel="preconnect" href="https://res.cloudinary.com" />
```

This tells the browser to establish a connection to Cloudinary early, so images load faster.

---

## What still works (your original design preserved)

Your original design was maintained:
- ✅ Your grid layout in CSS (2 columns on desktop)
- ✅ Your color scheme (light yellow background, dark gray text, red accent)
- ✅ Your typography choices (Georgia serif font)
- ✅ Your semantic HTML structure (header, main, article, footer)
- ✅ Your poem formatting with `<p>` and `<br>` tags
- ✅ Your responsive breakpoint at 600px

Only the **critical bugs** were fixed - your creative choices and design remain intact.

---

## What you need to do now

### 1. Test your site locally

Open `index.html` in your browser (or use VS Code Live Server) and verify:
- Images are visible ✓
- Images are clear and properly sized ✓
- Page looks good on mobile (use browser DevTools) ✓

### 2. Run W3C validation

Go to [validator.w3.org](https://validator.w3.org) and validate your HTML:
- **Goal:** 0 errors (warnings are okay)
- Take a screenshot showing 0 errors
- Save as `docs/evidence/w3c-validation.png`

### 3. Deploy to Netlify

Push your corrected code to GitHub and deploy:

```bash
git add .
git commit -m "Fix critical bugs: add body tag, fix opacity bug, implement Cloudinary with srcset"
git push
```

Then deploy to Netlify and verify images display correctly on the live site.

Take a screenshot of your live Netlify site and save as `docs/evidence/netlify-live.png`.

### 4. Format your code with Prettier

```bash
npm install
npm run format
```

This will clean up your code formatting to match professional standards.

---

## Key takeaways

### About the opacity bug

This is a common mistake when copying code from tutorials or using AI tools:

- **Always test your code** in the same environment where it will be deployed
- **If CSS expects a class**, make sure JavaScript adds that class
- **Don't use features you don't understand** - fade-in effects require JavaScript
- **Test on the actual deployment** (Netlify), not just locally

### About Cloudinary and srcset

Modern web development uses:
- **CDNs** (Content Delivery Networks) like Cloudinary for fast image delivery
- **Responsive images** (`srcset`) so mobile users don't download huge desktop images
- **Automatic optimization** (`f_auto`, `q_auto`) for best performance

This is standard practice in professional web development.

### About HTML validation

Professional websites:
- Validate with 0 errors
- Use proper semantic structure
- Include all required meta tags
- Work on all devices

The W3C validator is your friend - use it before every deployment.

---

## Summary of changes

| Issue | Original | Fixed |
|-------|----------|-------|
| **Missing body tag** | No `<body>` tag | Added proper `<body>` wrapper |
| **Invisible images** | `opacity: 0` waiting for JS | Removed opacity bug, images visible |
| **Local images** | `images/feather.jpg` | Cloudinary with `f_auto,q_auto` |
| **No srcset** | Single image source | 3 breakpoints: 400w, 600w, 900w |
| **Generic alt text** | "feather", "bird" | Descriptive, contextual alt text |
| **No viewport** | Missing | Added viewport meta tag |
| **No optimization** | No preconnect | Added Cloudinary preconnect |

---

## Resources to learn more

- **Responsive images:** [MDN Guide to Responsive Images](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images)
- **Cloudinary docs:** [Image Transformations](https://cloudinary.com/documentation/image_transformations)
- **CSS transitions:** [MDN CSS Transitions](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Transitions/Using_CSS_transitions)
- **W3C validation:** [validator.w3.org](https://validator.w3.org)

---

## Questions to think about

1. Why do you think the opacity bug only appeared on Netlify and not in your local testing?
2. What would you need to add to make the fade-in effect work properly?
3. How does `srcset` help users on mobile devices with slower connections?
4. What other Cloudinary transformations might be useful for web images?

---

**Your repository is now ready to meet all assignment requirements.** Complete the evidence screenshots, deploy to Netlify, and verify everything works!
