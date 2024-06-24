import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../aideHypoglycemie/page/aideHypoglycemie.dart';

class TraumatismeMusculaireDetail extends StatefulWidget {
  const TraumatismeMusculaireDetail({super.key});

  @override
  State<TraumatismeMusculaireDetail> createState() => _TraumatismeMusculaireDetailState();
}

class _TraumatismeMusculaireDetailState extends State<TraumatismeMusculaireDetail> {
  late VideoPlayerController _controller;
  int? _selectedIndex;

  List<String> _contenus = [
    "La lésion musculaire",
    "Elongation musculaire",
    "Déchirure musculaire",
    "Les symptomes",
  ];
  List<List<Widget>> dropdownContents = [
    [
      Text("est une atteinte du muscle d’origines diverses. Elle fait partie des blessures les plus courantes dans le monde du sport. C’est une atteinte des différentes structures qui composent le muscle : le tissu musculaire, le tissu conjonctif, tissu de soutien et de l’intimité myo conjonctive. Les muscles les plus touchés sont les ischios jambier, quadriceps, triceps sural et les muscles de la hanche."),
      // Ajoutez d'autres widgets selon vos besoins pour le premier élément
    ],
    [
      Text("Il arrive qu’au cours d’un effort physique, le sportif ne soit pas suffisamment échauffé ou qu’il force brutalement sur certains muscles. Pour répondre au mouvement, certaines fibres musculaires sont alors plus sollicitées que d’autres. Un phénomène d’étirement anormal de ses fibres au-delà de leur capacité élastique induisant des micro-lésions musculaires en résulte. Bien que les fibres musculaires ne soient pas rompues, l’élongation est une blessure très proche de la déchirure musculaire."),
      // Ajoutez d'autres widgets selon vos besoins pour le deuxième élément
    ],
    [
      Text("Est une lésion d’un muscle survenant lors d’un effort physique important. Elle peut toucher de nombreux muscles dits striés squelettiques, qui se composent de fibres musculaires (cellules allongées) et prennent leur attache sur un os du squelette. Le plus souvent, la déchirure se produit au niveau de la cuisse (partie antérieure ou postérieure) ou du mollet. Elle est de gravité variable : de la simple élongation, au claquage (déchirure incomplète), ou à la déchirure complète."),
      // Ajoutez d'autres widgets selon vos besoins pour le deuxième élément
    ],
    [
      Text("Dans la majorité des cas, une déchirure musculaire se manifeste par une douleur intense, similaire à un coup de poignard au niveau du muscle. Tout mouvement devient alors impossible pour le sportif qui se voit dans l’obligation de cesser immédiatement son activité. Parfois le claquement du muscle est audible.\nLorsqu’il y a une rupture musculo-tendineuse, on peut percevoir un creux au niveau de la rupture, et une boule à l’endroit où le muscle s’est rétracté. A noter qu’un arrachement osseux peut être associé. "),
      // Ajoutez d'autres widgets selon vos besoins pour le deuxième élément
    ],
    // Ajoutez des listes supplémentaires selon le nombre d'éléments dans _contenus
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
        title: Text('Les traumatismes musculaires'),
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
            Column(
              children:[Text(
              'Les signés :',
              textAlign: TextAlign.left, // Alignement à gauche du texte
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
    ]),

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
                        child: ExpansionTile(
                          title: Text(_contenus[index]),
                          children: dropdownContents[index], // Utilisez la liste correspondante pour chaque élément
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
