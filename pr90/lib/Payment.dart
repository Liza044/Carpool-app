import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

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

                  Positioned(
                    top: screenHeight * .27,
                    left: screenWidth * .1 * .15,
                    height: 300,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, screenHeight * .05, 0, 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'PChat');
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
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [

                            ///////////// The body

                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Payment',
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
                              padding: const EdgeInsets.all(20),
                              child:Material(
                                elevation: 8,
                                borderRadius: BorderRadius.circular(20),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: InkWell(
                                  onTap: (){
                                    launch('https://www.mastercard.us/en-us.html');
                                  },
                                  child: Ink.image(
                                    image: AssetImage('assets/mc.png'),
                                    height: 120,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),

                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(20),
                              child:Material(
                                elevation: 8,
                                borderRadius: BorderRadius.circular(20),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: InkWell(
                                  onTap: (){
                                    launch('https://www.visa.co.il/');
                                  },
                                  child: Ink.image(
                                    image: AssetImage('assets/visa.png',),
                                    height: 120,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),

                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.all(10),
                              child:Material(
                                elevation: 8,
                                borderRadius: BorderRadius.circular(20),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: InkWell(
                                  onTap: (){
                                    launch('https://www.paypal.com/il/home');
                                  },
                                  child: Ink.image(
                                    image: AssetImage('assets/pp.png',),
                                    height: 120,
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),

                                ),
                              ),
                            ),



                            Padding(
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .05, 0, 0),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, 'PMap');
                                  },
                                  child: Container(
                                    width: screenWidth * .5,
                                    height: screenHeight * .1,
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
                                      child: Text('Finish ride',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Alata',
                                          fontSize: 30,
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