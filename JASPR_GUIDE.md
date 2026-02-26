# 🐶 Jaspr — دليل الاحتراف للمشروع mahmoud_atef
> **المصدر:** [https://docs.jaspr.site](https://docs.jaspr.site)  
> **الإصدار المستخدم:** Jaspr + jaspr_tailwind + jaspr_router  
> **هدف المستند:** فهم Jaspr بعمق وتطبيقه بشكل احترافي في مشروع البورتفوليو

---

## 🤔 ما هو Jaspr؟

Jaspr هو framework حديث لبناء مواقع ويب بـ **Dart** — مصمم ليبدو ويحس تماماً مثل Flutter، لكنه يخرج **HTML و CSS حقيقي** بدلاً من Canvas.

| Feature | Flutter Web | Jaspr |
|---|---|---|
| الإخراج | Canvas / PixelPainting | HTML + CSS حقيقي |
| SEO | ❌ ضعيف جداً | ✅ ممتاز |
| Server-Side Rendering | ❌ | ✅ |
| يشتغل على السيرفر | ❌ | ✅ |
| يستخدم HTML tags | ❌ | ✅ |
| مناسب للبورتفوليو | ⚠️ | ✅ مثالي |

**لماذا Jaspr للبورتفوليو؟**  
- SEO ممتاز (Google هتعدي على الصفحة بشكل صح)  
- تحميل سريع  
- HTML حقيقي = يتعامل معاه المتصفح بشكل طبيعي  

---

## 🧱 نظام الـ Components

### 1. `StatelessComponent` — الأكثر استخداماً

```dart
import 'package:jaspr/jaspr.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'bg-white py-24 px-[160px]',
      [
        h1(classes: 'font-roboto font-bold text-[56px] text-heading', [
          text('Hi, I\'m Mahmoud Atef'),
        ]),
        p(classes: 'font-roboto text-[18px] text-body mt-4', [
          text('Flutter & Dart Developer'),
        ]),
      ],
    );
  }
}
```

### 2. `StatefulComponent` — للعناصر التفاعلية

```dart
class NavBar extends StatefulComponent {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  bool _isMenuOpen = false;

  @override
  Component build(BuildContext context) {
    return nav(
      classes: 'fixed top-0 w-full bg-white shadow-md z-50',
      [
        button(
          classes: 'md:hidden',
          events: {
            'click': (e) => setState(() => _isMenuOpen = !_isMenuOpen),
          },
          [text('☰')],
        ),
        if (_isMenuOpen)
          div(classes: 'flex flex-col gap-4', [
            // menu items
          ]),
      ],
    );
  }
}
```

### 3. `InheritedComponent` — لمشاركة البيانات في الشجرة

مثل Provider في Flutter — يمرر البيانات لكل الـ children بدون props drilling.

```dart
class ThemeProvider extends InheritedComponent {
  const ThemeProvider({required super.child, super.key});

  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedComponentOfExactType<ThemeProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant ThemeProvider oldComponent) => false;
}
```

---

## 🖍️ كتابة HTML في Jaspr

### القاعدة الأساسية
```dart
// الصح ✅ — children آخر parameter
div(id: 'main', classes: 'container', [
  p([text('Hello World')]),
])

// مقبول لكن أقل وضوحاً
div([text('Hello')], id: 'main', classes: 'container')

// لا children — مرر list فاضية
div(classes: 'divider', [])

// img لا تأخذ children
img(src: '/assets/photo.jpg', alt: 'Mahmoud Atef')
```

### الـ Tags المهمة في البورتفوليو

```dart
// Navigation
nav(classes: '...', [...])
ul(classes: '...', [...])
li(classes: '...', [...])
a(href: '#about', classes: '...', [...])

// Layout
header(classes: '...', [...])
main(classes: '...', [...])
section(classes: '...', [...])
footer(classes: '...', [...])
div(classes: '...', [...])

// Text
h1(classes: '...', [text('...')])
h2(classes: '...', [text('...')])
h3(classes: '...', [text('...')])
p(classes: '...', [text('...')])
span(classes: '...', [text('...')])

// Media
img(src: '...', alt: '...', classes: '...')

// Interactive
button(classes: '...', events: {'click': (e) => ...}, [...])
```

---

## 🎨 الـ Styling — 3 طرق

### الطريقة 1: `classes` مع Tailwind ✅ (المستخدمة في مشروعنا)

```dart
div(classes: 'bg-primary text-white rounded px-8 py-4', [...])
```

### الطريقة 2: `@css` annotation (CSS-in-Dart)

للـ component نفسه — بس في server/static mode فقط:

```dart
class MyCard extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(classes: 'card', [...]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.card', [
      css('&').styles(
        padding: Padding.all(1.rem),
        borderRadius: BorderRadius.circular(8.px),
      ),
    ]),
  ];
}
```

### الطريقة 3: Inline Styles

```dart
div(styles: const Styles(backgroundColor: Colors.red), [])
// → <div style="background-color: red"></div>
```

> ⚡️ اعتمد على **`classes` مع Tailwind** — هي الطريقة الأنسب والأسرع في مشروعنا.

---

## 🎛️ Tailwind CSS مع Jaspr

### الإعداد (`pubspec.yaml`)

```yaml
dependencies:
  jaspr: ^0.x.x
  jaspr_router: ^0.x.x

dev_dependencies:
  jaspr_tailwind: ^0.x.x
  build_runner: ^2.x.x
```

### هيكل ملفات Tailwind

```
web/
├── styles.tw.css       # ملف المصدر — هنا بتكتب
└── styles.css          # ناتج generated — لا تعدله يدوياً
```

### `web/styles.tw.css`

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

### تشغيل Tailwind

```bash
# في terminal أول
dart run build_runner watch

# في terminal تاني
jaspr serve
```

> ⚠️ لازم الاتنين شغالين مع بعض أثناء التطوير.

---

## 🧭 الـ Routing

### للبورتفوليو — الاختيار الأمثل: **Single-Page (Client-Side)**

البورتفوليو هو تطبيق واحد الصفحة — مفيش حاجة لـ multi-page.

### الإعداد

```dart
// lib/app.dart
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'pages/home.dart';

@client
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(routes: [
      Route(path: '/', builder: (context, state) => const HomePage()),
    ]);
  }
}
```

### التنقل بين الـ sections

```dart
// استخدم Link بدلاً من <a> عشان router يتعامل معاه
import 'package:jaspr_router/jaspr_router.dart';

Link(to: '/#about', [text('About')])

// أو بـ JS event
a(href: '#about', classes: 'nav-link', [text('About')])
```

---

## 🗂️ الهيكل المثالي للمشروع

```
mahmoud_atef/
├── pubspec.yaml
├── tailwind.config.js
├── STYLE_GUIDE.md           # دليل الألوان والـ typography
├── JASPR_GUIDE.md           # هذا الملف
├── lib/
│   ├── main.dart            # نقطة الدخول
│   ├── app.dart             # الـ Root component + Router
│   ├── components/
│   │   ├── nav_bar.dart         # شريط التنقل
│   │   ├── app_button.dart      # الزرار (filled/outlined)
│   │   ├── section_title.dart   # عنوان كل section
│   │   ├── skill_card.dart      # بطاقة المهارة
│   │   └── project_card.dart    # بطاقة المشروع
│   ├── sections/
│   │   ├── hero_section.dart    # الصفحة الرئيسية
│   │   ├── about_section.dart   # عني
│   │   ├── skills_section.dart  # مهاراتي
│   │   ├── projects_section.dart # مشاريعي
│   │   ├── services_section.dart # خدماتي
│   │   └── contact_section.dart  # تواصل معي
│   └── pages/
│       └── home_page.dart       # تجميع كل الـ sections
└── web/
    ├── index.html
    ├── styles.tw.css        # Tailwind source
    └── styles.css           # Tailwind output (auto-generated)
```

---

## ⚡ الـ `@client` annotation

للعناصر التفاعلية (اللي فيها state أو events) لازم تعملها `@client`:

```dart
@client                         // ← مهم جداً للـ StatefulComponent
class ContactForm extends StatefulComponent {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}
```

> بدون `@client` الـ events مش هتشتغل!

---

## 📋 `lib/main.dart` — نقطة الدخول

```dart
import 'package:jaspr/server.dart';
import 'app.dart';

void main() {
  Jaspr.initializeApp();
  runApp(Document(
    title: 'Mahmoud Atef — Flutter & Dart Developer',
    head: [
      // Roboto Font
      link(
        rel: 'stylesheet',
        href: 'https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap',
      ),
      // Tailwind generated CSS  
      link(rel: 'stylesheet', href: '/styles.css'),
      // Favicon
      link(rel: 'icon', href: '/favicon.ico'),
      // Meta description للـ SEO
      meta(name: 'description', content: 'Mahmoud Atef — Flutter & Dart Developer Portfolio'),
    ],
    body: const App(),
  ));
}
```

---

## 📄 `web/index.html` — الهيكل الأساسي

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Jaspr هيحط الـ head هنا تلقائياً -->
</head>
<body>
  <!-- Jaspr هيحط الـ body هنا تلقائياً -->
</body>
</html>
```

---

## 🏃 تشغيل المشروع

```bash
# تثبيت الـ dependencies
dart pub get

# تشغيل في وضع التطوير
jaspr serve

# Build للـ production
jaspr build

# أو static build (لـ GitHub Pages)
jaspr build --mode static
```

---

## ✅ أهم القواعد الذهبية

| # | القاعدة |
|---|---|
| 1 | كل component = ملف dart منفصل |
| 2 | أي component فيه events أو state → `@client` annotation |
| 3 | لا inline styles — كل شيء عبر Tailwind classes |
| 4 | لا تعدل `styles.css` يدوياً — هي generated |
| 5 | دائماً مرر children كـ آخر parameter |
| 6 | استخدم `Link` من `jaspr_router` للتنقل بين الصفحات |
| 7 | لا تنسى `[]` للـ empty children |
| 8 | `@css` annotation → server/static mode فقط |
| 9 | `const` في الـ styles بيحسن الأداء |
| 10 | فعّل `build_runner watch` دايماً أثناء التطوير |

---

## 🔗 روابط مهمة

| Resource | Link |
|---|---|
| الـ Docs الرسمية | [docs.jaspr.site](https://docs.jaspr.site) |
| JasprPad (Playground) | [playground.jaspr.site](https://playground.jaspr.site) |
| jaspr_tailwind | [pub.dev/packages/jaspr_tailwind](https://pub.dev/packages/jaspr_tailwind) |
| jaspr_router | [pub.dev/packages/jaspr_router](https://pub.dev/packages/jaspr_router) |
| GitHub | [github.com/schultek/jaspr](https://github.com/schultek/jaspr) |
| Discord Community | [discord.gg/XGXrGEk4c6](https://discord.gg/XGXrGEk4c6) |
