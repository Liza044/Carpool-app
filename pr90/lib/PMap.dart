import 'dart:async';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class PMap extends StatefulWidget {
  const PMap({Key? key}) : super(key: key);

  @override
  State<PMap> createState() {
    return _PMapState();
  }
}

class _PMapState extends State<PMap> {

  TextEditingController textController1 = TextEditingController();

  TextEditingController textController = TextEditingController();

  TextEditingController textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(
        0xffdfe3df,
      ),


      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(
          0xffdfe3df,
        ),
        height: 60,

        color: const Color(
          0xcc9fd89e,
        ),
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index){
          if(index == 1) {
            Navigator.pushNamed(context, 'PAllR');
          }

        },
        items: const [
          Icon(Icons.location_on_sharp, size: 30, color: Colors.black87,),
          Icon(Icons.align_horizontal_left, size: 30, color: Colors.black87,),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            // Left container & Logo

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  Container(
                    width: screenWidth * 0.15,
                    color: const Color(
                      0xcc9fd89e,
                    ),
                  ),

                  Positioned(
                    left: screenWidth * .045,
                    top: 25,
                    width: screenWidth * .15 * .6,
                    height: (screenWidth * .15 * .6) * 1.8,
                    child: const Image(
                      image: AssetImage(
                        'assets/logo1.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),

                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [

                            ///////////// The body

                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 25, 0, screenHeight * .05),
                              child: const Text(
                                'Map',
                                style: TextStyle(
                                  fontFamily: 'Alata',
                                  fontSize: 50,
                                  letterSpacing: -1,
                                  decoration: TextDecoration.none,
                                  height: 0,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(
                                        3,
                                        3,
                                      ),
                                      color: Color(
                                        0xb39fd89e,
                                      ),
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' From',
                                  prefixIcon: Icon(Icons.location_on),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' To',
                                  prefixIcon: Icon(Icons.location_on),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),


                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .1, screenHeight * .01, screenWidth * .1, 0),
                              child: TextFormField(
                                decoration:  const InputDecoration(
                                  labelText: ' Number of people',
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .05, 0, screenHeight * .03),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, 'DriversList');
                                  },
                                  child: Container(
                                    width: screenWidth * .3,
                                    height: screenHeight * .07,
                                    decoration: BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 0,
                                            offset: Offset(4, 4),
                                          ),

                                          BoxShadow(
                                            color: Color(
                                              0xcc9fd89e,
                                            ),
                                            spreadRadius: 2,
                                            blurRadius: 0,
                                            offset: Offset(-4, -4),
                                          ),

                                        ]
                                    ),
                                    child: const Center(
                                      child: Text('Next',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Alata',
                                          fontSize: 17,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                )
                            ),

                            Padding(
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .01, 0, screenHeight * .03),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, 'PChat');
                                  },
                                  child: Container(
                                    width: screenWidth * .3,
                                    height: screenHeight * .07,
                                    decoration: BoxDecoration(
                                        color: const Color(
                                          0xcc9fd89e,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 0,
                                            offset: Offset(1, 1),
                                          ),

                                          BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 2,
                                            blurRadius: 0,
                                            offset: Offset(-1, -1),
                                          ),

                                        ]
                                    ),
                                    child: const Center(
                                      child: Text('Chat',
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Alata',
                                          fontSize: 17,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                )
                            ),

                            Padding(
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .01, 0, screenHeight * .03),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, 'StartPage');
                                  },
                                  child: Container(
                                    width: screenWidth * .2,
                                    height: screenHeight * .06,
                                    decoration: BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 0,
                                            offset: Offset(2, 2),
                                          ),

                                          BoxShadow(
                                            color: Color(
                                              0xcc9fd89e,
                                            ),
                                            spreadRadius: 2,
                                            blurRadius: 0,
                                            offset: Offset(-2, -2),
                                          ),

                                        ]
                                    ),
                                    child: const Center(
                                      child: Text('Log out',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Alata',
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                )
                            ),

                            ////////////////

                          ],
                        );

                      },
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );

  }
}


// class PMap extends StatefulWidget {
//   const PMap({super.key});
//
//   @override
//   State<PMap> createState() => PMapState();
// }
//
// class PMapState extends State<PMap> {
//   final Completer<GoogleMapController> _controller =
//   Completer<GoogleMapController>();
//
//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
//
//   static const CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         mapType: MapType.hybrid,
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: const Text('To the lake!'),
//         icon: const Icon(Icons.directions_boat),
//       ),
//     );
//   }
//
//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }