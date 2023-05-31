import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://lh3.googleusercontent.com/JB8rLaK_ONdavRA5rbPbdSWPP6NTV9Lum0f9SyA9P88eeBGeke3AGz0X8NjAW7eUJ3v-USyGR18iQFXJl496BufUZXsgXQYfU8-0iPyMvQ',
              width: 200,
              height: 200,
            ),
            Container(
              width: 370, // Ancho del fondo transparente
    height: 80, // Alto del fondo transparente
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.4), // Fondo semitransparente
      borderRadius: BorderRadius.circular(10.0),), // Bordes redondeados
              child: Text(
                'Esta es una App sobre mis Artistas favoritos y mis bandas favoritas, a continuación les mostraré cuáles son.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Música',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/music');
          }
        },
      ),
    );
  }
}
