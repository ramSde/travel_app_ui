import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const TravelCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: 250,
              height: 400,
              child: Stack(
                children: [
                  Image.asset(
                    imagePath,
                    width: 250,
                    height: 400,
                    fit: BoxFit.cover,
                  ),

                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container( 
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration( 
                      color: Colors.amber,
borderRadius: BorderRadius.circular(5)     
               ),
               child: Icon(Icons.arrow_right_alt),
                  ))
                ],
              ),
            ),
          ),
             Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Georgia',
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.orangeAccent,size: 25,),
                          Text(
                            subtitle,
                            style: TextStyle(
                              fontFamily: 'Georgia',
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
               
        ],
      ),
    );
  }
}
