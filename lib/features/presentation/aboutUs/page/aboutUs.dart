import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../generated/l10n.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0XFFE3E1D2),
      child:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/icon/cifr.png'),
              ),
              SizedBox(height: 20),
              Text(
                S.of(context).OurEnterprise,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Nous sommes une entreprise dédiée à fournir des solutions innovantes dans le domaine de [votre domaine d'activité]. Notre mission est d'offrir des produits et services de haute qualité qui répondent aux besoins de nos clients. Grâce à notre équipe expérimentée et passionnée, nous nous efforçons d'atteindre l'excellence dans tout ce que nous entreprenons.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Image.asset(
                  'assets/icon/aboutus.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Our location",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20),
              MapScreen(),

              SizedBox(height: 20),
              Text(
                S.of(context).ContactUs,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.email,color: Colors.yellow,),
                title: Text('contact@example.com',style: TextStyle(color: Colors.black),),
              ),
              ListTile(
                leading: Icon(Icons.phone,color: Colors.green,),
                title: Text('+1234567890',style: TextStyle(color: Colors.black)),
              ),
              ListTile(
                leading: Icon(Icons.location_on,color: Colors.red,),
                title: Text('123 Street, City, Country',style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _controller;
  final LatLng _center = const LatLng(36.794992, 10.0608756); // Coordonnées de Tunis
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('Tunis'),
          position: _center,
          infoWindow: InfoWindow(
            title: 'Tunis',
            snippet: 'Capitale de la Tunisie',
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12.0,
        ),
        markers: _markers,
      ),
    );
  }
}
