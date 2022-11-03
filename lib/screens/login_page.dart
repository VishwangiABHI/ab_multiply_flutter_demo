import 'package:ab_multiply_demo/models/login_request.dart';
import 'package:ab_multiply_demo/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ab_multiply_demo/services/api_services.dart';
import '../utilities/constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textControllerUsername = TextEditingController();
  TextEditingController textControllerPassword = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: 190.0,
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Image.asset(
                    'images/img.png',
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: Colors.red.shade900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Already have an account with us? Login through your account credentials.',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot username!',
                  style: TextStyle(color: Colors.redAccent[200]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: textControllerUsername,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    labelText: 'Username',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password!',
                  style: TextStyle(color: Colors.redAccent[200]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: textControllerPassword,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: const [
                        Color.fromRGBO(180, 0, 0, 1),
                        Color.fromRGBO(176, 0, 0, .9),
                      ])),
                  child: Center(
                    child: isLoading
                        ? Center(
                            child: kSpinkit,
                          )
                        : TextButton(
                            onPressed: () async {
                              setState(() {
                                isLoading = true;
                              });
                              print(await ApiServices().getConfig());
                              dynamic loginResponse = await ApiServices()
                                  .loginPost(LoginRequestModel(
                                      emailId: textControllerUsername.text,
                                      password:
                                          'e034db55b346a08b8debcd4c9a9b5ec39e8ae89a',
                                      deviceType: 'android',
                                      device: 'android',
                                      fcmtoken:
                                          'crvcjlJUQuKIvuvOvLD2HO:APA91bFhY54VUmzOcAf12l6Ia_sc779WCjgmseLB2PnW4DBHViGSG3YtUN-uCk01LaQaXga6bHYANozsL5peknYgZ_yQWuwSEtfwU_BzehXJU6d2Pon3l8TrqWD2pgLO9bZ5s7Jeq3rr',
                                      osVersion: '7.5',
                                      IsRemember: true,
                                      IsFingerPrintLogin: true));
                              setState(() {
                                isLoading = false;
                              });
                              Alert(
                                  context: context,
                                  title: "Login Successful!",
                                  desc: "Welcome to AB Multiply app.",
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "GO AHEAD",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return HomeScreen();
                                            },
                                          ),
                                        );
                                      },
                                      color: Color.fromRGBO(0, 179, 134, 1.0),
                                      radius: BorderRadius.circular(0.0),
                                    ),
                                  ]).show();
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
