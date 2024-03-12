import 'package:flutter/material.dart';
import 'API.dart';
import 'dart:convert';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() {
    return _LogInState();
  }
}

class _LogInState extends State<LogIn> {
  TextEditingController textController = TextEditingController();
  String url = '';
  var data;
  String v1 = '';
  String v2 = '';

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    var passVsb = true;

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
                                'Log in',
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
                                onChanged: (value){
                                  v1 = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: ' User name',
                                  prefixIcon: Icon(Icons.account_circle_outlined),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),


                            Padding(
                              padding: EdgeInsets.fromLTRB(screenWidth * .05, screenHeight * .01, screenWidth * .05, screenHeight * .01),
                              child: TextFormField(
                                onChanged: (value){
                                  v2 = value;
                                },
                                obscureText: passVsb,
                                decoration: InputDecoration(
                                  labelText: ' Password',
                                  prefixIcon:  const Icon(Icons.lock_outline),
                                  border:  const OutlineInputBorder(),
                                  suffixIcon: IconButton(
                                    icon: passVsb ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                                    onPressed: (){
                                      setState(() {

                                        passVsb = !passVsb;
                                        print(passVsb);

                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),


                            Padding(
                                padding: EdgeInsets.fromLTRB(0, screenHeight * .05, 0, 0),
                                child: TextButton(
                                  onPressed: () async{
                                    url = 'http://10.0.2.2:5000/api?query1=$v1&query2=$v2';
                                    print(url);
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
                                      child: Text('Log in',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Alata',
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                )
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
