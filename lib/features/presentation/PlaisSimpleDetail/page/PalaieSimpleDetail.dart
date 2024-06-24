import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../aideHypoglycemie/page/aideHypoglycemie.dart';

class PlaieSimpleDetail extends StatefulWidget {
  const PlaieSimpleDetail({super.key});

  @override
  State<PlaieSimpleDetail> createState() => _PlaieSimpleDetailState();
}

class _PlaieSimpleDetailState extends State<PlaieSimpleDetail> {
  late VideoPlayerController _controller;
  int? _selectedIndex;
  List<String> Data4 = [
    "Après s'étre lavé les mains",
    "nettoyer la plaie avec de l'eau et du savon.",
    "S'aider d'un compresse pour enlever les saletés.",
    "Ce nettoyage permet d'éliminer les germes et ainsi éviter l'infection.",
    "Utiliser éventuellement un désinfectant.",
    "Protéger la plaie par un pansement.",
    "Vérifier l'existence d'une vaccination antitétanique."
  ];

  List<String> _contenus = [
    "Somnolence", "Fatigue", "Soif intense", "Envie fréquente d'uriner", "Langue séche",
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/Plaiesimple.mp4')
      ..initialize().then((_) {
        setState(() {});
        // Start playing the video
        _controller.play();
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
        title: Text('Plais Simple'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _controller.value.isInitialized
                ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
                : CircularProgressIndicator(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                "Une plaie simple est une rupture de la continuité cutanée limitée en profondeur au tissu graisseux sous-cutané, sans atteinte de tissus nobles (muscle, os, articulation, grosses artères, nerfs, tendons) et sans perte de substance importante.",
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'La conduite à tenir :',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Data4.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        // Masquer le conteneur principal et afficher un autre conteneur
                      },
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Numérotation
                            Text(
                              '${index + 1}.', // Ajoutez 1 pour commencer à partir de 1 au lieu de 0
                              style: TextStyle(fontSize: 16.0, color: Colors.red),
                            ),
                            SizedBox(width: 8), // Ajoutez un espace entre le numéro et le texte
                            // Texte de l'élément
                            Expanded(
                              child: Text(
                                Data4[index]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => aideHypoglycemie(),
                    ),
                  );
                  // Action à effectuer lorsque le texte est cliqué
                  // Par exemple, navigation vers une autre page, affichage d'une boîte de dialogue, etc.
                  // Insérez ici le code correspondant à votre action souhaitée
                },
                child: Text(
                  '',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
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
