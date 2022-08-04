import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splitbill/cubit/page_cubit.dart';
import 'package:splitbill/page/cart_page.dart';
import 'package:splitbill/page/home_page.dart';
import 'package:splitbill/page/profile_page.dart';
import 'package:splitbill/widget/custom_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.only(
            left: 29,
            right: 29,
            top: 13,
          ),
          margin: EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 30,
          ),
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                index: 0,
                imgUrl: 'assets/home.png',
              ),
              CustomButton(
                index: 1,
                imgUrl: 'assets/heart.png',
              ),
              CustomButton(
                index: 2,
                imgUrl: 'assets/person.png',
              ),
            ],
          ),
        ),
      );
    }

    // Widget BuildContent(int currentIndex) {
    //   switch (currentIndex) {
    //     case 0:
    //       return HomePage();

    //     default:
    //       return HomePage();
    //   }
    // }

    Widget BuildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return CartPage();
        case 2:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              BuildContent(currentIndex),
              bottomNavigationBar(),
            ],
          ),
        );
      },
    );
  }
}
