import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class AppButton extends StatelessComponent {
  final String label;
  final bool filled;
  final String? href;
  final String? download;

  const AppButton({
    required this.label,
    this.filled = true,
    this.href,
    this.download,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    final filledClasses =
        'inline-block font-roboto font-normal text-body-2 bg-primary text-white rounded px-8 py-3.5 text-center '
        'hover:bg-primary-dark transition-colors duration-200 no-underline border-none cursor-pointer';
    final outlinedClasses =
        'inline-block font-roboto font-normal text-body-2 border border-primary text-primary rounded px-8 py-3.5 text-center '
        'hover:bg-primary hover:text-white transition-colors duration-200 no-underline bg-transparent cursor-pointer';
    final classes = filled ? filledClasses : outlinedClasses;

    if (href != null) {
      return a(href: href!, download: download, classes: classes, [
        .text(label),
      ]);
    }
    return button(classes: classes, [.text(label)]);
  }
}
