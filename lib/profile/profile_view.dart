import 'package:flutter/material.dart';
import 'package:my_fitness_app/profile/profile_avatar.dart';
import 'package:my_fitness_app/profile/tiler.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.white,
              leading: ProfileAvatar(),
              title: Text("Hi Sarah"),
              trailing: Icon(Icons.notifications),
            ),
            Text(
              "Account",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 5,),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Tiler(leading: Icons.edit, title: "Edit Profile"),
                    Tiler(leading: Icons.notifications, title: "Notifications"),
                  ],
                ),
              ],
            ),

            Text(
              "Statistics",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 5,),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Tiler(leading: Icons.note_add, title: "Edit Plan"),
                    Tiler(leading: Icons.signal_cellular_alt, title: "My Progress"),
                  ],
                ),
              ],
            ),

            Text(
              "My Scan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 5,),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Tiler(leading: Icons.qr_code, title: "My Scan"),
                  ],
                ),
              ],
            ),

            Text(
              "Help",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 5,),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Tiler(leading: Icons.settings, title: "Settings"),
                    Tiler(leading: Icons.comment, title: "Help"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
