import 'package:flutter/material.dart';

class DriversList extends StatelessWidget {

  const DriversList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> names = ['A', 'B'];
    List<double> pricePerKm = [3.2, 1.9];
    List<String> driversPhoto = ['photo1', 'photo2'];
    List<String> carsPhoto = ['photo1', 'photo2'];



    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: const Color(
        0xffdfe3df,
      ),

      appBar: AppBar(
        title: const Text('Drivers'),
        titleTextStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black,),
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
                          child: const Text('Choose', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xcc88b988),),),
                        ),

                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xcc88b988),),),
                        ),
                      ],

                      title: const Text('Driver', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
                      contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                      content: Text(
                          ' Name of the driver:\t\t\t\t${names[index]}\n\n'
                              ' Price per km:\t\t\t\t${pricePerKm[index]}\n\n'
                              ' Driver\'s photo:\t\t\t\t${driversPhoto[index]}\n\n'
                              ' Car\'s photo:\t\t\t\t${carsPhoto[index]}\n\n',
                          textAlign: TextAlign.start, style: const TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  );
                },
                // trailing: icon1,
              ),
            );
          },
        ),

      ),
    );


  }
}
