// import 'package:chat_app/constants/app_colors.dart';
// import 'package:chat_app/constants/app_paddings.dart';
// import 'package:flutter/material.dart';
// import 'package:story_viewer/story_viewer.dart';

// class StoryScreen extends StatelessWidget {
//   final String profileImg;
//   final String username;
//   final String storyimg;
//   const StoryScreen(
//       {super.key,
//       required this.profileImg,
//       required this.username,
//       required this.storyimg});

//   @override
//   Widget build(BuildContext context) {
//     StoryViewerController viewerController = StoryViewerController();
//     return StoryViewer(
//       padding: AppPaddings.all24(),
//       backgroundColor: AppColors.white,
//       viewerController: viewerController,
//       userModel: UserModel(
//         username: username,
//         profilePicture: NetworkImage(
//           profileImg,
//         ),
//       ),
//       stories: [
//         StoryItemModel(
//           imageProvider: NetworkImage(storyimg),
//         ),
//       ],
//     );
//   }
// }
