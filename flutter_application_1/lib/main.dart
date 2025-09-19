import 'package:flutter/material.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Changed the app title
      title: 'Travel Destination Explorer',
      home: Scaffold(
        appBar: AppBar(
          // Updated AppBar title and color
          title: Text('Travel Destination Explorer', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueAccent, // A color that suits a travel theme
        ),
        body: SingleChildScrollView( // Added to prevent overflow if content grows
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // More engaging welcome text
                Text('Explore Your Next Adventure!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
               
                // Travel-related icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.flight_takeoff, color: Colors.blueAccent, size: 30),
                    Icon(Icons.beach_access, color: Colors.orangeAccent, size: 30),
                    Icon(Icons.location_city, color: Colors.green, size: 30),
                  ],
                ),
                SizedBox(height: 20),
               
                // Updated TextField for searching destinations
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter a destination...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Updated button text and style
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 16)
                  ),
                  icon: Icon(Icons.explore),
                  label: Text('Search Destinations'),
                ),
                SizedBox(height: 20),
               
                // A more relevant image for a travel app
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1503220317375-aaad61436b1b?q=80&w=2070&auto=format&fit=crop',
                    width: 400,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}