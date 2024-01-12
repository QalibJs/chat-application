import '../../../theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../controllers/cubit/home/home_state.dart';
import '../../../global/widgets/global_error_widget.dart';
import '../widgets/chat_app_bar_title.dart';
import '../widgets/chat_message_list_widget.dart';

class ChatScreen extends StatelessWidget {
  final int index;
  const ChatScreen({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 8.h,
        elevation: 0.1,
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: exColor(context),
        title: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadingState) {
              const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomeErrorState) {
              return const GlobalErrorWidget();
            } else if (state is HomeSuccessState) {
              final user = state.usersModel;
              return ChatAppBarTitle(
                name: user[index].username!,
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      body: ChatMessageListWidget(index: index),
      // bottomNavigationBar:
    );
  }
}
