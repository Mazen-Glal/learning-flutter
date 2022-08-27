import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        print(value);
                      },
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                          labelText: 'E-mail Address..',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email)),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        print(value);
                      },
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        labelText: 'Password..',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      color: Colors.blue,
                      width: double.infinity,
                      child: MaterialButton(
                          onPressed: () {
                            print(emailController.text);
                            print(passwordController.text);
                          },
                          textColor: Colors.white,
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have account ??',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () {
                              print('Register in the future..');
                            },
                            child: Text('Register Now',
                                style: TextStyle(
                                            fontWeight: FontWeight.bold, 
                                            fontSize: 20)))
                      ],
                    )
                  ]),
            ),
          ),
        ));
  }
}
