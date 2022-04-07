import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "images/food.jpg",
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: CircleAvatar(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 15,
                ),
                radius: 15,
                backgroundColor: Colors.white,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "From farm to fork, we serve you mouth watering delicacies.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFF2EB886),
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
