import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: 'Bandas Favoritas'),
                Tab(text: 'Artistas Favoritos'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BandasFavoritasPage(),
                  ArtistasFavoritosPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BandasFavoritasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset(
            'assets/images/Morat.jpg',
            width: 40,
            height: 40,
          ),
          title: Text('Morat'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalleBandaPage(
                  nombreBanda: 'Morat',
                  informacion:
                      'Morat es una banda colombiana de pop latino y Rock latino formada originalmente en Bogotá en 2011. Se dieron a conocer en 2015 con su éxito Mi nuevo vicio. Sus integrantes son Juan Pablo Isaza Piñeros, Juan Pablo Villamil Cortés, Simón Vargas Morales y Martín Vargas Morales.',
                ),
              ),
            );
          },
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/TwentyOnePilots.jpg',
            width: 40,
            height: 40,
          ),
          title: Text('Twenty One Pilots'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalleBandaPage(
                  nombreBanda: 'TwentyOnePilots',
                  informacion:
                      'Twenty One Pilots es un dúo musical estadounidense de Columbus, Ohio. La banda se formó en 2009 por el vocalista Tyler Joseph junto con Nick Thomas y Chris Salih, quienes se fueron en 2011. Desde su partida, la formación ha consistido en Tyler Joseph y el baterista Josh Dun.',
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class ArtistasFavoritosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset(
            'assets/images/KevinKaarl.jpg',
            width: 40,
            height: 40,
          ),
          title: Text('Kevin Kaarl'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalleArtistaPage(
                  nombreArtista: 'KevinKaarl',
                  informacion:
                      'Kevin Eduardo Hernández Carlos, conocido artísticamente como Kevin Kaarl, es un cantante, compositor y músico mexicano de música folk. Lanzó su primer sencillo «Amor viejo» el 18 de septiembre de 2018 y empezó a captar la atención del público, con más de 7 millones de visualizaciones en YouTube.',
                ),
              ),
            );
          },
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/EdMaverick.jpg',
            width: 40,
            height: 40,
          ),
          title: Text('Ed Maverick'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalleArtistaPage(
                  nombreArtista: 'EdMaverick',
                  informacion:
                      'Eduardo Hernández Saucedo, conocido como Ed Maverick, es un cantante, compositor y músico mexicano. Como intérprete, se especializa en los géneros de música folk, alternativa y rock.',
                ),
              ),
            );
          },
        ),
        ListTile(
          leading: Image.asset(
            'assets/images/BrunoMars.jpg',
            width: 40,
            height: 40,
          ),
          title: Text('Bruno Mars'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalleArtistaPage(
                  nombreArtista: 'BrunoMars',
                  informacion:
                      'Peter Gene Hernández, conocido artísticamente como Bruno Mars, es un cantante, compositor, productor musical y bailarín estadounidense. Comenzó a crear música desde una edad muy temprana y actuó en muchos escenarios de su pueblo natal a lo largo de su niñez, realizando imitaciones.',
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class DetalleBandaPage extends StatelessWidget {
  final String nombreBanda;
  final String informacion;

  const DetalleBandaPage({
    required this.nombreBanda,
    required this.informacion,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nombreBanda),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$nombreBanda.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
            ),
            padding: EdgeInsets.all(16),
            child: Text(
              informacion,
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class DetalleArtistaPage extends StatelessWidget {
  final String nombreArtista;
  final String informacion;

  const DetalleArtistaPage({
    required this.nombreArtista,
    required this.informacion,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nombreArtista),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$nombreArtista.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
            ),
            padding: EdgeInsets.all(16),
            child: Text(
              informacion,
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
