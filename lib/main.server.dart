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
      ],
      body: const App(),
    ),
  );
}
