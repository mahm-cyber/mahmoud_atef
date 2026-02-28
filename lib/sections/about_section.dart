import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/app_button.dart';

class AboutSection extends StatelessComponent {
  const AboutSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'about', classes: 'bg-white', [
      div(
        classes:
            'max-w-[1280px] mx-auto px-6 md:px-16 py-16 md:py-24 '
            'flex flex-col md:flex-row items-center gap-12 md:gap-20',
        [
          // Left text
          div(classes: 'flex-1 flex flex-col gap-5 text-center md:text-left', [
            span(
              classes:
                  'font-roboto font-semibold text-body-2 text-primary uppercase tracking-wider',
              [.text('About Me')],
            ),
            h2(
              classes:
                  'font-roboto font-bold text-[32px] md:text-h2 text-heading',
              [.text('Passionate Flutter Developer')],
            ),
            p(
              classes:
                  'font-roboto font-normal text-body-1 text-body leading-relaxed',
              [
                .text(
                  "I'm Mahmoud Atef, a Flutter developer with a passion for building elegant, "
                  'performant mobile applications. I specialize in cross-platform development for '
                  'iOS and Android, with experience in clean architecture, state management (Bloc/Riverpod), '
                  'and Firebase integration.',
                ),
              ],
            ),
            p(
              classes:
                  'font-roboto font-normal text-body-1 text-body leading-relaxed',
              [
                .text(
                  'I focus on writing clean, maintainable code and delivering pixel-perfect UI '
                  'that provides outstanding user experiences. Every project I take on is a chance '
                  'to push the boundaries of what mobile apps can achieve.',
                ),
              ],
            ),
            div(classes: 'pt-4 flex justify-center md:justify-start', [
              const AppButton(
                label: 'Download CV',
                href: 'MAHMOUD_ATEF_CV.pdf',
                download: 'MAHMOUD_ATEF_CV.pdf',
              ),
            ]),
          ]),
          // Right visual
          div(classes: 'flex-1 flex justify-center', [
            div(
              classes:
                  'w-[280px] h-[320px] md:w-[380px] md:h-[420px] '
                  'bg-gradient-to-tr from-bg-shade to-primary/10 rounded-2xl '
                  'border-2 border-primary/20 flex items-center justify-center',
              [
                div(classes: 'text-center', [
                  span(classes: 'text-[64px] block', [.text('👨‍💻')]),
                  span(
                    classes:
                        'font-roboto font-bold text-h3 text-heading mt-4 block',
                    [.text('3+ Years')],
                  ),
                  span(
                    classes: 'font-roboto font-normal text-body-2 text-body',
                    [.text('of Flutter Experience')],
                  ),
                ]),
              ],
            ),
          ]),
        ],
      ),
    ]);
  }
}
