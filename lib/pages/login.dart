import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginForm = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg-001.png'),
                fit: BoxFit.contain,
                alignment: Alignment.bottomCenter // Cover the entire container
                ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _loginForm,
                child: Column(
                  children: [
                    const Text(
                      'Login To Your Account',
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 20),

                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        // Basic email validation
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),

                    // Password input
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true, // Hides the input for passwords
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24.0),

                    // Login button
                    ElevatedButton(
                      onPressed: () {
                        if (_loginForm.currentState!.validate()) {
                          // If the form is valid, display a snackbar (or handle login)
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Logging in...')),
                          );

                          // You can handle the login logic here using the values:
                          // _emailController.text and _passwordController.text
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
