import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:x_sport/core/constance/app_functions.dart';
import 'package:x_sport/core/utils/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/check_user_logged_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/get_sports_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/get_user_info_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/logout_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/send_image_and_sports_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/sign_in_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/register_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_hand_prefernce_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_position_prefernce_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_time_prefernce_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_user_preferences_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_user_profile.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/validate_account_usecase.dart';
import 'package:x_sport/app/features/auth/presentation/pages/otp_page.dart';
import 'package:x_sport/app/features/auth/presentation/pages/welcome_page.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase signInUseCase;
  final SignUpUseCase signUpUseCase;
  final GetsportsUseCase getsportsUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final CheckUserLoggedUseCase checkUserLoggedUseCase;
  final SendImageAndSportsUseCase sendImageAndSportsUseCase;
  final LogoutUserUseCase logoutUserUseCase;
  final UpdateUserProfileUseCase updateUserProfileUseCase;
  final UpdateUserPreferencesUseCase updateUserPreferencesUseCase;
  final UpdateHandPrefernceUseCase updateHandPrefernceUseCase;
  final UpdateTimePrefernceUseCase updateTimePrefernceUseCase;
  final UpdatePositionPrefernceUseCase updatePositionPrefernceUseCase;
  final ValidateAccountUseCase validateAccountUseCase;
  // Include other use cases similarly

  AuthBloc(
    this.signUpUseCase,
    this.signInUseCase,
    this.getsportsUseCase,
    this.getUserInfoUseCase,
    this.checkUserLoggedUseCase,
    this.sendImageAndSportsUseCase,
    this.logoutUserUseCase,
    this.updateUserProfileUseCase,
    this.updateUserPreferencesUseCase,
    this.updateHandPrefernceUseCase,
    this.updateTimePrefernceUseCase,
    this.updatePositionPrefernceUseCase,
    this.validateAccountUseCase,
    // Initialize other use cases here
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (event) async => await _login(event, emit),
        register: (event) async => await _register(event, emit),
        getSports: (event) async => null,
        // await _getSports(event, emit),
        getUserInfo: (event) async => null,
        // await _getUserInfo(event, emit),
        checkUserLogged: (event) async => null,
        //  await _checkUserLogged(event, emit),
        updateUserPreferences: (event) async => null,
        // await _updateUserPreferences(event, emit),
        updateUserProfile: (event) async => null,
        // await _updateUserProfile(event, emit),
        updateHandPreference: (event) async => null,
        // await _updateHandPreference(event, emit),
        updatePositionPreference: (event) async => null,
        // await _updatePositionPreference(event, emit),
        updateTimePreference: (event) async => null,
        // await _updateTimePreference(event, emit),
        validateAccount: (event) async => await _validateAccount(event, emit),
        sendImageAndSports: (event) async => null,
        // await _sendImageAndSports(event, emit),
      );
    });
  }
  Future<void> _register(RegisterEvent event, Emitter<AuthState> emit) async {
    EasyLoadingInit.startLoading();

    emit(const AuthState.register(isLoading: true));
    final result = await signUpUseCase();
    await result.fold((failure) async {
      emit(const AuthState.register(
        isLoading: false,
        state: RequestState.error,
      ));
    }, (_) async {
      emit(const AuthState.register(
        isLoading: false,
        state: RequestState.loaded,
      ));
      Navigator.of(navigatorKey.currentContext!).push(
        MaterialPageRoute(builder: (context) => const OtpPage()),
      );
    });
    EasyLoading.dismiss();
  }

  Future<void> _validateAccount(
      ValidAccountEvent event, Emitter<AuthState> emit) async {
    EasyLoadingInit.startLoading();

    emit(const AuthState.validateAccount(isLoading: true));
    final result = await validateAccountUseCase();
    await result.fold(
      (failure) async {
        emit(const AuthState.validateAccount(isLoading: false));
      },
      (_) {
        emit(const AuthState.validateAccount(
            isLoading: false, state: VerifiedAccountState.isVerified));
        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => WelcomePage()),
        );
      },
    );
    EasyLoading.dismiss();
  }

  Future<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    // emit(state.copyWith(isLoading: true));
    // final result = await signInUseCase();
    // result.fold(
    //   (failure) => emit(state.copyWith(
    //     isLoading: false,
    //     requestState: RequestState.error,
    //     message: failure.message,
    //   )),
    //   (userSignIn) => emit(state.copyWith(
    //     isLoading: false,
    //     requestState: RequestState.loaded,
    //     userSignIn: userSignIn,
    //   )),
    // );
  }

  Future<void> _checkUserLogged(event, Emitter<AuthState> emit) async {
    //   final result = await checkUserLoggedUseCase();
    //   emit(result.fold(
    //     (failure) => state.copyWith(userAuthState: UserAuthState.guest),
    //     (_) => state.copyWith(userAuthState: UserAuthState.loggedIn),
    //   ));
    // }

    Future<void> _sendImageAndSports(
        SendImageAndSportsEvent event, Emitter<AuthState> emit) async {
      // emit(state.copyWith(isLoading: true));
      // final result = await sendImageAndSportsUseCase(
      //     event.imageBytes, event.imageType, event.selectedSports);
      // emit(result.fold(
      //   (failure) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.error,
      //     message: failure.message,
      //   ),
      //   (response) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.loaded,
      //     // Update with response if needed
      //   ),
      // ));
    }

    Future<void> _getUserInfo(
        GetUserInfoEvent event, Emitter<AuthState> emit) async {
      // emit(state.copyWith(isLoading: true));
      // final result = await getUserInfoUseCase();
      // emit(result.fold(
      //   (failure) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.error,
      //     message: failure.message,
      //   ),
      //   (userInfo) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.loaded,
      //     userSignIn: userInfo, // Assuming userSignIn holds the user info
      //   ),
      // ));
    }

    Future<void> _updateUserProfile(
        UpdateUserProfileEvent event, Emitter<AuthState> emit) async {
      // emit(state.copyWith(isLoading: true));
      // final result = await updateUserProfileUseCase(
      //   event.userName,
      //   event.phone,
      //   event.image,
      //   event.type,
      //   event.latitude,
      //   event.longitude,
      //   event.selectedSports,
      //   event.gender,
      // );
      // emit(result.fold(
      //   (failure) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.error,
      //     message: failure.message,
      //   ),
      //   (updatedProfile) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.loaded,
      //     userSignIn: updatedProfile, // Assuming userSignIn to hold profile info
      //   ),
      // ));
    }

    Future<void> _getSports(
        GetSportsEvent event, Emitter<AuthState> emit) async {
      // emit(state.copyWith(isLoading: true));
      // final result = await getsportsUseCase();
      // emit(result.fold(
      //   (failure) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.error,
      //     message: failure.message,
      //   ),
      //   (sports) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.loaded,
      //     sports: sports,
      //   ),
      // ));
    }

    Future<void> _updateUserPreferences(
        UpdateUserPreferencesEvent event, Emitter<AuthState> emit) async {
      // emit(state.copyWith(isLoading: true));
      // final result = await updateUserPreferencesUseCase(event.sportId,
      //     event.favoriteHand, event.favoritePos, event.favoriteTime);
      // emit(result.fold(
      //   (failure) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.error,
      //     message: failure.message,
      //   ),
      //   (_) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.loaded,
      //     // Update the state as necessary, e.g., with a success message or flag
      //   ),
      // ));
    }

    Future<void> _updateHandPreference(
        UpdateHandPreferenceEvent event, Emitter<AuthState> emit) async {
      // emit(state.copyWith(isLoading: true));
      // final result =
      //     await updateHandPrefernceUseCase(event.sportId, event.optionName);
      // emit(result.fold(
      //   (failure) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.error,
      //     message: failure.message,
      //   ),
      //   (_) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.loaded,
      //     // Update the state as necessary, e.g., with a success message or flag
      //   ),
      // ));
    }

    Future<void> _updatePositionPreference(
        UpdatePositionPreferenceEvent event, Emitter<AuthState> emit) async {
      // emit(state.copyWith(isLoading: true));
      // final result =
      //     await updatePositionPrefernceUseCase(event.sportId, event.optionName);
      // emit(result.fold(
      //   (failure) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.error,
      //     message: failure.message,
      //   ),
      //   (_) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.loaded,
      //     // Update the state as necessary, e.g., with a success message or flag
      //   ),
      // ));
    }

    Future<void> _updateTimePreference(
        UpdateTimePreferenceEvent event, Emitter<AuthState> emit) async {
      // emit(state.copyWith(isLoading: true));
      // final result =
      //     await updateTimePrefernceUseCase(event.sportId, event.optionName);
      // emit(result.fold(
      //   (failure) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.error,
      //     message: failure.message,
      //   ),
      //   (_) => state.copyWith(
      //     isLoading: false,
      //     requestState: RequestState.loaded,
      //     // Update the state as necessary, e.g., with a success message or flag
      //   ),
      // ));
    }
  }
}
