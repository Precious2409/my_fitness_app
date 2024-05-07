import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_fitness_app/profile/profile_avatar.dart';
import 'package:my_fitness_app/profile/tiler.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      tileColor: Colors.white,
                      leading: ProfileAvatar(rad: 35.r,),
                      title: Column(
                        children: [
                          Text(
                              "Hi Sarah",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            "Today, 4 Aug",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                          Icons.notifications_outlined,
                        size: 26,
                      ),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                        fontSize: 20.sp
                      ),
                    ),

                    SizedBox(height: 5,),

                    Tiler(leading: Icons.edit, title: "Edit Profile"),
                    SizedBox(height: 5,),
                    Tiler(leading: Icons.notifications_outlined, title: "Notifications"),

                    SizedBox(height: 10,),
                    Text(
                      "Statistics",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp
                      ),
                    ),

                    SizedBox(height: 5,),
                    Tiler(leading: Icons.edit_note_outlined, title: "Edit Plan"),
                    SizedBox(height: 5,),
                    Tiler(leading: Icons.signal_cellular_alt, title: "My Progress"),

                    SizedBox(height: 10,),
                    Text(
                      "My Scan",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp
                      ),
                    ),

                    SizedBox(height: 5,),
                    Tiler(leading: Icons.qr_code, title: "My Scan"),

                    SizedBox(height: 10,),
                    Text(
                      "Help",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp
                      ),
                    ),

                    SizedBox(height: 5,),
                    Tiler(leading: Icons.settings, title: "Settings"),
                    Tiler(leading: Icons.comment, title: "Help and reset"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
