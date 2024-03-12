
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PAllR extends StatefulWidget {
  const PAllR({Key? key}) : super(key: key);

  @override
  State<PAllR> createState() {
    return _PAllRState();
  }
}

class _PAllRState extends State<PAllR> {
  TextEditingController textController = TextEditingController();

  TextEditingController textController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    List<String> dates = ['20.03.22', '16.10.23'];
    List<int> orderNumber = [1, 2];
    List<double> price = [34.20, 51.90];
    List<String> startLoc = ['Tel aviv', 'Ashdod'];
    List<String> endLoc = ['Holon', 'Bat yam'];

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(
        0xffdfe3df,
      ),

      appBar: AppBar(
        title: const Text('All past rides'),
        titleTextStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, ),
        backgroundColor: const Color(
          0xcc9fd89e,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(
          0xffdfe3df,
        ),
        height: 70,
        color: const Color(
          0xcc9fd89e,
        ),
        animationDuration: const Duration(milliseconds: 500),

        onTap: (index){

          if(index == 1) {
            Navigator.pushNamed(context, 'PMap');
          }

        },
        items: const [
          Icon(Icons.align_horizontal_left, size: 30, color: Colors.black87,),
          Icon(Icons.location_on_sharp, size: 30, color: Colors.black87,),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(screenWidth * .1, 20, screenWidth * .1, 0),

        child: ListView.builder(
          itemCount: dates.length,
          itemBuilder: (context, index){
            return Card(
              child:ListTile(
                title: Text(dates[index]),
                leading: const Icon(
                  Icons.archive_outlined,
                  color: Color(
                    0xcc88b988,
                  ),
                  size: 25,
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black26,
                  size: 15,
                ),
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.black87,
                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xcc88b988),),),
                        ),
                      ],
                      title: Text(dates[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
                      contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                      content: Text(
                          ' Order number:\t\t\t\t${orderNumber[index]}\n\n'
                              ' Price:\t\t\t\t${price[index]}\n\n'
                              ' Start location:\t\t\t\t${startLoc[index]}\n\n'
                              ' End location:\t\t\t\t${endLoc[index]}\n\n',
                          textAlign: TextAlign.start, style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  );
                },
              ),
            );
          },
        ),

      ),
    );

  }
}
