import 'package:doctorappointment/User_module/services/auth.dart';
import 'package:doctorappointment/User_module/widget/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/user_model.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

late String email;
String name='default';
late String password;

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/bg.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.33,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Email',
                          style: TextStyle(fontSize: 14,color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextFormField(
                          controller: EmailController,
                          decoration: InputDecoration(
                            hintText: 'Enter your Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(80.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.person_outlined,
                              color: Colors.black,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter your Email';
                            }
                            return null;
                          }),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Password',
                          style: TextStyle(fontSize: 14,color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(80.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.password,
                              color: Colors.black,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter your password';
                            }
                            return null;
                          }),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: () async {
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Logged in')),
                      );
                      await Provider.of<AuthService>(context, listen: false)
                          .signIn(EmailController.text, passwordController.text);
                      if (User != null) {
                        Navigator.pushNamed(context, '/home');
                      };
                    }
                    setState(() {
                      email=EmailController.text;
                      password=passwordController.text;
                    });
                    print(EmailController.text);
                    print(passwordController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Row(
                      children: const [
                        Text('New Here?',style: TextStyle(fontSize: 14,color: Colors.black)),
                        Text(' Register',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    onPressed:(){
                      Navigator.pushNamed(context, '/signup');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
