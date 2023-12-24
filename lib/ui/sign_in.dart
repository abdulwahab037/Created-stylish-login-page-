import 'package:flutter/material.dart';
import 'package:log_in/ui/forget.dart';
import 'package:log_in/ui/home.dart';
import 'package:log_in/ui/new_account.dart';

class SignIn extends StatelessWidget {
  TextEditingController emailCom = TextEditingController();
  TextEditingController passwordCom = TextEditingController();
  final formkey = GlobalKey<FormState>();
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          'Abdul Wahab',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 12,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0, // Remove the shadow
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.pinkAccent],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailCom,
                  style: const TextStyle(color: Colors.cyan),
                  validator: (txt) {
                    if (txt == null || txt.isEmpty) return 'Required';
                  },
                  cursorColor: Colors.tealAccent,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Email',
                    labelStyle: const TextStyle(color: Colors.white),
                    hintText: 'somthing@gmail.com',
                    hintStyle: const TextStyle(color: Colors.white38),
                    prefixIcon: const Icon(
                      Icons.mail,
                      color: Colors.cyan,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: TextFormField(
                    controller: passwordCom,
                    style: const TextStyle(color: Colors.cyan),
                    validator: (txt) {
                      if (txt == null || txt.isEmpty) return 'Required';
                    },
                    obscureText: true,
                    cursorColor: Colors.tealAccent,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.white),
                      hintText: 'Type Passowrd',
                      hintStyle: const TextStyle(color: Colors.white38),
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.cyan,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.amberAccent),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 18,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const forget()));
                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.cyan),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {
                      _login(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                    ),
                    child: const Icon(
                      Icons.login,
                    )),
              ],
            ),
          )),
      bottomNavigationBar: Row(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(25.0, 25, 0, 25),
            child: Text(
              'Are You New Here?',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewAccount()));
              },
              child: const Text(
                'sign up!',
                style: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ))
        ],
      ),
    );
  }

  void _login(BuildContext context) {
    String email = emailCom.text;
    String password = passwordCom.text;
    if (formkey.currentState?.validate() == false) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => home(email, password)));
  }
}
