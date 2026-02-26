import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/section_title.dart';

class BlogSection extends StatelessComponent {
  const BlogSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'blog',
      classes: 'bg-bg-mint',
      [
        div(
          classes: 'max-w-[1280px] mx-auto px-6 md:px-16 py-16 md:py-24',
          [
            const SectionTitle(
              eyebrow: 'Latest Articles',
              title: 'From My Blog',
            ),
            div(
              classes: 'mt-12 md:mt-16 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8',
              [
                _blogCard(
                  '🧊',
                  'State Management',
                  'State Management in Flutter: Bloc vs Riverpod',
                  'A deep dive into two popular state management solutions for Flutter apps, comparing their pros, cons, and use cases.',
                  'Feb 15, 2025',
                ),
                _blogCard(
                  '🏗️',
                  'Architecture',
                  'Building Clean Architecture in Flutter Apps',
                  'How to structure your Flutter projects using clean architecture principles for better maintainability and testability.',
                  'Jan 28, 2025',
                ),
                _blogCard(
                  '🔥',
                  'Firebase',
                  'Firebase Integration Tips for Flutter Developers',
                  'Practical tips and best practices for integrating Firebase services into your Flutter applications effectively.',
                  'Jan 10, 2025',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  static Component _blogCard(String icon, String category, String title, String description, String date) {
    return div(
      classes: 'bg-white rounded-xl overflow-hidden shadow-sm '
          'hover:shadow-lg hover:-translate-y-1 transition-all duration-300',
      [
        div(
          classes: 'h-[180px] bg-gradient-to-br from-bg-shade to-primary/5 flex items-center justify-center',
          [span(classes: 'text-[64px]', [.text(icon)])],
        ),
        div(
          classes: 'p-6 flex flex-col gap-3',
          [
            span(
              classes: 'font-roboto font-semibold text-body-3 text-primary uppercase tracking-wider',
              [.text(category)],
            ),
            h3(
              classes: 'font-roboto font-bold text-h3 text-heading',
              [.text(title)],
            ),
            p(
              classes: 'font-roboto font-normal text-body-3 text-body leading-relaxed',
              [.text(description)],
            ),
            div(
              classes: 'flex items-center justify-between pt-2 border-t border-gray-100',
              [
                span(classes: 'font-roboto text-body-3 text-body/60', [.text(date)]),
                a(
                  href: '#',
                  classes: 'font-roboto font-semibold text-body-3 text-primary no-underline hover:underline',
                  [.text('Read More →')],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
