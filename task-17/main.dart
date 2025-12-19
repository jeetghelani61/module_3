import 'package:flutter/material.dart';

void main() {
  runApp(RegistrationFormApp());
}

class RegistrationFormApp extends StatefulWidget {
  @override
  _RegistrationFormAppState createState() => _RegistrationFormAppState();
}

class _RegistrationFormAppState extends State<RegistrationFormApp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Registration Form')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (val) => val!.isEmpty ? 'Enter name' : null,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (val) => val!.contains('@') ? null : 'Invalid email',
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (val) => val!.length >= 6 ? null : 'Password too short',
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Phone'),
                  validator: (val) => val!.length == 10 ? null : 'Enter 10 digits',
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) print('Form Valid');
                  },
                  child: Text('Register'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
