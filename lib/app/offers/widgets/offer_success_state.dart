import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../controllers/cubit/home/home_state.dart';
import '../../../controllers/provider/offer/offer_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OfferBlocBuilderWidget extends StatelessWidget {
  const OfferBlocBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    OfferService offerService = OfferService();
    FirebaseAuth auth = FirebaseAuth.instance;
    return Column(
      children: <Widget>[
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeSuccessState) {
              final usersModel = state.usersModel;
              return SizedBox(
                height: MediaQuery.of(context).size.height - 80,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return StreamBuilder(
                      stream: offerService.getOffer(
                        auth.currentUser!.uid,
                        usersModel[index].uid!,
                      ),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return const SizedBox.shrink();
                        }
                        return Container();
                      },
                    );
                  },
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
