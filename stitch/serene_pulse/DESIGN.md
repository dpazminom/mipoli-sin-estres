---
name: Serene Pulse
colors:
  surface: '#fbf8ff'
  surface-dim: '#d9d9e5'
  surface-bright: '#fbf8ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f2ff'
  surface-container: '#ededf9'
  surface-container-high: '#e8e7f3'
  surface-container-highest: '#e2e1ee'
  on-surface: '#191b24'
  on-surface-variant: '#434655'
  inverse-surface: '#2e3039'
  inverse-on-surface: '#f0effc'
  outline: '#747687'
  outline-variant: '#c4c5d8'
  surface-tint: '#1c4ee3'
  primary: '#003fd0'
  on-primary: '#ffffff'
  primary-container: '#2d5aee'
  on-primary-container: '#e6e8ff'
  inverse-primary: '#b8c4ff'
  secondary: '#006a63'
  on-secondary: '#ffffff'
  secondary-container: '#79f7ea'
  on-secondary-container: '#007169'
  tertiary: '#485066'
  on-tertiary: '#ffffff'
  tertiary-container: '#60687f'
  on-tertiary-container: '#e3e8ff'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dde1ff'
  primary-fixed-dim: '#b8c4ff'
  on-primary-fixed: '#001453'
  on-primary-fixed-variant: '#0037b9'
  secondary-fixed: '#79f7ea'
  secondary-fixed-dim: '#5adace'
  on-secondary-fixed: '#00201d'
  on-secondary-fixed-variant: '#00504a'
  tertiary-fixed: '#dae2fd'
  tertiary-fixed-dim: '#bec6e0'
  on-tertiary-fixed: '#131b2e'
  on-tertiary-fixed-variant: '#3f465c'
  background: '#fbf8ff'
  on-background: '#191b24'
  surface-variant: '#e2e1ee'
  seafoam-light: '#E6FFFA'
  lavender-haze: '#EBEBFF'
  stress-alert: '#FF6B6B'
  soft-navy: '#1E293B'
typography:
  display-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 48px
    fontWeight: '800'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 32px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-lg-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 28px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-sm:
    fontFamily: Hanken Grotesk
    fontSize: 12px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.05em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 8px
  container-max: 1200px
  gutter: 24px
  margin-mobile: 16px
  stack-sm: 12px
  stack-md: 24px
  stack-lg: 48px
---

## Brand & Style

The design system is built for a youthful audience (18-20 years), blending the professional credibility of health institutions with the vibrant, approachable aesthetic of Gen Z digital spaces. The personality is **empathetic, fresh, and restorative**. 

The visual style is a hybrid of **Modern Minimalism** and **Glassmorphism**. It utilizes clean, expansive whitespace to reduce cognitive load—essential for a platform addressing stress—paired with soft, translucent layers that suggest depth and lightness. The atmosphere is energized by 3D character assets that provide a relatable, human element to the academic guidance.

## Colors

The palette is rooted in therapeutic color theory. **Primary Blue** (#2D5AEE) provides a sense of stable authority, while the **Teal/Seafoam Secondary** (#4FD1C5) evokes healing and tranquility. 

- **Primary & Secondary:** Used for active states, CTA buttons, and key progress indicators.
- **Surface Tints:** `seafoam-light` and `lavender-haze` are used as subtle background washes for different content modules to help categorize information visually without heavy borders.
- **High-Contrast Accents:** Use `stress-alert` sparingly for high-priority health warnings or critical "take action" moments.
- **Neutrals:** Backgrounds should remain primarily off-white to maintain a "clean" and airy feel, using `soft-navy` for primary text to ensure high legibility without the harshness of pure black.

## Typography

While the brand requests the spirit of Aeonik, this system utilizes **Plus Jakarta Sans** for its exceptional readability and modern, friendly geometric curves which mirror the youthful energy of the target demographic.

- **Headlines:** Use tight letter-spacing on larger sizes to create a "compact" and confident look.
- **Body Text:** Generous line-height (1.6) is mandatory to prevent text-heavy academic sections from feeling overwhelming.
- **Labels:** **Hanken Grotesk** is used for functional UI labels, navigation items, and tags to provide a clean, technical contrast to the warmer body copy.

## Layout & Spacing

The layout follows a **Fluid Grid** model with high margins to create "breathing room." 

- **Desktop:** A 12-column grid with 24px gutters. Content should be centered within a 1200px container to prevent excessive eye-travel.
- **Mobile:** A 4-column grid with 16px side margins. 
- **Rhythm:** Vertical spacing should be generous. Use `stack-lg` between major sections (e.g., between "Symptoms" and "Solutions") to clearly demarcate the transition of thought. 
- **Safe Areas:** Interactive elements must maintain a minimum 48px touch target height for mobile accessibility.

## Elevation & Depth

This design system eschews traditional heavy shadows in favor of **Tonal Layering** and **Glassmorphism**.

- **Surface Depth:** Use a very soft, ambient shadow (0px 4px 20px, 5% opacity of `soft-navy`) only for primary floating cards.
- **Glassmorphism:** Navigation bars and modal overlays use a backdrop blur (12px to 20px) with a semi-transparent white fill (opacity 70-80%). This maintains context of the page underneath while focusing the user's attention.
- **Stroke-based definition:** Use 1px borders with 10% opacity of the primary color instead of shadows to define card boundaries. This keeps the UI looking sharp and modern.

## Shapes

The shape language is deliberately **Rounded** to appear non-threatening and friendly.

- **Cards & Containers:** Use a 24px corner radius (`rounded-xl`) to create a soft, "contained" feeling for information blocks.
- **Buttons:** Use fully pill-shaped corners for primary actions to distinguish them from content containers.
- **Form Inputs:** Use a 12px radius to balance the soft aesthetic with the functional precision required for data entry.

## Components

- **Buttons:** Primary buttons feature a subtle gradient from `primary_color` to a slightly lighter tint. They should have a "lift" hover effect (translateY -2px) rather than a color change.
- **Glass Cards:** Used for secondary information like "Quick Tips." These feature a 1px white inner border to simulate the edge of a glass pane.
- **3D Character Placement:** Characters should "break the container"—partially overlapping card borders or background elements—to create a sense of dynamic movement and life.
- **Interactive Lists:** Instead of standard bullet points, use soft-colored chips or checkmark icons in `secondary_color_hex` to make lists feel less like a textbook and more like an app.
- **Input Fields:** Use a subtle background fill (5% opacity of primary) that clears to white on focus, with a 2px primary border glow.
- **Status Chips:** Use high-contrast color pairings (e.g., dark navy text on seafoam background) for tags like "New", "Recommended", or "Urgent".