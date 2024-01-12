import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants/app_decorated_box.dart';
import '../../constants/app_paddings.dart';

class GlobalLoadingWidget extends StatelessWidget {
  const GlobalLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10.h,
                height: 10.h,
                decoration: AppBoxDecorations.br12border(
                  context,
                ),
                child: Padding(
                  padding: AppPaddings.all6,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
