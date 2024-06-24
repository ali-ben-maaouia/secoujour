import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<detail> {
  late VideoPlayerController _controller;
  int? _selectedIndex;

  List<List<String>> _contenus = [
    ["Contenu 0", "Contenu 1", "Contenu 2"],
    ["Contenu 0", "Contenu 1", "Contenu 2", "Contenu 3", "Contenu 4"],
    ["Contenu 0", "Contenu 1"],
    ["Contenu 0", "Contenu 1", "Contenu 2", "Contenu 3", "Contenu 4", "Contenu 5"],
    ["Contenu 0", "Contenu 1", "Contenu 2"],
    ["Contenu 0", "Contenu 1", "Contenu 2", "Contenu 3", "Contenu 4", "Contenu 5", "Contenu 6"],
    ["Contenu 0", "Contenu 1", "Contenu 2", "Contenu 3", "Contenu 4"],
    ["Contenu 0", "Contenu 1", "Contenu 2", "Contenu 3"],
    ["Contenu 0", "Contenu 1", "Contenu 2", "Contenu 3", "Contenu 4", "Contenu 5"],
    ["Contenu 0"],
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/visiter.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Allergie'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _controller.value.isInitialized
                ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
                : CircularProgressIndicator(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Description de la vidéo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Ceci est une description de la vidéo. Vous pouvez ajouter plus de détails sur la vidéo ici.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
              child: Column(
                children: List.generate(10, (index) {
                  return Card(
                    child: ExpansionTile(
                      title: Text("Item $index"),
                      leading: Image.asset("assets/icon/Allergieicon.png"),
                      children: [
                        Container(
                          height: 100.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _contenus[index].length,
                            itemBuilder: (context, subIndex) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  _contenus[index][subIndex],
                                  style: TextStyle(fontSize: 16),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
              child: Container(
                height: 200, // Ajustez cette hauteur en fonction de la taille de votre image et du titre
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          Container(
                            height: 150, // Ajustez cette hauteur en fonction de la taille de votre image
                            child: Image.asset("assets/icon/contact.png"),
                          ),
                          SizedBox(height: 8.0),
                          Text("Titre $index"), // Ajoutez le titre ici
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

