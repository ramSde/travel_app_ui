import 'package:flutter/material.dart';

class TourAppBar extends StatelessWidget {
  const TourAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
       [ 
        Icon(Icons.menu,size: 25,color: Colors.white,),
        Icon(Icons.search,size: 25,color: Colors.white,)

    ],
    );
  }
}