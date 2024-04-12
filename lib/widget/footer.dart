import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'No se pudo abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            '¡SÍGUENOS!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(FontAwesomeIcons.flickr),
                onPressed: () =>
                    _launchUrl('https://www.flickr.com/photos/globalgoalsun/'),
                color: Colors.purple,
                iconSize: 32,
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(FontAwesomeIcons.facebook),
                onPressed: () =>
                    _launchUrl('https://web.facebook.com/globalgoalsUN/'),
                color: Colors.blue,
                iconSize: 32,
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(FontAwesomeIcons.twitter),
                onPressed: () =>
                    _launchUrl('https://twitter.com/globalgoalsun'),
                color: Colors.lightBlue,
                iconSize: 32,
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'NACIONES UNIDAS',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
