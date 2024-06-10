import 'package:flutter/material.dart';
import 'home_page.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail Address',
                  hintText: 'Enter your E-mail Address here',
                ),
                validator: (value) {
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your Password here',
                ),
                validator: (value) {
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                  }
                },
                child: Text('Sign In'),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text('Sign Up Here'),
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
