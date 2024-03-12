import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class DMap extends StatefulWidget {
  const DMap({Key? key}) : super(key: key);

  @override
  State<DMap> createState() {
    return _DMapState();
  }
}

class _DMapState extends State<DMap> {
  // List Screens = [
  //   DMap(),
  //   DAllR(),
  // ];
  int _selectedIndex = 0;

  TextEditingController textController = TextEditingController();

  TextEditingController textController1 = TextEditingController();

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
        index: _selectedIndex,
        backgroundColor: const Color(
          0xffdfe3df,
        ),
        height: 60,
        color: const Color(
          0xcc9fd89e,
        ),
        animationDuration: const Duration(milliseconds: 500),

        onTap: (index){
          setState(() {
            if(index == 1) {
              _selectedIndex = index;
              Navigator.pushNamed(context, 'DAllR');
            }
          });
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
                    left: 25,
                    top: 25,
                    width: screenWidth * 0.15 * 0.5,
                    height: (screenWidth * 0.15 * 0.5) * 1.8,
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
                                  labelText: ' Number of people that can be accepted',
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .05, 0, screenHeight * .03),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, 'WaitingD');
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
                                    Navigator.pushNamed(context, 'DChat');
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
