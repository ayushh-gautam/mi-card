import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/ayush.jpg'),
            ),
            const Text(
              'Ayush Gautam',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.teal.shade100,
                fontFamily: 'Source Sans Pro',
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
              ),
            ),

            /*--------------------  Divider  ----------------*/
            SizedBox(
              height: 10,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                    size: 30,
                  ),
                  title: Text(
                    '+977 981 133 5824',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      color: Colors.teal.shade400,
                    ),
                  ),
                )),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal[900],
                  size: 30,
                ),
                title: Text(
                  'ayushgautam896@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                    color: Colors.teal.shade400,
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
