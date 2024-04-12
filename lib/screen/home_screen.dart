import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../widget/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo_ods.png', // Ruta de la imagen del logo
              height: 40, // Ajusta la altura del logo según tus necesidades
              width: 40, // Ajusta el ancho del logo según tus necesidades
            ),
            const SizedBox(width: 10), // Espacio entre el logo y el título
            const Text(
              'Objetivos de Desarrollo Sostenible',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Los Objetivos de Desarrollo Sostenible',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Los Objetivos de Desarrollo Sostenible (ODS) son un llamado universal a la acción para acabar con la pobreza, proteger el planeta y garantizar que todas las personas gocen de paz y prosperidad.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.pobreza);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/fin_pobreza.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.hambre);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/hambre_cero.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.salud);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/salud_bienestar.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.educacion);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/educacion.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const FooterWidget(), //footer
          ],
        ),
      ),
    );
  }
}
