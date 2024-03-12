import 'package:flutter/material.dart';

class DSignUp extends StatefulWidget {
  const DSignUp({Key? key}) : super(key: key);

  @override
  State<DSignUp> createState() {
    return _DSignUpState();
  }
}

class _DSignUpState extends State<DSignUp> {
  TextEditingController textController = TextEditingController();

  TextEditingController textController1 = TextEditingController();

  TextEditingController textController2 = TextEditingController();

  TextEditingController textController3 = TextEditingController();

  TextEditingController textController4 = TextEditingController();

  TextEditingController textController6 = TextEditingController();

  TextEditingController textController5 = TextEditingController();

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
                          Navigator.pushNamed(context, 'StartPage');
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

                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 25, 0, screenHeight * .05),
                              child: const Text(
                                'Sign up as a \ndriver',
                                style: TextStyle(
                                  fontFamily: 'Alata',
                                  fontSize: 40,
                                  letterSpacing: -1,
                                  decoration: TextDecoration.none,
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
                                  labelText: ' User name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),


                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' Password',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' Confirm password',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' Id number',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' First name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' Last name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' Country',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' Age',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' Price per km',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: ' Car\'s number',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),



                            Container(
                              width: 272,
                              height: 74,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    width: 272,
                                    height: 74,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Driving License’s photo:',
                                          style: TextStyle(
                                            fontFamily: 'Alata',
                                            fontSize: 18,
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.fromLTRB(screenWidth * .03, 0, 0, 0),
                                          child: IconButton(
                                            onPressed: () {
                                              // Navigator.pushNamed(context, 'DSignUp');
                                            },
                                            icon: const Icon(Icons.add),
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: 272,
                              height: 74,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    width: 272,
                                    height: 74,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Driving License’s photo:',
                                          style: TextStyle(
                                            fontFamily: 'Alata',
                                            fontSize: 18,
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.fromLTRB(screenWidth * .03, 0, 0, 0),
                                          child: IconButton(
                                            onPressed: () {
                                              // Navigator.pushNamed(context, 'DSignUp');
                                            },
                                            icon: const Icon(Icons.add),
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: 272,
                              height: 74,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    width: 272,
                                    height: 74,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Driving License’s photo:',
                                          style: TextStyle(
                                            fontFamily: 'Alata',
                                            fontSize: 18,
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.fromLTRB(screenWidth * .03, 0, 0, 0),
                                          child: IconButton(
                                            onPressed: () {
                                              // Navigator.pushNamed(context, 'DSignUp');
                                            },
                                            icon: const Icon(Icons.add),
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .05, 0, 0),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, 'DMap');
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
                                      child: Text('Sign up',
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
                              padding: EdgeInsets.fromLTRB(screenWidth * .25, screenHeight * .04, 0, screenHeight * .02),
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
