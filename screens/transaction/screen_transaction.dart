import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget{
  const ScreenTransaction({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context){
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemBuilder: (ctx,index){
        return const Card(
          elevation:0,
          child: ListTile(
            tileColor: Color.fromARGB(255, 232, 179, 247),
            leading:CircleAvatar(
              radius: 50,
              backgroundColor: Color.fromARGB(255, 255, 139, 178),
              child: Text('12\n dec',
              textAlign: TextAlign.center,
              )
              ),
            title: Text('Rs 10000'),
            subtitle: Text('Travel'),
          ),
        );
      }, 
      separatorBuilder: (ctx,index){
        return SizedBox(height:10);
      }, 
      itemCount: 10,
      );

  }

}