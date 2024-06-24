import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../aideHypoglycemie/page/aideHypoglycemie.dart';

class Hypoglycemie extends StatefulWidget {
  const Hypoglycemie({super.key});

  @override
  State<Hypoglycemie> createState() => _HypoglycemieState();
}

class _HypoglycemieState extends State<Hypoglycemie> {
  late VideoPlayerController _controller;
  int? _selectedIndex;

  List<String> _contenus = [
    "Fatigue","Fringales","Maux de tete","Trouble de l'humeur","Paleurs","Troubled de la vue","Tremblements"
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/hypoglycemie.mp4')
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
      backgroundColor:Color(0XFFE3E1D2),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Hypoglycémie'),
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
"L' hypoglycémie correspond à une glycémie trop basse (inférieure à 0,7 g/L). Le risque d'épisodes d' hypoglycémie concerne surtout les personnes dont le traitement comprend certains médicaments (sulfamides, glinides, insuline ).",                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start of the cross axis (left in LTR languages)
          children: [
            Text(
              'Les symptomes peuvent etre:', // Replace with your desired title
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10), // Adjust spacing between title and list if needed
            Column(
              children: List.generate(_contenus.length, (index) {
                return Card(
                  color:Colors.white,
                  child: ListTile(
                    title: Text(_contenus[index]),
                  ),
                );
              }),
            ),


          ],
        ),
      ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end, // Align children to the start of the cross axis (left in LTR languages)
                children: [
                  GestureDetector(
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
                'La conduit a tenir >>', // Remplacez par le titre désiré
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  decoration: TextDecoration.underline, // Ajoutez un soulignement pour indiquer que c'est cliquable
                ),
              ),
            ),

        SizedBox(height: 40), // Adjust spacing between title and list if needed



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
