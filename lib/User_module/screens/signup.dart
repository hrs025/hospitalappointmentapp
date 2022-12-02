import 'package:doctorappointment/User_module/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:doctorappointment/User_module/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:doctorappointment/User_module/services/auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    // final List<String> options = ['Male', 'Female'];
    // String temp = 'Male';
    return Scaffold(
      body: Container(
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
              height: MediaQuery.of(context).size.height * 0.26,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TextFormField(
                    //     controller: nameController,
                    //     decoration: InputDecoration(
                    //       hintText: 'Name',
                    //       prefixIcon: Icon(
                    //         Icons.person_outlined,
                    //         color: Colors.black,
                    //       ),
                    //     ),
                    //     validator: (value) {
                    //       if (value == null || value.isEmpty) {
                    //         return 'please enter your name';
                    //       }
                    //       return null;
                    //     }),
                    // const SizedBox(
                    //   height: 10.0,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Register',
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(80.0),
                            ),
                          ),
                          hintText: 'Enter your Email',
                          prefixIcon: Icon(
                            Icons.email,
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
                        'Name',
                        style: TextStyle(fontSize: 14,color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(80.0),
                          ),
                        ),
                        hintText: 'Enter Name',
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          color: Colors.black,
                        ),
                      ),
                      ),
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(80.0),
                            ),
                          ),
                          hintText: 'Enter Password',
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
            const SizedBox(
              height: 10.0,
            ),

            // DropdownButtonFormField<String>(
            //   value: temp,
            //   decoration: InputDecoration(),
            //   items: options.map((e) {
            //     return DropdownMenuItem(
            //       value: e,
            //       child: Text('$e'),
            //     );
            //   }).toList(),
            //   // if the onChanged callback is null or the list of items is null
            //   // then the dropdown button will be disabled
            //   onChanged: (val) => setState(() => temp = val as String),
            // ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text(
                  'Signup',
                ),
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('processing data')),
                    );
                    await Provider.of<AuthService>(context, listen: false)
                        .signUp(EmailController.text, passwordController.text);
                    Navigator.pop(context);
                  }
                  setState(() {
                    email=EmailController.text;
                    password=passwordController.text;
                    name=EmailController.text;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Row(
                    children: const [
                      Text('Already Registered?',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  onPressed:(){
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
