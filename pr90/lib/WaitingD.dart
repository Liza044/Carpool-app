import 'package:flutter/material.dart';

class WaitingD extends StatelessWidget {
  const WaitingD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> names = ['A', 'B'];
    List<int> numOfPeople = [2, 4];
    Icon icon1 = Icon(Icons.access_time);

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(
        0xffdfe3df,
      ),

      appBar: AppBar(
        title: const Text('Passengers'),
        titleTextStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, ),
        backgroundColor: const Color(
          0xcc9fd89e,
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(screenWidth * .1, 20, screenWidth * .1, 0),

        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index){
            return Card(
              child:ListTile(
                title: Text(names[index]),
                leading: const Icon(
                  Icons.people_alt_sharp,
                  color: Color(
                    0xcc88b988,
                  ),
                  size: 25,
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
                          child: const Text('Yes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xcc88b988),),),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                            // icon1 = Icon(Icons.gpp_good_outlined);
                          },
                          child: const Text('No', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xcc88b988),),),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xcc88b988),),),
                        ),
                      ],

                      title: const Text('Connect you with this passenger?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
                      contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                      content: Text(
                          ' Name of the passenger:\t\t\t\t${names[index]}\n\n'
                              ' Number of people:\t\t\t\t${numOfPeople[index]}\n\n',
                          textAlign: TextAlign.start, style: const TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  );
                },
                trailing: icon1,
              ),
            );
          },
        ),

      ),

    );
  }
}
