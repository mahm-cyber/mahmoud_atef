import 'package:jaspr/server.dart';
import 'package:jaspr/dom.dart';

import 'app.dart';

void main() {
  Jaspr.initializeApp();

  runApp(
    Document(
      title: 'Mahmoud Atef — Flutter & Mobile App Developer',
      head: [
        Component.element(
          tag: 'meta',
          attributes: {
            'name': 'description',
            'content':
                'Mahmoud Atef — Flutter & Dart Developer. Building high-performance cross-platform mobile apps for Android & iOS.',
          },
        ),
        Component.element(
          tag: 'meta',
          attributes: {
            'name': 'viewport',
            'content': 'width=device-width, initial-scale=1.0',
          },
        ),
        Component.element(
          tag: 'link',
          attributes: {
            'rel': 'preconnect',
            'href': 'https://fonts.googleapis.com',
          },
        ),
        Component.element(
          tag: 'link',
          attributes: {
            'rel': 'preconnect',
            'href': 'https://fonts.gstatic.com',
            'crossorigin': '',
          },
        ),
        Component.element(
          tag: 'link',
          attributes: {
            'rel': 'stylesheet',
            'href':
                'https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap',
          },
        ),
        Component.element(
          tag: 'link',
          attributes: {'rel': 'stylesheet', 'href': 'styles.css'},
        ),
        // EmailJS SDK
        Component.element(
          tag: 'script',
          attributes: {
            'src':
                'https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js',
          },
        ),
        // Contact form handler
        Component.element(
          tag: 'script',
          attributes: {'src': 'contact.js', 'defer': ''},
        ),
      ],
      styles: [
        css('html, body').styles(
          width: 100.percent,
          minHeight: 100.vh,
          padding: Padding.zero,
          margin: Margin.zero,
          fontFamily: const FontFamily.list([
            FontFamily('Roboto'),
            FontFamilies.sansSerif,
          ]),
        ),
        css('.form-status-success').styles(
          raw: {
            'padding': '12px 16px',
            'border-radius': '8px',
            'background': '#d1fae5',
            'color': '#065f46',
            'font-family': 'Roboto, sans-serif',
            'font-size': '14px',
          },
        ),
        css('.form-status-error').styles(
          raw: {
            'padding': '12px 16px',
            'border-radius': '8px',
            'background': '#fee2e2',
            'color': '#991b1b',
            'font-family': 'Roboto, sans-serif',
            'font-size': '14px',
          },
        ),
      ],
      body: const App(),
    ),
  );
}
