import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/nav_bar.dart';
import '../sections/hero_section.dart';
import '../sections/skills_section.dart';
import '../sections/about_section.dart';
import '../sections/blog_section.dart';
import '../sections/testimonial_section.dart';
import '../sections/contact_section.dart';
import '../sections/footer_section.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'min-h-screen', [
      const NavBar(),
      const HeroSection(),
      const SkillsSection(),
      const AboutSection(),
      const BlogSection(),
      const TestimonialSection(),
      const ContactSection(),
      const FooterSection(),
    ]);
  }
}
