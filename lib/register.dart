import 'package:db_test/app_database.dart';
import 'package:db_test/db_operations.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "Create you new account",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
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
                    height: MediaQuery.of(context).size.height * 0.75,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "First Name",
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
                            hintText: "Last Name",
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
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
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
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
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
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "By signing in you agree to  our ",
                              style: TextStyle(
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Terms of use")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "and ",
                              style: TextStyle(
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("privacy policy."),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: Colors.green[900],
                            ),
                            onPressed: () async {
                              WidgetsFlutterBinding.ensureInitialized();

                              final db = await AppDatabase().initDb();
                              DBOperations(db).insertRecord(
                                  emailController.text,
                                  firstNameController.text,
                                  lastNameController.text,
                                  passwordController.text);

                              Navigator.pushNamed(context, '/dashboard');
                            },
                            child: Text(
                              "Sign Up ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, "/login");
                              },
                              child: Text("Login"),
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
