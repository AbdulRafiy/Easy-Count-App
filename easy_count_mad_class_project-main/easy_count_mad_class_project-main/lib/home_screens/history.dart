// import 'package:easy_count/demo.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget{
  const History({super.key});

  @override
  AppState createState() => AppState();

}
class AppState extends State <History>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: ListView.builder(

          itemCount: 10,
          itemBuilder: (context,index){
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Colors.blueGrey,width: 2.0),
              ),
              child: ListTile(
                title: const Text('Team 1 vs Team2'),
                subtitle: const Text('team 1 won by 7 wickets'),
                leading: const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  child: Text('1'),
                ),
                trailing: IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text('Confirm Deletion'),
                      //content:  const Text('Are you sure to delete'),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: const Text('Go Back')),
                        ElevatedButton(onPressed: (){
                          // Code of deletion of that record
                        }, child: const Text('Delete'))
                      ],
                    );
                  });
                },icon: const Icon(Icons.delete),),
                onTap: (){
                  Navigator.pushNamed(context, '/summaryScreen');
                },
              ),
            );
          }),


    );
  }

}