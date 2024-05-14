import 'package:flutter/material.dart';
import 'custom ui stuff/List.dart'; // Make sure this import is correct

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'My Profile',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w700 ,
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/8c00/72d9/466124ffa92744f51bb1462c3d83b033?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=M6Sbb2zSBsIXqAfYqbTMyOvx3DAd51LUoror5Q5VKzmztb3lNhZ36e~q3Gcpyd6-peN6DE2709l33vHCGjmw9iKw3zOGUR6Q-Zk5EUAD5~PPOEnwZ9uA~sH6l0xGmcBYKpezAEMVP3g0pmBt3e2lUK4P-SHxIg0Jnitx57WLdFZxr8niRMZCkZIjq4qdmzWMuTzHp6rwJPZ3fVV7RaW5r3AsJaSXAfB~SEnq996fO8cpv1txEpIbodE6WsQPvqXvVLWEriMUkEgc7rZErU6y85xSXsMSPXvXfXB-vJ4iadHyxiTPEQp18CY2MphU8-G9jgTFSeKPzt1c4tDns3wkug__'),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                children: [
              ListTile(
              title: Text('NAME',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  height: 17.07 / 20,
                  color: Color(0xFF6B6B6B),
                ),
              ),
              subtitle: Text(
                'Michonne',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  fontSize: 28,
                  color: Color(0xFF000000),
                ),
              ),
            ),
                  ListTile(
                    title: Text('ACCOUNT',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        height: 17.07 / 20,
                        color: Color(0xFF6B6B6B),
                      ),
                    ),
                    subtitle: Text(
                      '10',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        fontSize: 28,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20), // Add padding only on the top side
                    child: CustomListTile(
                      titleText: 'Personal Details',
                      onTap: () {
                        // Add navigation logic to personal details page
                      },
                      leadingIcon: Icons.account_circle, // Pass the desired icon here
                    ),
                  ),
                  CustomListTile(
                    titleText: 'My Card',
                    onTap: () {
                      // Add navigation logic to my card page
                    },
                    leadingIcon: Icons.credit_card, // Pass the desired icon here
                  ),
                  CustomListTile(
                    titleText: 'My Orders',
                    onTap: () {
                      // Add navigation logic to my orders page
                    },
                    leadingIcon: Icons.shopping_bag_outlined, // Pass the desired icon here
                  ),
                  CustomListTile(
                    titleText: 'Settings',
                    onTap: () {
                      // Add navigation logic to settings page
                    },
                    leadingIcon: Icons.settings, // Pass the desired icon here
                  ),
                  CustomListTile(
                    titleText: 'FAQs',
                    onTap: () {
                      // Add navigation logic to FAQs page
                    },
                    leadingIcon: Icons.grid_view_outlined, // Pass the desired icon here
                  ),
                  CustomListTile(
                    titleText: 'Privacy Policy',
                    onTap: () {
                      // Add navigation logic to privacy policy page
                    },
                    leadingIcon: Icons.flag_rounded, // Pass the desired icon here
                  ),
                  CustomListTile(
                    titleText: 'Terms and Conditions',
                    onTap: () {
                      // Add navigation logic to terms and conditions page
                    },
                    leadingIcon: Icons.stop_circle_outlined, // Pass the desired icon here
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add logic for floating action button press
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
