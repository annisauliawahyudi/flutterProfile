import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import for CupertinoIcons

class DetailPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String detail;
  final IconData iconData;

  const DetailPage({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.detail,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/your_image.png'), // Path to your background image
            fit: BoxFit.cover, // Makes the image cover the entire container
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // Column will only take as much height as its children
            children: [
              SizedBox(
                width: 350, // Width of the first card
                child: Card(
                  elevation: 8, // Shadow effect
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(iconData, size: 50, color: const Color.fromARGB(255, 0, 0, 0)),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                subtitle,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          detail,
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
