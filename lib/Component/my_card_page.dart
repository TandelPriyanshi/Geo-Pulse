import 'package:flutter/material.dart';
import 'package:geopulse/Component/my_card.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final List<Map<String, dynamic>> cardOptions = [
    {
      "title": "Check In",
      "icon": Icons.login,
    },
    {
      "title": "Check Out",
      "icon": Icons.logout,
    },
    {
      "title": "Today's Attendance",
      "icon": Icons.today, 
    },
    {
      "title": "Attendance Record",
      "icon": Icons.history,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Home Page',
          style: GoogleFonts.poppins(
            color: Theme.of(context).colorScheme.inversePrimary,
          )
          // style: TextStyle(
          // ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.8,
          ),
          itemCount: cardOptions.length,
          itemBuilder: (context, index) {
            final option = cardOptions[index];
            return MyCard(
              title: option["title"]!,
              icon: option["icon"]!,
            );
          },
        ),
      ),
    );
  }
}