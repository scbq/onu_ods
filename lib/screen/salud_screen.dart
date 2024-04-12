import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../widget/footer.dart';

class SaludScreen extends StatefulWidget {
  const SaludScreen({Key? key}) : super(key: key);

  @override
  _SaludScreenState createState() => _SaludScreenState();
}

class _SaludScreenState extends State<SaludScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'nQ_1pnpzIhU',
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
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Image.network(
              'https://www.un.org/sustainabledevelopment/wp-content/uploads/sites/3/2019/09/SDG-Wheel_WEB.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 10), // Espacio entre el logo y el título
            const Text(
              'Salud y Bienestar',
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
                'Objetivo 3: Garantizar una vida sana y promover el bienestar para todos en todas las edades',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://salaprensa.ceuandalucia.es/wp-content/uploads/2020/04/ods-ceu-andalucia.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'El tercer Objetivo de Desarrollo Sostenible (ODS) busca garantizar una vida saludable y promover el bienestar universal. Esto incluye reducir la mortalidad materna e infantil, acabar con las epidemias de enfermedades, y asegurar el acceso a servicios de salud de calidad.',
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
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
