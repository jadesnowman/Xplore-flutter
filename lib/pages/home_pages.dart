import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Profile Picture',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image(
              image: AssetImage('assets/images/primary.png'),
              height: 140,
            ),
            SizedBox(
              height: 16,
            ),
            Text('Anne Margaritha',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            SizedBox(
              height: 4,
            ),
            Text('UX Designer',
                style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      ),
    ));
  }
}
