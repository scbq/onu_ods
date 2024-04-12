import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../widget/footer.dart';

class EducacionScreen extends StatefulWidget {
  const EducacionScreen({Key? key}) : super(key: key);

  @override
  _EducacionScreenState createState() => _EducacionScreenState();
}

class _EducacionScreenState extends State<EducacionScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'MEWlRIdVWF8',
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
        backgroundColor: const Color.fromARGB(255, 225, 34, 111),
        title: Row(
          children: [
            Image.network(
              'https://www.un.org/sustainabledevelopment/wp-content/uploads/sites/3/2019/09/SDG-Wheel_WEB.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 10), // Espacio entre el logo y el título
            const Text(
              'Educación de Calidad',
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
                'Objetivo 4: Garantizar una educación inclusiva, equitativa y de calidad y promover oportunidades de aprendizaje durante toda la vida para todos',
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
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://ayudaenaccion.b-cdn.net/uploads/2022/02/04-Educacion-3.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'El cuarto Objetivo de Desarrollo Sostenible (ODS) busca garantizar una educación inclusiva y equitativa de calidad y promover oportunidades de aprendizaje permanente para todos. Esto incluye asegurar que todas las niñas y todos los niños terminen la enseñanza primaria y secundaria, eliminar las disparidades de género en la educación, y aumentar la oferta de docentes calificados.',
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
