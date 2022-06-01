import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../theme.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late FToast fToast;
  final firstNameController = TextEditingController(text: '');
  final lastNameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  final rePasswordController = TextEditingController(text: '');

  bool isShowPasswordError = false;
  bool isRememberMe = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          tittle(),
          nameInput(),
          emailInput(),
          passwordInput(),
          rePasswordInput(),
          loginButton(),
          registerButton(),
        ],
      ),
    );
  }

  Widget tittle() {
    return Container(
      margin: EdgeInsets.only(
        top: 84,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create new \naccount',
            style: blackAccentTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 87,
                height: 4,
                margin: EdgeInsets.only(
                  right: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xffED193F),
                ),
              ),
              Container(
                width: 8,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xffED193F),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(
        top: 32,
      ),
      padding: EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        color: kWhiteGreyColor,
        borderRadius: BorderRadius.circular(
          14,
        ),
      ),
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration.collapsed(
          hintText: 'Email',
          hintStyle: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }

  Widget nameInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 56,
          width: MediaQuery.of(context).size.width / 2 - 48,
          margin: EdgeInsets.only(
            top: 48,
          ),
          padding: EdgeInsets.all(
            16,
          ),
          decoration: BoxDecoration(
            color: kWhiteGreyColor,
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
          child: TextFormField(
            controller: firstNameController,
            decoration: InputDecoration.collapsed(
              hintText: 'First Name',
              hintStyle: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ),
        ),
        Container(
          height: 56,
          width: MediaQuery.of(context).size.width / 2 - 48,
          margin: EdgeInsets.only(
            top: 48,
          ),
          padding: EdgeInsets.all(
            16,
          ),
          decoration: BoxDecoration(
            color: kWhiteGreyColor,
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
          child: TextFormField(
            controller: lastNameController,
            decoration: InputDecoration.collapsed(
              hintText: 'Last Name',
              hintStyle: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget passwordInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 32,
          ),
          padding: EdgeInsets.all(
            16,
          ),
          decoration: BoxDecoration(
            color: kWhiteGreyColor,
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Password',
                    hintStyle: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.visibility_outlined,
                color: kGreyColor,
              ),
            ],
          ),
        ),
        if (isShowPasswordError)
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              'Password kamu salah',
              style: redTextStyle,
            ),
          ),
      ],
    );
  }

  Widget rePasswordInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 32,
          ),
          padding: EdgeInsets.all(
            16,
          ),
          decoration: BoxDecoration(
            color: kWhiteGreyColor,
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Re Password',
                    hintStyle: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.visibility_outlined,
                color: kGreyColor,
              ),
            ],
          ),
        ),
        if (isShowPasswordError)
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              'Password kamu salah',
              style: redTextStyle,
            ),
          ),
      ],
    );
  }

  Widget rememberCheckbox() {
    return Container(
      margin: EdgeInsets.only(
        top: 32,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: isRememberMe,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Remember me',
          ),
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      height: 56,
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 32,
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isLoading = true;
          });

          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              isLoading = false;
            });
            if (passwordController.text != '123') {
              setState(() {
                isShowPasswordError = true;
              });
              fToast.showToast(
                child: errorToast(),
                toastDuration: Duration(seconds: 2),
                gravity: ToastGravity.BOTTOM,
              );
            } else {
              Navigator.pushNamed(context, '/home');
            }
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: Color(0xffFFC107),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: isLoading
            ? CircularProgressIndicator(
                color: kWhiteColor,
                backgroundColor: kGreyColor,
              )
            : Text(
                'Sign Up',
                style: whiteTextStyle.copyWith(
                    fontSize: 18, fontWeight: semibold, color: kBlackColor),
              ),
      ),
    );
  }

  Widget loginWithGoogleButton() {
    return Container(
      height: 56,
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 21,
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          'Login with Google',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }

  Widget registerButton() {
    return Container(
      margin: EdgeInsets.only(
        top: 48,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account?',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: Text(
              'Login',
              style: blueTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget errorToast() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kRedColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Password salah',
        style: whiteTextStyle.copyWith(
          fontSize: 16,
          fontWeight: semibold,
        ),
      ),
    );
  }
}
