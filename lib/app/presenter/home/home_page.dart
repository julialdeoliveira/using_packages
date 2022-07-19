import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse('https://pub.dev/packages/url_launcher'))) {
      throw 'Could not launch https://pub.dev/packages/url_launcher';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tela inicial',
          textAlign: TextAlign.center,
          style: TextStyle(letterSpacing: 5),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Share.share(
                    'check out this package https://pub.dev/packages/share_plus');
              },
              child: const Text('Compartilhar'),
            ),
            MaterialButton(
              color: Colors.orange,
              onPressed: () {
                _launchUrl();
              },
              child: const Text('Abrir Link'),
            ),
          ],
        ),
      ),
    );
  }
}
