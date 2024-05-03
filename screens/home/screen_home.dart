import 'package:flutter/material.dart';
import 'package:sample/screens/category/screen_category.dart';
import 'package:sample/screens/home/widgets/bottom_navigation.dart';
import 'package:sample/screens/transaction/screen_transaction.dart';

class ScreenHome extends StatelessWidget{
  const ScreenHome({Key? key}) : super(key: key);
 
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = const [
    ScreenTransaction(),
    ScreenCategory(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 251, 251),
      appBar: AppBar(
        title: Text('Money Manager'),
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder:(BuildContext context, int updatedIndex,_)
          {
             return _pages[updatedIndex];
          }
          )
        ),
        floatingActionButton : FloatingActionButton(
      onPressed: (){
        print('add');
      },
      child:Icon(Icons.add)
      ),
    );
    
  }

}