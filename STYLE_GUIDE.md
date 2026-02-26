# 🎨 Style Guide — mahmoud_atef Portfolio
> **Project**: mahmoud_atef  
> **Framework**: [Jaspr](https://pub.dev/packages/jaspr) (Dart Web)  
> **Styling**: [jaspr_tailwind](https://pub.dev/packages/jaspr_tailwind) (Tailwind CSS)  
> **Design Source**: [Figma — Personal Portfolio Style Guide](https://www.figma.com/design/ad0reUbNbCnAcR4qiUu8iw/Personal-portfolio?node-id=2-23)

---

## 📐 Canvas & Layout

| Property | Value |
|---|---|
| Frame Width | `1600px` |
| Frame Height | `1682px` |
| Horizontal Padding | `160px` (left & right) |
| Max Content Width | `1280px` |

**Tailwind Usage:**
```dart
div(classes: 'max-w-[1280px] mx-auto px-[160px]', [...])
```

---

## 🎨 Color Palette

| Name | Hex | Tailwind Custom Name | Usage |
|---|---|---|---|
| **Primary** | `#5E3BEE` | `primary` | CTA buttons, accents, links |
| **White** | `#FFFFFF` | `white` | Background, button text |
| **Body / Dark** | `#232536` | `body` | Body text, main text |
| **Heading Color** | `#282938` | `heading` | Headings |
| **BG Shade** | `#F5FCFF` | `bg-shade` | Section backgrounds |
| **Background Soft** | `#EEF4FA` | `bg-soft` | Card/Download section background |
| **Dribble Pink** | `#E62872` | `dribble` | Dribble brand color |
| **Dark Scale 400** | `#111218` | `dark-400` | Deep dark text |
| **Divider** | `rgba(35, 37, 54, 0.12)` | — | Section dividers |
| **Primary Variant** | `#503AE7` | `primary-variant` | Button icon areas |

### tailwind.config.js / `styles.tw.css` Setup
```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

### `tailwind.config.js`
```js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['web/**', 'lib/**'],
  theme: {
    extend: {
      colors: {
        primary: '#5E3BEE',
        'primary-variant': '#503AE7',
        body: '#232536',
        heading: '#282938',
        'bg-shade': '#F5FCFF',
        'bg-soft': '#EEF4FA',
        dribble: '#E62872',
        'dark-400': '#111218',
      },
      fontFamily: {
        roboto: ['Roboto', 'sans-serif'],
      },
    },
  },
  plugins: [],
};
```

---

## 🔤 Typography

**Font Family:** `Roboto` (from Google Fonts)

Add to `web/index.html`:
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap" rel="stylesheet">
```

### Headings

| Style | Font | Weight | Size | Line Height | Color |
|---|---|---|---|---|---|
| **H1** | Roboto | 700 (Bold) | `56px` | `1.2` (67.2px) | `#282938` / black |
| **H2** | Roboto | 700 (Bold) | `48px` | `1.2` (57.6px) | `#282938` / black |
| **H3** | Roboto | 700 (Bold) | `24px` | `1.4` (33.6px) | `#282938` / black |

**Tailwind Classes:**

```dart
// H1
h1(classes: 'font-roboto font-bold text-[56px] leading-[1.2] text-heading', [...])

// H2
h2(classes: 'font-roboto font-bold text-[48px] leading-[1.2] text-heading', [...])

// H3
h3(classes: 'font-roboto font-bold text-[24px] leading-[1.4] text-heading', [...])
```

### Body Text

| Style | Font | Weight | Size | Line Height | Usage |
|---|---|---|---|---|---|
| **Body 01** | Roboto | 400 (Regular) | `18px` | `1.5` (27px) | Primary body paragraphs |
| **Body 02** | Roboto | 400 (Regular) | `16px` | `1.5` (24px) | Secondary text, navigation, buttons |
| **Body 03** | Roboto | 400 (Regular) | `14px` | `1.5` (21px) | Small labels, captions |

**Tailwind Classes:**

```dart
// Body 01
p(classes: 'font-roboto font-normal text-[18px] leading-[1.5] text-body', [...])

// Body 02
p(classes: 'font-roboto font-normal text-[16px] leading-[1.5] text-body', [...])

// Body 03
p(classes: 'font-roboto font-normal text-[14px] leading-[1.5] text-body', [...])
```

### Label / Section Heading Style

| Style | Font | Weight | Size | Line Height |
|---|---|---|---|---|
| Section Title (e.g. "Body 01") | Roboto | 700 (Bold) | `24px` | `1.5` |
| Section Header (e.g. "Style Guide section") | Roboto | 400 | `36px` | `1.22` |
| Sub-Section Header (e.g. "Color palette") | Roboto | 400 | `32px` | `1.2` |
| Download/CTA Text | Roboto | 500 (Medium) | `36px` | `1.22` |
| Font Name Label | Roboto | 600 (SemiBold) | `24px` | `1.5` |

---

## 🔘 Buttons

### Button — Outlined (Ghost) Style

Used for secondary actions like "Contact Me".

| Property | Value |
|---|---|
| Border | `1px solid #5E3BEE` |
| Border Radius | `4px` |
| Padding | `14px 32px` |
| Width | `128px` (fixed) |
| Text Style | Body 02 (16px, 400) |
| Text Color | `#5E3BEE` (Primary) |
| Background | Transparent |

```dart
button(
  classes: 'border border-primary rounded text-primary text-[16px] font-normal px-8 py-[14px] w-[128px] text-center',
  [...],
)
```

### Button — Filled (Primary) Style

Used for primary CTA like "Get In Touch".

| Property | Value |
|---|---|
| Background | `#5E3BEE` (Primary) |
| Border Radius | `4px` |
| Padding | `14px 32px` |
| Width | `128px` (fixed) |
| Text Style | Body 02 (16px, 400) |
| Text Color | `#FFFFFF` (White) |

```dart
button(
  classes: 'bg-primary rounded text-white text-[16px] font-normal px-8 py-[14px] w-[128px] text-center',
  [...],
)
```

### Button Hover States

Add transition utilities for smooth hover:

```dart
// Outlined hover → filled
button(
  classes: 'border border-primary rounded text-primary px-8 py-[14px] w-[128px] '
           'hover:bg-primary hover:text-white transition-colors duration-200',
  [...],
)

// Filled hover → darken
button(
  classes: 'bg-primary rounded text-white px-8 py-[14px] w-[128px] '
           'hover:bg-[#503AE7] transition-colors duration-200',
  [...],
)
```

---

## 📏 Spacing & Gap System

| Context | Value | Tailwind |
|---|---|---|
| Heading group internal gap | `24px` | `gap-6` |
| Body group internal gap | `12px` | `gap-3` |
| Between body groups | `32px` | `gap-8` |
| Between main sections | `96px` | `gap-24` |
| Button group gap | `38px` | `gap-[38px]` |
| Section to section vertical | `32px` | `mt-8` |

---

## 🪟 Divider

A thin horizontal rule separates sections:

| Property | Value |
|---|---|
| Color | `rgba(35, 37, 54, 0.12)` |
| Height | `1px` |
| Full width | `1600px` |

```dart
hr(classes: 'border-t border-[rgba(35,37,54,0.12)] w-full', [])
```

---

## 🗂️ File & Folder Conventions (Jaspr)

```
lib/
├── components/
│   ├── button.dart          # Reusable button component
│   ├── section_title.dart   # Section headings
│   └── divider.dart         # HR divider
├── sections/
│   ├── hero_section.dart
│   ├── services_section.dart
│   ├── portfolio_section.dart
│   └── contact_section.dart
├── styles/
│   └── colors.dart          # Color constants (mirrors Tailwind config)
└── app.dart
web/
├── styles.tw.css            # Tailwind source
├── styles.css               # Generated output (do not edit)
└── index.html
```

---

## 🧩 Jaspr Component Pattern

Follow this pattern for all reusable components:

```dart
import 'package:jaspr/jaspr.dart';

class AppButton extends StatelessComponent {
  final String label;
  final bool filled;
  final void Function()? onPressed;

  const AppButton({
    required this.label,
    this.filled = true,
    this.onPressed,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: filled
          ? 'bg-primary rounded text-white font-roboto text-[16px] leading-[1.5] '
            'px-8 py-[14px] w-[128px] text-center hover:bg-[#503AE7] transition-colors duration-200'
          : 'border border-primary rounded text-primary font-roboto text-[16px] leading-[1.5] '
            'px-8 py-[14px] w-[128px] text-center hover:bg-primary hover:text-white transition-colors duration-200',
      events: {
        if (onPressed != null) 'click': (e) => onPressed!(),
      },
      [text(label)],
    );
  }
}
```

---

## ✅ Rules Summary

1. **Always use `Roboto`** as the font family.
2. **Use only the defined color palette** — never introduce new colors without updating `tailwind.config.js`.
3. **Buttons have `border-radius: 4px`** (`rounded` in Tailwind). Never use `rounded-full` for main CTAs.
4. **Text opacity for labels** (e.g., "Body 01", "Body 02" category labels): `opacity-50`.
5. **Body text color** is `#232536` — use `text-body`.
6. **Heading text color** is `#282938` — use `text-heading`.
7. **Section background white** is `#FFFFFF`, soft background is `#F5FCFF`.
8. **All components** must be built as Jaspr `StatelessComponent` or `StatefulComponent`.
9. **No inline styles** — all styling must go through Tailwind CSS classes.
10. **Max content width** is `1280px`, centered with `mx-auto`.
