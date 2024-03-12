import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(
        0xffdfe3df,
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
                              padding: EdgeInsets.fromLTRB(0, 20, 0, screenHeight * .05),
                              child: const Text(
                                'Welcome',
                                style: TextStyle(
                                  fontFamily: 'Alata',
                                  fontSize: 70,
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
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .1, 0, screenHeight * .03),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, 'PSignUp');
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 0,
                                            offset: Offset(8, 8),
                                          ),

                                          BoxShadow(
                                            color: Color(
                                              0xcc9fd89e,
                                            ),
                                            spreadRadius: 2,
                                            blurRadius: 0,
                                            offset: Offset(-8, -8),
                                          ),

                                        ]
                                    ),
                                    child: const Center(
                                      child: Text('Sign up \nas a \npassenger',
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
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .03, 0, screenHeight * .1),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, 'DSignUp');
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 0,
                                            offset: Offset(8, 8),
                                          ),

                                          BoxShadow(
                                            color: Color(
                                              0xcc9fd89e,
                                            ),
                                            spreadRadius: 2,
                                            blurRadius: 0,
                                            offset: Offset(-8, -8),
                                          ),

                                        ]
                                    ),
                                    child: const Center(
                                      child: Text('Sign up \nas a \ndriver',
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
                              padding: EdgeInsets.fromLTRB(screenWidth / 4, screenHeight / 40, 0, 0),
                              child: Row(
                                children:[
                                  const Text(
                                    'Already have a user?',
                                    style: TextStyle(
                                      fontFamily: 'Armata',
                                      letterSpacing: -1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),


                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'LogIn');
                                    },
                                    child: const Text(
                                      'Log in',
                                      style: TextStyle(

                                        color: Color(
                                          0xff75b075,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
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
