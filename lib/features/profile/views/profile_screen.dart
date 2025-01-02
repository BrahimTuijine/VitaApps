import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:vita_apps/core/extensions/num.dart';
import 'package:vita_apps/core/router/router.dart';
import 'package:vita_apps/core/storage/save_data.dart';
import 'package:vita_apps/core/widgets/elevated_button.dart';

import '../../../core/widgets/textformfield.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.fw),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              40.fh.bh,
              Icon(
                Icons.supervised_user_circle_rounded,
                size: 80,
              )
                  .animate()
                  .fadeIn(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  )
                  .moveY(
                    begin: -10,
                    end: 0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  ),
              16.fh.bh,
              AppTextFormField(
                title: 'Email',
                initialValue: LoginDataManager.getLoginData()!.email,
                maxLength: 25,
                keyboardType: TextInputType.name,
                onSaved: (p0) {},
                hint: 'x x x x x x x x',
                validator: (value) {
                  return null;
                },
              ),
              AppTextFormField(
                title: 'Password',
                initialValue: LoginDataManager.getLoginData()!.password,
                maxLength: 25,
                keyboardType: TextInputType.name,
                onSaved: (lastName) {},
                validator: (p0) {
                  return null;
                },
                hint: 'x x x x x x x x',
              ),
              40.fh.bh,
              AppElevatedBtn(
                title: "Logout",
                onPressed: () {
                  LoginDataManager.removeLoginData();
                  LoginRoute().pushReplacement(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
