import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'API.dart';
import 'dart:convert';

class PSignUp extends StatefulWidget {
  const PSignUp({Key? key}) : super(key: key);

  @override
  State<PSignUp> createState() {
    return _PSignUpState();
  }
}

class _PSignUpState extends State<PSignUp> {
  TextEditingController textController = TextEditingController();
  String url = '';
  var data;
  String userName = '';
  String password = '';
  String cPassword = '';
  int id = 0;
  String fName = '';
  String lName = '';
  int age = 0;
  String country = '';

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
                                'Sign up as a \npassenger',
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
                                onChanged: (value){
                                  userName = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: ' User name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),


                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                onChanged: (value){
                                  password = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: ' Password',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                onChanged: (value){
                                  cPassword = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: ' Confirm password',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                onChanged: (value){
                                  id = value as int;
                                },
                                decoration: const InputDecoration(
                                  labelText: ' Id number',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                onChanged: (value){
                                  fName = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: ' First name',
                                  border : OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                onChanged: (value){
                                  lName = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: ' Last name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                onChanged: (value){
                                  age = value as int;
                                },
                                decoration: const InputDecoration(
                                  labelText: ' Age',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            // Padding(
                            //   padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                            // child: CupertinoButton.filled(
                            //   child: Text('Age = $_selectedAge'),
                            //   onPressed: () => showCupertinoModalPopup(
                            //       context: context,
                            //       builder: (_) => SizedBox(
                            //         width: 200,
                            //         height: 250,
                            //         child: CupertinoPicker(
                            //           backgroundColor: Colors.white,
                            //           itemExtent: 30,
                            //           scrollController: FixedExtentScrollController(
                            //             initialItem: 1,
                            //           ),
                            //           children: [
                            //             for(int i = 1; i < 10; i++)
                            //               Text('$i'),
                            //
                            //           ],
                            //           onSelectedItemChanged: (int age) {
                            //             setState(() {
                            //               _selectedAge = age;
                            //             });
                            //           },
                            //         ),
                            //       ),
                            //   ),
                            // ),

                            //  CupertinoPicker(
                            //   itemExtent: 70,
                            //   children: const [
                            //     // Text('0'),
                            //     Text('1'),
                            //     Text('2'),
                            //     Text('3'),
                            //   ],
                            //   onSelectedItemChanged: (index) {},
                            // ),

                            // ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                onChanged: (value){
                                  country = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: ' Country',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            Padding(
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .05, 0, 0),
                                child: TextButton(
                                  onPressed: () async{
                                    // Navigator.pushNamed(context, 'PMap');

                                      url = 'http://10.0.2.2:5000/api?q1=$userName&q2=$password&q3=$cPassword&q4=$id&q5=$fName&q6=$lName&q7=$age&q8=$country';
                                      data = await fetchdata(url);
                                      var decoded = jsonDecode(data);
                                      setState(() {
                                        // output = decoded['output'];
                                      });

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
