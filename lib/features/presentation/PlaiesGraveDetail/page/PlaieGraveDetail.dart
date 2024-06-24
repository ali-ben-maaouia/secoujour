import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../aideHypoglycemie/page/aideHypoglycemie.dart';

class PlaieGraveDetail extends StatefulWidget {
  const PlaieGraveDetail({super.key});

  @override
  State<PlaieGraveDetail> createState() => _PlaieGraveDetailState();
}

class _PlaieGraveDetailState extends State<PlaieGraveDetail> {
  late VideoPlayerController _controller;
  int? _selectedIndex;

  List<String> _contenus = [
    "Elle est étendue (la surface atteinte dépasse celle\n de la paume de la main de la victime)",
    "Elle est profonde,",
    "Elle est souillée par des corps étrangers (terre, graviers, brindilles, bouts de verre, couteau, outil ...),",
    "Elle saigne beaucoup,",
    "Elle affecte l’abdomen, le thorax, l’oeil, la face, le cou ou la main,",
    "Elle se trouve à proximité d’une articulation, ou d’un orifice naturel (bouche, narines, orbites, anus).",
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/plaiegrave.mp4')
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
        title: Text('Plaies Grave'),
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Une plaie est dite grave lorsqu’elle présente au moins l’un des caractères suivants :',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start of the cross axis (left in LTR languages)
                children: [
                  SizedBox(height: 10), // Adjust spacing between title and list if needed
                  Column(
                    children: List.generate(_contenus.length, (index) {
                      return Card(
                        color: Colors.white,
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
