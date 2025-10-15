# Copilot Collaboration

- Copilot suggested npm scripts and project structure.
- Copilot helped plan CSS layout and semantic HTML for the poem.


# Spec 1 
1. Correct Semantic HTML Usage
Move the <header> tag inside the <body> tag. The <header> tag should not be a sibling of <head>.
Use <section> instead of <article> if the content is not standalone or meant to be distributed independently.
Add a <meta name="viewport"> tag for responsive design.
2. Proper Nesting of Tags
Ensure all tags are properly nested. For example, the <header> tag should be inside <body>.
Close the <html> tag after the <body> content.
3. Accessibility Improvements
Ensure the headings follow a proper hierarchy. For example, <h1> should be followed by <h2>, and so on.
Add lang="en" to the <html> tag for screen readers.
Add aria-label or alt attributes where necessary for better screen reader support.
Use <address> for the footer content if it contains author information.



# Spec 2
1. Font Choices
Use a combination of serif and sans-serif fonts for better readability and contrast. For example:
Use Georgia for headings to maintain a classic look.
Use a sans-serif font like Arial or Roboto for body text for better readability on screens.
Add a fallback font stack for better cross-browser compatibility.
2. Color Palette
Use a more cohesive color palette with better contrast:
Background: A softer, neutral tone like #f9f9f9 or #f5f5dc (light beige).
Text: Use #222 (dark gray) for better readability.
Accent color: Use a complementary color for headings or links, such as #6b4f4f (muted red) or #4a90e2 (soft blue).
3. Layout Improvements
Use CSS Grid or Flexbox for better responsiveness and alignment.
Add spacing between sections and ensure consistent padding/margin.
Center the content vertically and horizontally for smaller screens.
