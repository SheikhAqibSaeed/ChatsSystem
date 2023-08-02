import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {

  int SelectedIndex = 0;
  final List<String> categories = ["Messages", "Online", "Groups", "Requests"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              setState(() {
                SelectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30,
            ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == SelectedIndex? Colors.white : Colors.white60,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
          }),
    );
  }
}
