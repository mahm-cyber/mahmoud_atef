import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/section_title.dart';

class SkillsSection extends StatelessComponent {
  const SkillsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'skills',
      classes: 'bg-white',
      [
        div(
          classes: 'max-w-[1280px] mx-auto px-6 md:px-16 py-16 md:py-24',
          [
            const SectionTitle(
              eyebrow: 'My Skills',
              title: 'Technologies I Work With',
            ),
            div(
              classes: 'mt-12 md:mt-16 grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-6 md:gap-8',
              [
                _skillCard('📱', 'Flutter'),
                _skillCard('🎯', 'Dart'),
                _skillCard('🤖', 'Android'),
                _skillCard('🍎', 'iOS'),
                _skillCard('🔥', 'Firebase'),
                _skillCard('🌐', 'REST APIs'),
                _skillCard('🧊', 'Bloc'),
                _skillCard('🏗️', 'Clean Arch'),
                _skillCard('📦', 'Git & GitHub'),
                _skillCard('🎨', 'Figma'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  static Component _skillCard(String icon, String label) {
    return div(
      classes: 'flex flex-col items-center gap-3 p-6 rounded-xl bg-bg-shade '
          'hover:shadow-lg hover:-translate-y-1 transition-all duration-300 cursor-default',
      [
        span(classes: 'text-[40px]', [.text(icon)]),
        span(
          classes: 'font-roboto font-semibold text-body-2 text-heading text-center',
          [.text(label)],
        ),
      ],
    );
  }
}
