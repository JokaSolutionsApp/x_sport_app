import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:x_sport/app/features/auth/data/datasource/params/auth_params.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'package:x_sport/app/features/auth/domain/params/edit_preferences_params.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/add_favorite_sports_usecse.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/complete_resgisteration_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/confirm_user_email_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/delete_favorite_sports_usecse.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/edit__user_profile_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/edit_preferences_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/get_user_profile_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/login_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/register_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/resend_confirm_user_email_usecase.dart';
import 'package:x_sport/app/features/home/presentation/pages/main_page.dart';
import 'package:x_sport/core/constance/app_functions.dart';
import 'package:x_sport/core/error/failure.dart';
import 'package:x_sport/core/utils/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/check_user_logged_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/get_sports_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/logout_usecase.dart';
import 'package:x_sport/app/features/auth/presentation/pages/otp_page.dart';
import 'package:x_sport/app/features/auth/presentation/pages/welcome_page.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final EditUserProfileUseCase editUserProfileUseCase;
  final GetsportsUseCase getsportsUseCase;
  final GetUserProfileUseCase getUserProfileUseCase;
  final CheckUserLoggedUseCase checkUserLoggedUseCase;
  final CompleteRegistrationUseCase completeRegistrationUseCase;
  final LogoutUserUseCase logoutUserUseCase;
  final EditPreferencesUseCase editPreferencesUseCase;
  final ConfirmUserEmailUseCase confirmUserEmailUseCase;
  final ResendConfirmUserEmailUseCase resendConfirmUserEmailUseCase;
  final AddFavoriteSportsUseCase addFavoriteSportsUseCase;
  final DeleteFavoriteSportsUseCase deleteFavoriteSportsUseCase;

  AuthBloc(
    this.registerUseCase,
    this.loginUseCase,
    this.editUserProfileUseCase,
    this.getsportsUseCase,
    this.getUserProfileUseCase,
    this.checkUserLoggedUseCase,
    this.completeRegistrationUseCase,
    this.logoutUserUseCase,
    this.editPreferencesUseCase,
    this.confirmUserEmailUseCase,
    this.resendConfirmUserEmailUseCase,
    this.addFavoriteSportsUseCase,
    this.deleteFavoriteSportsUseCase,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (event) async => await _login(event, emit),
        register: (event) async => await _register(event, emit),
        editUserProfile: (event) async => await _editUserProfile(event, emit),
        confirmUserEmail: (event) async => await _confirmUserEmail(event, emit),
        checkUserLogged: (event) async => await _checkUserLogged(event, emit),
        resendconfirmUserEmail: (event) async =>
            await _resendconfirmUserEmail(event, emit),
        completeRegistration: (event) async =>
            await _completeRegistration(event, emit),
        getSports: (event) async => null,
        // await _getSports(event, emit),
        getUserProfile: (event) async => null,
        // await _getUserProfile(event, emit),
        editPreferences: (event) async => null,
        // await _editPreferences(event, emit),
        addFavoriteSports: (event) async => null,
        // await _addFavoriteSports(event, emit),
        deleteFavoriteSports: (event) async => null,
        // await _deleteFavoriteSports(event, emit),
      );
    });
  }
  Future<void> _register(event, Emitter<AuthState> emit) async {
    event as _$RegisterEventImpl;
    emit(const AuthState.registerLoading());
    EasyLoadingInit.startLoading();

    final result = await registerUseCase();

    await result.fold((failure) async {
      await EasyLoading.dismiss();
      if (failure.statusCode == 500) {
        EasyLoading.showError('هذا الحساب متستخدم من قبل');
      } else {
        EasyLoading.showError('حدث خطأ اعد المحاولة مجدداً');
      }
      emit(const AuthState.registerFailure());
    }, (r) async {
      await EasyLoading
          .dismiss(); // Dismiss the loading indicator on success as well
      if (r) {
        emit(AuthState.registered(registered: r));
        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => const OtpPage()),
        );
      }
    });
  }

  Future<void> _confirmUserEmail(event, Emitter<AuthState> emit) async {
    event as _$ConfirmUserEmailEventImpl;

    emit(const AuthState.confirmEmailLoading());
    EasyLoadingInit.startLoading();

    final result = await confirmUserEmailUseCase();
    await result.fold(
      (failure) async {
        EasyLoading.showError('Network error please try again');
        emit(const AuthState.confirmEmailFailure());
      },
      (r) async {
        await EasyLoading.dismiss();

        emit(AuthState.emailConfirmed(
          sports: r,
        ));
        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => WelcomePage()),
        );
      },
    );
  }

  Future<void> _resendconfirmUserEmail(event, Emitter<AuthState> emit) async {
    event as _$ResendConfirmUserEmailEventImpl;

    emit(const AuthState.resendConfirmEmailLoading());
    EasyLoadingInit.startLoading();

    final result = await resendConfirmUserEmailUseCase();
    await result.fold(
      (failure) async {
        EasyLoading.showError('Network error please try again');
        emit(const AuthState.resendConfirmEmailFailure());
      },
      (r) {
        EasyLoading.showSuccess('تم ارسال رمز التفعيل');
      },
    );
  }

  Future<void> _login(event, Emitter<AuthState> emit) async {
    event as _$LoginEventImpl;
    emit(const AuthState.logginLoading());
    EasyLoadingInit.startLoading();

    final result = await loginUseCase();

    await result.fold((failure) async {
      await EasyLoading.dismiss();
      if (failure.statusCode == 500) {
        EasyLoading.showError('معلرمات الحساب خاطئة');
      } else {
        EasyLoading.showError('حدث خطأ اعد المحاولة مجدداً');
      }
      emit(const AuthState.logginFailure());
    }, (r) async {
      await EasyLoading
          .dismiss(); // Dismiss the loading indicator on success as well
      if (r.toString().isNotEmpty) {
        emit(AuthState.loggedIn(user: r));
        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      }
    });
  }

  Future<void> _checkUserLogged(event, Emitter<AuthState> emit) async {
    event as _$CheckUserLoggedEventImpl;
    emit(const AuthState.checkUserLoading());
    final result = await checkUserLoggedUseCase();

    result.fold((l) {
      emit(const AuthState.checkUserFailure());
    }, (isLogged) {
      if (isLogged) {
        emit(const AuthState.checkUserLogged(
            userAuthState: UserAuthState.loggedIn));
      } else {
        emit(const AuthState.checkUserLogged(
            userAuthState: UserAuthState.guest));
      }
    });
  }

  Future<void> _completeRegistration(event, Emitter<AuthState> emit) async {
    event as _$CompleteRegistrationEventImpl;
    emit(const AuthState.completeRegistrationLoading());
    EasyLoadingInit.startLoading();
    print("loading");

    final result = await completeRegistrationUseCase(
        event.imageBytes, event.imageType, event.selectedSports);
    await result.fold(
      (failure) async {
        EasyLoading.showError('Network error please try again');
        emit(AuthState.completeRegistrationailure(failure: failure));
      },
      (r) {
        emit(AuthState.registrationCompleted(
          userProfile: r,
        ));
        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      },
    );
    EasyLoading.dismiss();
  }

  Future<void> _editUserProfile(event, Emitter<AuthState> emit) async {
    event as _$LoginEventImpl;
    emit(const AuthState.userProfileLoading());
    EasyLoadingInit.startLoading();

    final result = await loginUseCase();

    await result.fold((failure) async {
      await EasyLoading.dismiss();
      if (failure.statusCode == 500) {
        EasyLoading.showError('معلرمات الحساب خاطئة');
      } else {
        EasyLoading.showError('حدث خطأ اعد المحاولة مجدداً');
      }
      emit(const AuthState.userProfileFailure());
    }, (r) async {
      await EasyLoading.dismiss();
      if (r.toString().isNotEmpty) {
        emit(AuthState.userProfileFetched(userProfile: r));
        Navigator.of(navigatorKey.currentContext!).pop();
      }
    });
  }

  Future<void> getUserProfile(event, Emitter<AuthState> emit) async {
    event as _$GetUserProfileEventImpl;
    emit(const AuthState.userProfileLoading());
    final result = await getUserProfileUseCase();
    result.fold((failure) {
      emit(const AuthState.userProfileFailure());
    }, (UserProfileEntity? userProfile) {
      if (userProfile != null) {
        emit(AuthState.userProfileFetched(userProfile: userProfile));
      }
    });
  }

  Future<void> editPreferences(event, Emitter<AuthState> emit) async {
    event as _$EditPreferencesEventImpl;
    emit(const AuthState.userProfileLocalLoading());
    final result = await editPreferencesUseCase(params: event.params);
    result.fold((f) {}, (r) {
      AuthState.userProfileFetched(
        userProfile: r,
      );
    });
  }

  Future<void> addFavoriteSports(event, Emitter<AuthState> emit) async {
    event as _$AddFavoriteSportsEventImpl;
    emit(const AuthState.userProfileLocalLoading());
    final result = await addFavoriteSportsUseCase(sportsIds: event.sportsIds);
    result.fold((f) {}, (r) {
      emit(AuthState.userProfileFetched(
        userProfile: r,
      ));
    });
  }

  Future<void> deleteFavoriteSports(event, Emitter<AuthState> emit) async {
    event as _$DeleteFavoriteSportsEventImpl;
    emit(const AuthState.userProfileLocalLoading());
    final result =
        await deleteFavoriteSportsUseCase(sportsIds: event.sportsIds);
    result.fold((f) {}, (r) {
      emit(AuthState.userProfileFetched(
        userProfile: r,
      ));
    });
  }

  Future<void> getSports(event, Emitter<AuthState> emit) async {
    event as _$GetSportsEventImpl;
    event as _$DeleteFavoriteSportsEventImpl;
    emit(const AuthState.getSportsLoading());
    final result = await getsportsUseCase();
    result.fold((f) {
      emit(AuthState.getSportsFailure(failure: f));
    }, (r) {
      emit(AuthState.sportsFetched(sports: r));
    });
  }
}
