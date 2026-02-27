import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

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
        form(
          [
            div(classes: 'grid grid-cols-1 md:grid-cols-2 gap-6', [
              _inputField(
                'Name',
                'Your name',
                'contact-name',
                'error-name',
                'text',
              ),
              _inputField(
                'Email',
                'Your email',
                'contact-email',
                'error-email',
                'email',
              ),
            ]),
            _inputField(
              'Subject',
              'Project subject',
              'contact-subject',
              'error-subject',
              'text',
            ),
            _textArea(
              'Message',
              'Tell me about your project...',
              'contact-message',
              'error-message',
            ),
            // Status feedback
            div(id: 'form-status', attributes: {'style': 'display:none'}, []),
            div(classes: 'flex justify-center pt-2', [
              button(
                [.text('Send Message')],
                id: 'contact-submit',
                attributes: {'type': 'submit'},
                classes:
                    'inline-block font-roboto font-normal text-body-2 bg-primary '
                    'text-white rounded px-8 py-3.5 text-center '
                    'hover:bg-primary-dark transition-colors duration-200 '
                    'border-none cursor-pointer',
              ),
            ]),
          ],
          id: 'contact-form',
          classes: 'flex flex-col gap-6',
        ),
      ]),
    ]);
  }

  static Component _inputField(
    String labelText,
    String placeholder,
    String inputId,
    String errorId,
    String inputType,
  ) {
    return div(classes: 'flex flex-col gap-2', [
      label(
        [.text(labelText)],
        htmlFor: inputId,
        classes: 'font-roboto font-semibold text-body-3 text-heading',
      ),
      input(
        id: inputId,
        type: InputType.values.firstWhere(
          (t) => t.value == inputType,
          orElse: () => InputType.text,
        ),
        classes:
            'font-roboto text-body-2 text-body px-4 py-3 rounded-lg '
            'border border-gray-200 bg-white outline-none '
            'focus:border-primary focus:ring-1 focus:ring-primary transition-colors',
        attributes: {'placeholder': placeholder},
      ),
      div(
        id: errorId,
        attributes: {'style': 'display:none'},
        classes: 'font-roboto text-[13px] text-red-500 mt-0.5',
        [],
      ),
    ]);
  }

  static Component _textArea(
    String labelText,
    String placeholder,
    String textAreaId,
    String errorId,
  ) {
    return div(classes: 'flex flex-col gap-2', [
      label(
        [.text(labelText)],
        htmlFor: textAreaId,
        classes: 'font-roboto font-semibold text-body-3 text-heading',
      ),
      textarea(
        id: textAreaId,
        [],
        rows: 5,
        placeholder: placeholder,
        classes:
            'font-roboto text-body-2 text-body px-4 py-3 rounded-lg '
            'border border-gray-200 bg-white outline-none '
            'focus:border-primary focus:ring-1 focus:ring-primary transition-colors resize-none',
      ),
      div(
        id: errorId,
        attributes: {'style': 'display:none'},
        classes: 'font-roboto text-[13px] text-red-500 mt-0.5',
        [],
      ),
    ]);
  }
}
