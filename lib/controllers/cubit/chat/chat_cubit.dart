import 'package:chat_app/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatCubit extends Cubit<int> {
  ChatCubit() : super(0);

  ScrollController scrollController = ScrollController();
  TextEditingController messageController = locator.get<TextEditingController>();

  void messagesToEnd() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(microseconds: 10),
      curve: Curves.ease,
    );
  }

  @override
  Future<void> close() {
    messageController.dispose();
    scrollController.dispose();
    return super.close();
  }
}
