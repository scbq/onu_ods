import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../widget/footer.dart';

class PobrezaScreen extends StatefulWidget {
  const PobrezaScreen({Key? key}) : super(key: key);

  @override
  _PobrezaScreenState createState() => _PobrezaScreenState();
}

class _PobrezaScreenState extends State<PobrezaScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'mO5tesXHVh8',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            Image.network(
              'https://www.un.org/sustainabledevelopment/wp-content/uploads/sites/3/2019/09/SDG-Wheel_WEB.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 10), // Espacio entre el logo y el título
            const Text(
              'Fin de la Pobreza',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Objetivo 1: Poner fin a la pobreza en todas sus formas en todo el mundo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Image.network(
              'https://www.cincovientos.com/wp-content/uploads/2021/09/ODS_findelapobreza_cincovientos.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'El primer Objetivo de Desarrollo Sostenible (ODS) busca acabar con la pobreza en todas sus formas en todo el mundo. La pobreza no se trata solo de falta de ingresos, sino también de falta de acceso a servicios básicos como educación, salud, agua potable y saneamiento.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Video Relacionado',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Divider(
                    color: Colors.blue,
                    thickness: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
            ),
            const FooterWidget(), //footer
          ],
        ),
      ),
    );
  }
}
