import 'package:ambica_classes/2/org/screens/second_controller.dart';
import 'package:ambica_classes/2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String orgCode;

  SecondScreen({Key? key, required this.orgCode}) : super(key: key);

  SecondController second = SecondController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              TextField(
                controller: second.number,
                decoration: InputDecoration(
                  hintText: 'Mobile number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                name: 'Find Number',
                onPressed: () {
                  print('Your code is : $orgCode');
                  second.findMobileNumber(context, orgCode);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
