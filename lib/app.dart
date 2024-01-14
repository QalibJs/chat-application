import 'package:chat_app/app/login/screen/login_screen.dart';
import 'package:chat_app/app/onboard/screen/onboard_screen.dart';
import 'package:chat_app/controllers/cubit/home/home_search_bar_cubit.dart';

import 'controllers/cubit/delete_acc/delete_cubit.dart';
import 'controllers/cubit/home/home_top_cubit.dart';
import 'controllers/cubit/offer/offer_cubit.dart';
import 'theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'app/splash/screen/splash_screen.dart';
import 'controllers/cubit/auth/auth_cubit.dart';
import 'controllers/cubit/chat/chat_cubit.dart';
import 'controllers/cubit/edit/edit_cubit.dart';
import 'controllers/cubit/home/home_cubit.dart';
import 'controllers/cubit/login/login_cubit.dart';
import 'controllers/cubit/main/main_cubit.dart';
import 'controllers/cubit/onboard/onboard_cubit.dart';
import 'controllers/cubit/profile/profile_cubit.dart';
import 'controllers/provider/home/home_provider.dart';

class MyApp extends StatelessWidget {
  final int? onboard;
  const MyApp({super.key, this.onboard});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MainCubit()),
        BlocProvider(create: (context) => ChatCubit()),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => OnboardCubit()),
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => OfferCubit()),
        BlocProvider(create: (context) => ProfileCubit()),
        BlocProvider(create: (context) => DeleteCubit()),
        BlocProvider(create: (context) => EditCubit()),
        BlocProvider(create: (context) => HomeSearchBarCubit()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        BlocProvider(create: (context) => HomeCubit()..fetchDatas()),
        BlocProvider(create: (context) => HomeTopCubit()),
      ],
      child: Sizer(
        builder: (
          BuildContext context,
          Orientation orientation,
          DeviceType deviceType,
        ) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            darkTheme: darkMode,
            theme: lightMode,
            home: onboard == 3
                ? const LoginScreen()
                : onboard == 2
                    ? const SplashScreen()
                    : onboard == 1
                        ? const LoginScreen()
                        : const OnboardScreen(),
          );
        },
      ),
    );
  }
}

