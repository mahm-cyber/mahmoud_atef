import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class FooterSection extends StatelessComponent {
  const FooterSection({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'bg-bg-shade', [
      div(classes: 'max-w-[1280px] mx-auto px-6 md:px-16 py-12 md:py-20', [
        // Top section
        div(
          classes:
              'flex flex-col md:flex-row items-center justify-between gap-8 mb-12',
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
            div(classes: 'flex flex-wrap justify-center gap-6 md:gap-8', [
              _footerLink('Home', '#hero'),
              _footerLink('Skills', '#skills'),
              _footerLink('About', '#about'),
              _footerLink('Projects', '#projects'),
              _footerLink('Testimonials', '#testimonials'),
              _footerLink('Contact', '#contact'),
            ]),
            // Social links
            div(classes: 'flex gap-4', [
              _socialLink('GitHub', 'https://github.com/mahmoudatef'),
              _socialLink('LinkedIn', 'https://linkedin.com/in/mahmoudatef'),
              _socialLink('Twitter', 'https://twitter.com/mahmoudatef'),
            ]),
          ],
        ),
        // Divider
        hr(classes: 'border-t border-gray-200 mb-8'),
        // Copyright
        p(
          classes:
              'font-roboto font-normal text-body-3 text-body/60 text-center',
          [
            .text(
              '© 2025 Mahmoud Atef. All rights reserved. Built with Jaspr & Flutter 💙',
            ),
          ],
        ),
      ]),
    ]);
  }

  static Component _footerLink(String label, String href) {
    return a(
      href: href,
      classes:
          'font-roboto font-normal text-body-2 text-body no-underline hover:text-primary transition-colors',
      [.text(label)],
    );
  }

  static Component _socialLink(String label, String href) {
    return a(
      href: href,
      target: Target.blank,
      classes:
          'font-roboto font-semibold text-body-3 text-white bg-heading '
          'px-4 py-2 rounded-lg no-underline hover:bg-primary transition-colors duration-200',
      [.text(label)],
    );
  }
}
