import 'package:flutter/material.dart';
import 'package:ui_practices_flutter_travel_ui/widgets/custom_app_bar.dart';
import 'package:ui_practices_flutter_travel_ui/widgets/travel_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // Background Image
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2, // Adjusted height
                child: Image.asset(
                  "assets/bg.avif",
                  fit: BoxFit.cover,
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Custom AppBar
                    TourAppBar(),
                    const SizedBox(height: 60),
                    // Header Text
                    const Text(
                      "Explore\nthe world",
                      style: TextStyle(
                        fontFamily: 'Georgia',
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Row for Tabs and Travel Cards
                    Row(
                      children: [
                        // Vertical Rotated Tabs
                        RotatedBox(
                          quarterTurns: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                                SizedBox(width: 120),
                              Text(
                                "Hotels",
                                style: TextStyle(
                                  fontFamily: 'Georgia',
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(width: 60), // Changed to width for Row
                              Text(
                                "Flights",
                                style: TextStyle(
                                  fontFamily: 'Georgia',
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(width: 60),
                              Text(
                                "Packages",
                                style: TextStyle(
                                  fontFamily: 'Georgia',
                                  color: Colors.orangeAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.orange,
                                  decorationThickness: 1
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        // Expanded ListView for Travel Cards
                        Expanded(
                          child: SizedBox(
                            height: 500, // Fixed height for ListView
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                TravelCard(
                                  imagePath: "assets/mountains.jpg",
                                  title: "Mountain",
                                  subtitle: "Lorem ipsum",
                                ),
                                TravelCard(
                                  imagePath: "assets/beach.jpg",
                                  title: "Beach",
                                  subtitle: "Lorem ipsum",
                                ),
                                TravelCard(
                                  imagePath: "assets/city.jpg",
                                  title: "City",
                                  subtitle: "Lorem ipsum",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Placeholder for the Cards Section
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// TravelCard Widget for Content Cards
