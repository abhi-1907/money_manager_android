import 'package:flutter/material.dart';
import 'package:sample/screens/category/expense_category_list.dart';
import 'package:sample/screens/category/income_category_list.dart';

class ScreenCategory extends StatefulWidget{
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory> 
with SingleTickerProviderStateMixin{
  
 late TabController _tabController; 
  
  void initState(){
    _tabController= TabController(length: 2, vsync: this);
  }
  @override
  
  Widget build(BuildContext context){
    return Column(
      children:[
        TabBar(
          controller:_tabController,
          tabs: const [
         Tab(text: 'INCOME'),
         Tab(text: 'EXPENSE'),
         ]
         ),
         Expanded(
           child: TabBarView(
            controller:_tabController,
            children:const [
            IncomeCategoryList(),
            ExpenseCategoryList(),
           ]),
         )
      ]
      
    );
  }
}