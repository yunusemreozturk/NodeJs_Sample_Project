import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:node_js_sample_project/src/view/login_page/components/email_validator.dart';
import 'package:node_js_sample_project/src/view/login_page/components/password_validator.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: _buildBody(),
    );
  }


  _buildBody() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(label: Text('Email')),
            onSaved: (value) {
              email = value;
            },
            validator: EmailValidator().validate,
          ),
          TextFormField(
            decoration: const InputDecoration(label: Text('Password')),
            onSaved: (value) {
              password = value;
            },
            validator: PasswordValidator().validate,
          ),
          ElevatedButton(
            onPressed: _submitLogin,
            child: const Text('Giriş'),
          )
        ],
      ),
    );
  }

  _submitLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }
}
