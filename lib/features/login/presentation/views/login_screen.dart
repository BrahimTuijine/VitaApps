import 'package:flutter/material.dart';
import 'package:vita_apps/core/extensions/context.dart';
import 'package:vita_apps/core/extensions/num.dart';
import 'package:vita_apps/core/router/router.dart';
import 'package:vita_apps/core/widgets/text.dart';

import '../../../../core/validators/validators.dart';
import '../../../../core/widgets/elevated_button.dart';
import '../../../../core/widgets/textformfield.dart';
import '../model/login_model.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();

  final loginModel = LoginModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.fw),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                120.fh.bh,
                AppText('Welcome!', style: context.h1),
                SizedBox(
                  width: 273.fw,
                  child: AppText(
                    'Log in to access your space.',
                    style: context.paragraph,
                  ),
                ),
                31.fh.bh,
                AppTextFormField(
                  title: "Email",
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (email) => loginModel.email = email,
                  validator: InputValidators.validEmail,
                  hint: 'brahim@gmail.com',
                ),
                31.fh.bh,
                AppTextFormField(
                  title: 'Password',
                  isObscure: true,
                  keyboardType: TextInputType.visiblePassword,
                  maxLength: 16,
                  onSaved: (password) => loginModel.password = password,
                  validator: (p0) {
                    if (p0 == null || p0.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                  hint: '* * * * * * * *',
                ),
                60.fh.bh,
                Align(
                  alignment: Alignment.center,
                  child: AppElevatedBtn(
                    title: 'Login',
                    isLoading: false,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        HomeRoute().pushReplacement(context);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
