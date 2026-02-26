import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class SectionTitle extends StatelessComponent {
  final String eyebrow;
  final String title;
  final bool centered;

  const SectionTitle({
    required this.eyebrow,
    required this.title,
    this.centered = true,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'flex flex-col gap-2 ${centered ? "items-center text-center" : "items-start text-left"}',
      [
        span(
          classes: 'font-roboto font-semibold text-body-2 text-primary uppercase tracking-wider',
          [.text(eyebrow)],
        ),
        h2(
          classes: 'font-roboto font-bold text-[32px] md:text-h2 text-heading',
          [.text(title)],
        ),
      ],
    );
  }
}
