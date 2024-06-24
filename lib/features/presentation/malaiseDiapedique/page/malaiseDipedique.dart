import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MalaiseDiapedique extends StatefulWidget {
  const MalaiseDiapedique({super.key});

  @override
  State<MalaiseDiapedique> createState() => _MalaiseDiapediqueState();
}

class _MalaiseDiapediqueState extends State<MalaiseDiapedique> {
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
    _controller = VideoPlayerController.asset('assets/videos/MalaiseDiabetique.mp4')
      ..initialize().then((_) {
        setState(() {});
        // Start playing the video
        _controller.play();
        // Pause the video after 5 seconds

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
      backgroundColor: Color(0XFFE3E1D2),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Malaise diabétique'),
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
                'Description:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
"Une baisse de la glycémie provoque des symptômes tels que la faim, une transpiration excessive, des tremblements, une asthénie, une faiblesse et une incapacité à réfléchir clairement, tandis que l'hypoglycémie sévère entraîne des symptômes tels qu'une confusion, des convulsions et un coma."   ,             textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          child: Center(
                            child: Text('< 0,7 g/l'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                          height: 50,
                          child: Center(
                            child: Text('Hypoglycémie'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Espacement entre les lignes
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          child: Center(
                            child: Text('0.8-1 g/l'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          height: 50,
                          child: Center(
                            child: Text('Valeur normale'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Espacement entre les lignes
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          child: Center(
                            child: Text('>1 g/l'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          height: 50,
                          child: Center(
                            child: Text('Hyperglycémie'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
