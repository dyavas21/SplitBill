import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splitbill/cubit/page_cubit.dart';

class CustomButton extends StatelessWidget {
  final String? imgUrl;

  final int? index;
  const CustomButton({
    required this.imgUrl,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index!);
      },
      child: Image.asset(
        imgUrl!,
        width: 24,
        color: context.read<PageCubit>().state == index
            ? Colors.red
            : Colors.black,
      ),
    );
  }
}
