import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/section_title.dart';

class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'projects', classes: 'bg-bg-mint', [
      div(classes: 'max-w-[1280px] mx-auto px-6 md:px-16 py-16 md:py-24', [
        const SectionTitle(eyebrow: 'My Portfolio', title: 'Featured Projects'),
        div(
          classes:
              'mt-12 md:mt-16 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8',
          [
            _projectCard(
              '🛍️',
              'Mobile App',
              'Only Handmade',
              'Only Handmade is your ultimate destination for discovering, buying, and celebrating the world of handmade craftsmanship. Explore a curated marketplace filled with unique creations made with passion, skill, and heart.',
              'https://play.google.com/store/apps/details?id=com.namaait.onlyhandmadeprod&hl=en',
            ),
            _projectCard(
              '🏢',
              'Enterprise App',
              'ERP+',
              'ERP+ is a mobile application for ERPplus5.com. It contains the management of the daily bases functions to facilitate the organization staff member’s functions. The app is working on HR as attendance using GPS, leave request, Leave approvals, and same as in missions and permissions. ERP+ is a general ERP mobile application its updates will contain the major system features in the other modules CRM, Accounting, Stock control, Project management, Real-estate CRM, Management and dashboards. To get the application fully functioned you need to contact us to have the full back-end of the ERP. info@cloudsfot5.com. For more information about the ERP please visit the official system portal ERPplus5.com.',
              'https://play.google.com/store/apps/details?id=com.CloudSoft5.ERPPlus&hl=en',
            ),
          ],
        ),
      ]),
    ]);
  }

  static Component _projectCard(
    String icon,
    String category,
    String title,
    String description,
    String link,
  ) {
    return a(
      href: link,
      target: Target.blank,
      classes:
          'block bg-white rounded-xl overflow-hidden shadow-sm '
          'hover:shadow-lg hover:-translate-y-1 transition-all duration-300 no-underline text-inherit',
      [
        div(
          classes:
              'h-[180px] bg-gradient-to-br from-bg-shade to-primary/5 flex items-center justify-center',
          [
            span(classes: 'text-[64px]', [.text(icon)]),
          ],
        ),
        div(classes: 'p-6 flex flex-col gap-3', [
          span(
            classes:
                'font-roboto font-semibold text-body-3 text-primary uppercase tracking-wider',
            [.text(category)],
          ),
          h3(classes: 'font-roboto font-bold text-h3 text-heading', [
            .text(title),
          ]),
          p(
            classes:
                'font-roboto font-normal text-body-3 text-body leading-relaxed line-clamp-3 md:line-clamp-4',
            [.text(description)],
          ),
          div(
            classes:
                'flex items-center justify-between pt-2 mt-auto border-t border-gray-100',
            [
              span(
                classes:
                    'font-roboto font-semibold text-body-3 text-primary hover:underline',
                [.text('View Details →')],
              ),
            ],
          ),
        ]),
      ],
    );
  }
}
