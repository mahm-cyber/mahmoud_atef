import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/app_button.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'hero',
      classes: 'bg-bg-shade pt-[100px] md:pt-[120px]',
      [
        div(
          classes: 'max-w-[1280px] mx-auto px-6 md:px-16 py-16 md:py-24 '
              'flex flex-col md:flex-row items-center gap-12 md:gap-16',
          [
            // Left content
            div(
              classes: 'flex-1 flex flex-col gap-5 text-center md:text-left',
              [
                span(
                  classes: 'font-roboto font-semibold text-body-2 text-heading',
                  [.text('Hey, I am Mahmoud Atef')],
                ),
                h1(
                  classes: 'font-roboto font-bold text-[36px] md:text-[48px] lg:text-h1 text-heading leading-tight',
                  [.text('I Build Beautiful Mobile Apps with Flutter')],
                ),
                p(
                  classes: 'font-roboto font-normal text-body-1 text-body max-w-[500px] mx-auto md:mx-0',
                  [
                    .text(
                      'Flutter & Dart developer specialized in crafting high-performance '
                      'cross-platform mobile applications for Android & iOS.',
                    ),
                  ],
                ),
                div(
                  classes: 'pt-4 flex justify-center md:justify-start',
                  [const AppButton(label: 'Get In Touch', href: '#contact')],
                ),
              ],
            ),
            // Right visual
            div(
              classes: 'flex-1 flex justify-center',
              [
                div(
                  classes: 'w-[280px] h-[280px] md:w-[400px] md:h-[400px] lg:w-[500px] lg:h-[500px] '
                      'bg-gradient-to-br from-primary to-primary-dark rounded-2xl '
                      'flex items-center justify-center shadow-xl',
                  [
                    span(
                      classes: 'text-white text-[80px] md:text-[120px] font-bold font-roboto opacity-30',
                      [.text('MA')],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
