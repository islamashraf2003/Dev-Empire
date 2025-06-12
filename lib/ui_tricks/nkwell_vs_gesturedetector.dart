import 'package:flutter/material.dart';

class NkwellVsGesturedetector extends StatelessWidget {
  const NkwellVsGesturedetector({super.key});

  void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Center(
        child: Text(
          message,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xffB5153A),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      elevation: 8,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text(
          'InkWell vs GestureDetector',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                splashColor: Color(0xffB5153A).withOpacity(0.5),
                onTap: () => showSnackBar(context, "InkWell tapped"),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Icon(Icons.touch_app, size: 40, color: Color(0xffB5153A)),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Tap me (InkWell)\nWith ripple effect',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: GestureDetector(
                onTap: () => showSnackBar(context, "GestureDetector tapped"),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffFDE8EC),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.gesture, size: 40, color: Color(0xffB5153A)),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Tap me (GestureDetector)\nNo ripple effect',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
