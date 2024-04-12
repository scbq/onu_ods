import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../widget/footer.dart';

class HambreScreen extends StatefulWidget {
  const HambreScreen({Key? key}) : super(key: key);

  @override
  _HambreScreenState createState() => _HambreScreenState();
}

class _HambreScreenState extends State<HambreScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'NQ9uiS_LNso',
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
        backgroundColor: Colors.orange,
        title: Row(
          children: [
            Image.network(
              'https://www.un.org/sustainabledevelopment/wp-content/uploads/sites/3/2019/09/SDG-Wheel_WEB.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 10), // Espacio entre el logo y el título
            const Text(
              'Hambre Cero',
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
                'Objetivo 2: Poner fin al hambre, lograr la seguridad alimentaria y la mejora de la nutrición y promover la agricultura sostenible',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Image.network(
              'https://ayudaenaccion.b-cdn.net/uploads/2022/02/02-Comida-3.jpg',
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'El segundo Objetivo de Desarrollo Sostenible (ODS) busca acabar con todas las formas de hambre y desnutrición para el año 2030 y velar por el acceso de todas las personas, en especial los niños, a una alimentación suficiente y nutritiva durante todo el año.',
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
