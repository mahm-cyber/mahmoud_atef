import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

import '../components/app_button.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'contact', classes: 'bg-bg-mint', [
      div(classes: 'max-w-[800px] mx-auto px-6 md:px-16 py-16 md:py-24', [
        // Title
        div(classes: 'text-center flex flex-col gap-4 mb-12', [
          span(
            classes:
                'font-roboto font-semibold text-body-2 text-primary uppercase tracking-wider',
            [.text("Let's Work Together")],
          ),
          h2(
            classes:
                'font-roboto font-bold text-[32px] md:text-h2 text-heading',
            [.text('Get In Touch')],
          ),
          p(classes: 'font-roboto font-normal text-body-1 text-body', [
            .text("Have a mobile app idea? I'd love to bring it to life."),
          ]),
        ]),
        // Form
        form(classes: 'flex flex-col gap-6', [
          div(classes: 'grid grid-cols-1 md:grid-cols-2 gap-6', [
            _inputField('Name', 'Your name'),
            _inputField('Email', 'Your email'),
          ]),
          _inputField('Subject', 'Project subject'),
          _textArea('Message', 'Tell me about your project...'),
          div(classes: 'flex justify-center pt-2', [
            const AppButton(label: 'Send Message'),
          ]),
        ]),
      ]),
    ]);
  }

  static Component _inputField(String labelText, String placeholder) {
    return div(classes: 'flex flex-col gap-2', [
      label([
        .text(labelText),
      ], classes: 'font-roboto font-semibold text-body-3 text-heading'),
      input(
        type: InputType.text,
        classes:
            'font-roboto text-body-2 text-body px-4 py-3 rounded-lg '
            'border border-gray-200 bg-white outline-none '
            'focus:border-primary focus:ring-1 focus:ring-primary transition-colors',
        attributes: {'placeholder': placeholder},
      ),
    ]);
  }

  static Component _textArea(String labelText, String placeholder) {
    return div(classes: 'flex flex-col gap-2', [
      label([
        .text(labelText),
      ], classes: 'font-roboto font-semibold text-body-3 text-heading'),
      textarea(
        [],
        rows: 5,
        placeholder: placeholder,
        classes:
            'font-roboto text-body-2 text-body px-4 py-3 rounded-lg '
            'border border-gray-200 bg-white outline-none '
            'focus:border-primary focus:ring-1 focus:ring-primary transition-colors resize-none',
      ),
    ]);
  }
}
