import 'package:flutter/material.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          'Create New Account',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 10,
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
        padding: const EdgeInsets.fromLTRB(100, 50, 100, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              style: const TextStyle(color: Colors.cyan),
              validator: (txt) {
                if (txt == null || txt.isEmpty) return 'Required';
              },
              cursorColor: Colors.cyan,
              decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'Abdul',
                hintStyle: const TextStyle(color: Colors.white38),
                labelStyle: const TextStyle(
                  color: Colors.white,
                  letterSpacing: 10,
                ),
                prefixIcon: const Icon(
                  Icons.person,
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
                style: const TextStyle(color: Colors.cyan),
                validator: (txt) {
                  if (txt == null || txt.isEmpty) return 'Required';
                },
                cursorColor: Colors.tealAccent,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
                  hintText: 'Wahab',
                  hintStyle: const TextStyle(color: Colors.white38),
                  prefixIcon: const Icon(
                    Icons.person,
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: TextFormField(
                style: const TextStyle(color: Colors.cyan),
                validator: (txt) {
                  if (txt == null || txt.isEmpty) return 'Required';
                },
                cursorColor: Colors.tealAccent,
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
                  hintText: 'abc@gmail.com',
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
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: TextFormField(
                style: const TextStyle(color: Colors.cyan),
                validator: (txt) {
                  if (txt == null || txt.isEmpty) return 'Required';
                },
                cursorColor: Colors.tealAccent,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
                  hintText: 'Password',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: TextFormField(
                style: const TextStyle(color: Colors.cyan),
                validator: (txt) {
                  if (txt == null || txt.isEmpty) return 'Required';
                },
                cursorColor: Colors.tealAccent,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
                  hintText: 'Confirm Password',
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
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                child: const Icon(
                  Icons.move_up,
                )),
          ],
        ),
      ),
    );
  }
}
