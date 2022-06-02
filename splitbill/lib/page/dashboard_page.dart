import 'package:flutter/material.dart';
import 'package:splitbill/theme.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343A40),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 65,
                ),
                Text('Hi Gede')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
