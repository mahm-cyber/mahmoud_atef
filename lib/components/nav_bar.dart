import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import 'app_button.dart';

class NavBar extends StatelessComponent {
  const NavBar({super.key});

  @override
  Component build(BuildContext context) {
    return nav(
      classes:
          'fixed top-0 left-0 right-0 z-50 bg-white shadow-[0_4px_60px_rgba(0,0,0,0.1)]',
      [
        div(
          classes:
              'max-w-[1280px] mx-auto px-6 md:px-16 flex items-center justify-between h-[80px] md:h-[90px]',
          [
            // Logo
            a(
              href: '#hero',
              classes:
                  'font-roboto font-bold text-[24px] text-heading no-underline',
              [
                span(classes: 'text-primary', [.text('M')]),
                .text('ahmoud'),
                span(classes: 'text-primary', [.text('.')]),
              ],
            ),
            // Nav links
            div(classes: 'hidden md:flex items-center gap-8', [
              _navLink('Home', '#hero', active: true),
              _navLink('Skills', '#skills'),
              _navLink('About me', '#about'),
              _navLink('Projects', '#projects'),
              _navLink('Testimonials', '#testimonials'),
            ]),
            // CTA button
            div(classes: 'hidden md:block', [
              const AppButton(
                label: 'Contact Me',
                filled: false,
                href: '#contact',
              ),
            ]),
            // Mobile menu button
            button(
              classes:
                  'md:hidden text-heading text-2xl cursor-pointer bg-transparent border-none p-2',
              id: 'mobile-menu-btn',
              [.text('☰')],
            ),
          ],
        ),
      ],
    );
  }

  static Component _navLink(String label, String href, {bool active = false}) {
    return a(
      href: href,
      classes:
          'font-roboto font-normal text-body-2 no-underline transition-colors duration-200 '
          '${active ? "text-primary" : "text-body hover:text-primary"}',
      [.text(label)],
    );
  }
}
