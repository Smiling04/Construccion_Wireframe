import 'package:flutter/material.dart';
import 'customcard.dart';
import 'item.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Explorar Categorías"),
        actions: const [
          Icon(Icons.menu),
          SizedBox(width: 10),
          Icon(Icons.circle_outlined),
          SizedBox(width: 10),
          Icon(Icons.circle),
          SizedBox(width: 10),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: double.infinity,
              height: 25,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 187, 147, 16)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            const SizedBox(height: 80),

            const ProfileCard(
              title: "Carlos Pedro Gomez Perez",
              subtitle: "Estudiante destacado de Ingeniería en Sistemas, excelente desarrollador y deportista.",
            ),

            const SizedBox(height: 20),

            const CategoryItem(text: "Aquí tenemos una sección para ver más datos de su biografía."),
            const CategoryItem(text: "Opción para conocer reportes de sus éxitos como programador."),
            const CategoryItem(text: "Comentar, escribir, leer..."),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined), label: ""),
        ],
      ),
    );
  }
}