import 'package:flutter/material.dart';

class PChat extends StatefulWidget {
  const PChat({Key? key}) : super(key: key);

  @override
  State<PChat> createState() {
    return _DChat0State();
  }
}

class _DChat0State extends State<PChat> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black87,


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
                    width: screenWidth * .15,
                    color: const Color(
                      0xcc9fd89e,
                    ),
                  ),

                  Positioned(
                    left: screenWidth * .05,
                    top: 25,
                    width: screenWidth * .15 * .5,
                    height: (screenWidth * .15 * .5) * 1.8,
                    child: const Image(
                      image: AssetImage(
                        'assets/logo1.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),

                  Positioned(
                    top: screenHeight * .27,
                    left: screenWidth * .1 * .15,
                    height: 300,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, screenHeight * .05, 0, 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'PMap');
                        },
                        icon: const Icon(Icons.arrow_back_ios_outlined),
                        color: Colors.black87,
                        iconSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [

                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    // height: screenHeight * .12,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      // child: Container(
                      //   color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(screenWidth * .03, screenWidth * .01, screenWidth * .01, screenWidth * .01),
                            child: ClipOval(
                              child: Container(
                                width: screenWidth * .1,
                                height: screenWidth * .1,
                                color: const Color(
                                  0xcc9fd89e,
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                                    child: Text('A', textAlign: TextAlign.center, style: TextStyle(fontSize: screenWidth * .06),)
                                ),
                              ),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.fromLTRB(2, 0, 4, 1),
                            child: Text(
                              'Driver’s name',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 24,
                                fontFamily: 'Alata',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),

                          Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, 'Payment');
                                },
                                child: Container(
                                  width: screenWidth * .15,
                                  height: screenHeight * .05,
                                  decoration: BoxDecoration(
                                      color: Colors.black87,
                                      borderRadius: BorderRadius.circular(5),
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
                                    child: Text('Pay',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Alata',
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              )
                          ),

                        ],
                      ),
                    ),
                  ),
                  // ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [

                            ///////////// The body

                            Padding(
                              padding: EdgeInsets.fromLTRB(3, screenHeight * .77, 5, 0),
                              child: Row(
                                children:[
                                  Expanded(
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                                      child: Row(
                                        children: [

                                          IconButton(
                                            onPressed: (){},
                                            icon: const Icon(Icons.emoji_emotions, color: Colors.black87, size: 25),
                                          ),

                                          const Expanded(child: TextField(
                                            keyboardType: TextInputType.multiline,
                                            maxLines: null,
                                            decoration: InputDecoration(
                                                hintText: ' Type Something... ',
                                                hintStyle: TextStyle(color: Colors.black87),
                                                border: InputBorder.none),
                                          )),

                                          IconButton(
                                            onPressed: (){},
                                            icon: const Icon(Icons.image, color: Colors.black87, size: 25),
                                          ),

                                          IconButton(
                                            onPressed: (){},
                                            icon: const Icon(Icons.camera_alt_rounded, color: Colors.black87, size: 25),
                                          ),


                                        ],
                                      ),
                                    ),
                                  ),

                                  MaterialButton(
                                    onPressed: () {},
                                    minWidth: 0,
                                    padding: const EdgeInsets.only(top: 15, bottom: 15, right: 12, left: 15),
                                    shape: const CircleBorder(),
                                    color: const Color(
                                      0xcc9fd89e,
                                    ),
                                    child: const Icon(Icons.send, color: Colors.white, size: 25,),
                                  ),

                                ],
                              ),
                            ),

                            ///////////

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
