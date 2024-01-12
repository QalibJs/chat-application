import 'package:chat_app/extension/context_extension.dart';

import '../../../data/model/home_top/home_top_model.dart';
import 'home_header_container_widget.dart';
import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<HomeTopModel> homeTopModel = HomeTopModel.model;
    return SizedBox(
      width: context.width,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeTopModel.length,
        itemBuilder: (context, index) {
          final datas = homeTopModel[index];
          return HomeHeaderContainerWidget(
            index: index,
            text: datas.topText,
          );
        },
      ),
    );
  }
}
