import '../../../data/model/offer/offer_model.dart';

abstract class OfferState {}

class OfferSuccessState extends OfferState {
  final List<OfferModel> offers;

  OfferSuccessState({required this.offers});
}

class OfferLoadingState extends OfferState {}

class OfferErrorState extends OfferState {}
