import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/section_title.dart';

class TestimonialSection extends StatelessComponent {
  const TestimonialSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'testimonials', classes: 'bg-bg-shade', [
      div(classes: 'max-w-[1280px] mx-auto px-6 md:px-16 py-16 md:py-24', [
        const SectionTitle(eyebrow: 'What Clients Say', title: 'Testimonials'),
        div(
          classes:
              'mt-12 md:mt-16 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8',
          [
            _testimonialCard(
              'Mahmoud developed an exceptional e-commerce app for our business. His Flutter expertise delivered a fast, beautiful app that works flawlessly on both platforms.',
              'Ahmed Hassan',
              'CEO, TechStore',
              '⭐⭐⭐⭐⭐',
            ),
            _testimonialCard(
              'Working with Mahmoud was a great experience. He understood our requirements perfectly and delivered a polished app ahead of schedule. Highly recommended!',
              'Sara Khaled',
              'Product Manager, HealthApp',
              '⭐⭐⭐⭐⭐',
            ),
            _testimonialCard(
              "Mahmoud's attention to detail in UI design and clean code architecture made our project a success. The app performs incredibly well with zero crashes.",
              'Omar Youssef',
              'Founder, FitTrack',
              '⭐⭐⭐⭐⭐',
            ),
          ],
        ),
      ]),
    ]);
  }

  static Component _testimonialCard(
    String quote,
    String name,
    String role,
    String stars,
  ) {
    final initials = name.split(' ').map((n) => n[0]).join();
    return div(
      classes:
          'bg-white rounded-xl p-8 shadow-sm hover:shadow-lg transition-shadow duration-300 flex flex-col gap-5',
      [
        span(classes: 'text-[20px]', [.text(stars)]),
        p(
          classes:
              'font-roboto font-normal text-body-2 text-body leading-relaxed flex-1 italic',
          [.text('"$quote"')],
        ),
        hr(classes: 'border-t border-gray-100'),
        div(classes: 'flex items-center gap-3', [
          div(
            classes:
                'w-12 h-12 rounded-full bg-primary/10 flex items-center justify-center',
            [
              span(classes: 'font-roboto font-bold text-body-2 text-primary', [
                .text(initials),
              ]),
            ],
          ),
          div([
            span(
              classes:
                  'font-roboto font-semibold text-body-2 text-heading block',
              [.text(name)],
            ),
            span(classes: 'font-roboto font-normal text-body-3 text-body/60', [
              .text(role),
            ]),
          ]),
        ]),
      ],
    );
  }
}
