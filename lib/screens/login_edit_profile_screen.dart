import 'package:ambica_classes/screens/login_profile_screen.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginEditProfileScreen extends StatelessWidget {
  const LoginEditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: tabColor,
      appBar: AppBar(
        title: Text('Profile Edit'),
        backgroundColor: tabColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, top: 10, left: 20, bottom: 7),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.camera_alt,
                        size: 30,
                      ),
                      Text('Photo')
                    ],
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Number',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Address Line 1',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Address Line 2',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Address Line 3',
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'City',
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Zip Code',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'State',
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Country',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.35,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: redColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Adjust the border radius as needed
                          ),
                        ),
                        onPressed: () => Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginProfileScreen(),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.close, size: 20),
                            Text("Cancel",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.35,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: tabColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Adjust the border radius as needed
                          ),
                        ),
                        onPressed: () => Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginProfileScreen(),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.add, size: 20),
                            Text("Save",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
