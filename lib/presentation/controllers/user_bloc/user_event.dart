import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
  @override
  List<Object> get props => [];
}

class SignInEvent extends UserEvent {
  const SignInEvent();
}

class SignUpEvent extends UserEvent {
  const SignUpEvent();
}

class GetUserInfoEvent extends UserEvent {
  const GetUserInfoEvent();
}

class UpdateUserPreferencesEvent extends UserEvent {
  final int sportId;
  final int favoriteHand;
  final int favoritePos;
  final int favoriteTime;
  const UpdateUserPreferencesEvent(
      {required this.sportId,
      required this.favoriteHand,
      required this.favoritePos,
      required this.favoriteTime});
}

class UpdateUserProfileEvent extends UserEvent {
  final String userName;
  final String phone;
  final List<int> image;
  final String type;
  final double latitude;
  final double longitude;
  final List<int> selectedSports;
  final String gender;
  const UpdateUserProfileEvent(
      {required this.userName,
      required this.phone,
      required this.image,
      required this.type,
      required this.latitude,
      required this.longitude,
      required this.selectedSports,
      required this.gender});
}

class CheckUserLoggedEvent extends UserEvent {
  const CheckUserLoggedEvent();
}

class ValidAccountEvent extends UserEvent {
  const ValidAccountEvent();
}

class GetsportsEvent extends UserEvent {
  const GetsportsEvent();
}

class SendImageAndSportsEvent extends UserEvent {
  final List<int> imageBytes;
  final String imageType;
  final List<int> selectedSports;
  const SendImageAndSportsEvent({
    required this.imageBytes,
    required this.imageType,
    required this.selectedSports,
  });
}
