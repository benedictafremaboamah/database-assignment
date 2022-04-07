import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
      backgroundColor: Colors.transparent,

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
                          "Welcome back",
                          style: TextStyle(
                            color: Color(0XFF2EB886),
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("Login to your account"),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email / Username",
                            hintStyle: TextStyle(
                              color: Colors.green[400],
                              fontWeight: FontWeight.w600,
                            ),
                            fillColor: Colors.green[50],
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.green[400],
                              fontWeight: FontWeight.w600,
                            ),
                            fillColor: Colors.green[50],
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.green[400],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.circle_sharp,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Remember me"),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Forgot password?"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: Colors.green[900],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/dashboard");
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, "/register");
                                Navigator.pushReplacementNamed(
                                    context, "/register");
                              },
                              child: Text("Sign up"),
                            ),
                          ],
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
