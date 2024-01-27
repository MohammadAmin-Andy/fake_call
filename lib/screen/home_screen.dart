import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppbar(),
      body: //SafeArea(child:
          Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/home_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              _getPhoto(),
              SizedBox(height: 80),
              _getStatus(),
              SizedBox(height: 15),
              _getDonation(),
            ],
          ),
        ),
      ),
      //),
    );
  }
}

PreferredSizeWidget _getAppbar() {
  return AppBar(
    centerTitle: true,
    elevation: 10,
    backgroundColor: Colors.blue[700],
    title: Text(
      'Fake Call',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 35,
      ),
    ),
  );
}

Widget _getStatus() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[500],
              ),
              onPressed: () {},
              child: Text(
                'Silent',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[500],
              ),
              onPressed: () {},
              child: Text(
                'Ring',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[500],
              ),
              onPressed: () {},
              child: Text(
                'Vibrate',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[500],
              ),
              onPressed: () {},
              child: Text(
                'Ring and Vibrate',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _getPhoto() {
  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset('images/call.jpg'),
    ),
  );
}

Widget _getDonation() {
  return Row(
    children: [
      Expanded(
        child: Container(
          child: TextButton(
            onPressed: () {
              Uri uri = Uri.parse('https://reymit.ir/mohammadamin-andy');
              launchUrl(uri);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/donation.png',
                  height: 55,
                ),
                SizedBox(width: 10),
                Text(
                  'donate me :))',
                  style: TextStyle(
                      color: Colors.amber[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
