import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:x_sport/app/features/auth/data/models/sport_model.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/change_email_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/change_password_usecase.dart';
import 'package:x_sport/app/features/profile/presentation/components/edit_profile_components/status_dialog.dart';
import '../../../../../core/constance/app_functions.dart';
import '../../../../../core/error/failure.dart';
import '../../../../../core/services/locator/service_locator.dart';
import '../../../../../core/services/secure_storage_service.dart.dart';
import '../../../../../core/utils/enums.dart';
import '../../../../../main.dart';
import '../../../home/presentation/pages/main_page.dart';
import '../../data/datasource/params/auth_params.dart';
import '../../domain/enitites/sport_entity.dart';
import '../../domain/enitites/user_profile_entity.dart';
import '../../domain/params/edit_preferences_params.dart';
import '../../domain/usecase/user_usecase/add_favorite_sports_usecse.dart';
import '../../domain/usecase/user_usecase/check_user_logged_usecase.dart';
import '../../domain/usecase/user_usecase/complete_resgisteration_usecase.dart';
import '../../domain/usecase/user_usecase/confirm_user_email_usecase.dart';
import '../../domain/usecase/user_usecase/delete_favorite_sports_usecse.dart';
import '../../domain/usecase/user_usecase/delete_user_profile.dart';
import '../../domain/usecase/user_usecase/edit__user_profile_usecase.dart';
import '../../domain/usecase/user_usecase/edit_preferences_usecase.dart';
import '../../domain/usecase/user_usecase/get_sports_usecase.dart';
import '../../domain/usecase/user_usecase/get_user_profile_usecase.dart';
import '../../domain/usecase/user_usecase/google_login_usecase.dart';
import '../../domain/usecase/user_usecase/login_usecase.dart';
import '../../domain/usecase/user_usecase/logout_usecase.dart';
import '../../domain/usecase/user_usecase/register_usecase.dart';
import '../../domain/usecase/user_usecase/resend_confirm_user_email_usecase.dart';
import '../pages/login_page.dart';
import '../pages/otp_page.dart';
import '../pages/welcome_page.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final GoogleLoginUseCase googleLoginUseCase;
  final RegisterUseCase registerUseCase;
  final EditUserProfileUseCase editUserProfileUseCase;
  final GetsportsUseCase getsportsUseCase;
  final GetUserProfileUseCase getUserProfileUseCase;
  final AccountStatusUseCase accountStatusUseCase;
  final CompleteRegistrationUseCase completeRegistrationUseCase;
  final LogoutUserUseCase logoutUserUseCase;
  final EditPreferencesUseCase editPreferencesUseCase;
  final ConfirmUserEmailUseCase confirmUserEmailUseCase;
  final ResendConfirmUserEmailUseCase resendConfirmUserEmailUseCase;
  final AddFavoriteSportsUseCase addFavoriteSportsUseCase;
  final DeleteFavoriteSportsUseCase deleteFavoriteSportsUseCase;
  final DeleteUserProfileUseCase deleteUserProfileUseCase;
  final ChangeEmailUseCase changeEmailUseCase;
  final ChangePasswordUseCase changePasswordUseCase;

  AuthBloc(
    this.registerUseCase,
    this.googleLoginUseCase,
    this.loginUseCase,
    this.editUserProfileUseCase,
    this.getsportsUseCase,
    this.getUserProfileUseCase,
    this.accountStatusUseCase,
    this.completeRegistrationUseCase,
    this.logoutUserUseCase,
    this.editPreferencesUseCase,
    this.confirmUserEmailUseCase,
    this.resendConfirmUserEmailUseCase,
    this.addFavoriteSportsUseCase,
    this.deleteFavoriteSportsUseCase,
    this.deleteUserProfileUseCase,
    this.changeEmailUseCase,
    this.changePasswordUseCase,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (event) async => await _login(event, emit),
        googleLogin: (event) async => await _googleLogin(event, emit),
        register: (event) async => await _register(event, emit),
        deleteUserProfile: (event) async =>
            await _deleteUserProfile(event, emit),
        editUserProfile: (event) async => await _editUserProfile(event, emit),
        confirmUserEmail: (event) async => await _confirmUserEmail(event, emit),
        checkAccountStatus: (event) async =>
            await _checkAccountStatus(event, emit),
        resendconfirmUserEmail: (event) async =>
            await _resendconfirmUserEmail(event, emit),
        completeRegistration: (event) async =>
            await _completeRegistration(event, emit),
        getSports: (event) async => await _getSports(event, emit),
        getUserProfile: (event) async => await _getUserProfile(event, emit),
        editPreferences: (event) async => await _editPreferences(event, emit),
        addFavoriteSports: (event) async =>
            await _addFavoriteSports(event, emit),
        deleteFavoriteSports: (event) async =>
            await _deleteFavoriteSports(event, emit),
        changeEmail: (event) async => await _changeEmail(event, emit),
        changePassword: (event) async => await _changePassword(event, emit),
      );
    });
  }

  List<SportEntity> sports = [];
  UserProfileEntity? user;

  Future<void> _register(event, Emitter<AuthState> emit) async {
    event as _$RegisterEventImpl;
    emit(const AuthState.registerLoading());
    EasyLoadingInit.startLoading();

    final result = await registerUseCase();

    await result.fold((f) async {
      await EasyLoading.dismiss();
      if (f.statusCode == 500) {
        EasyLoading.showError(f.message);
      } else {
        EasyLoading.showError(f.message);
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
      (f) async {
        EasyLoading.showError(f.message);
        emit(const AuthState.confirmEmailFailure());
        await EasyLoading.dismiss();
      },
      (r) async {
        await EasyLoading.dismiss();

        emit(AuthState.emailConfirmed(
          sports: r,
        ));
        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => const WelcomePage()),
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
      (f) async {
        EasyLoading.showError(f.message);
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

    await result.fold((f) async {
      if (f.statusCode == 500) {
        EasyLoading.showError(f.message);
      } else {
        EasyLoading.showError(f.message);
      }
      emit(const AuthState.logginFailure());
    }, (r) async {
      await EasyLoading.dismiss();
      if (r.toString().isNotEmpty) {
        emit(AuthState.loggedIn(user: r));
        emit(AuthState.userProfileFetched(userProfile: r));

        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      }
    });
  }

  Future<void> _googleLogin(event, Emitter<AuthState> emit) async {
    event as _$GoogleLoginEventImpl;
    add(const AuthEvent.getSports());
    print('entered _googleLogin');
    emit(const AuthState.googleLogginLoading());
    EasyLoadingInit.startLoading();

    final result = await googleLoginUseCase();

    await result.fold((f) async {
      emit(AuthState.sportsFetched(sports: sports));
      emit(AuthState.userProfileFetched(userProfile: user));

      print(f);
      if (f.statusCode == 500) {
        print('Bloc 500');

        await EasyLoading.dismiss();

        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => const WelcomePage()),
        );
      } else {
        emit(AuthState.sportsFetched(sports: sports));

        EasyLoading.showError(f.message);
      }
    }, (r) async {
      print('_googleLogin $r');

      await EasyLoading.dismiss();
      if (r.user != null) {
        emit(AuthState.sportsFetched(sports: sports));

        emit(AuthState.googleLoggedIn(user: r));
        emit(AuthState.userProfileFetched(userProfile: r));

        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      } else {
        emit(AuthState.sportsFetched(sports: sports));

        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => const WelcomePage()),
        );
      }
    });
  }

  Future<void> _checkAccountStatus(event, Emitter<AuthState> emit) async {
    event as _$checkAccountStatusEventImpl;
    emit(const AuthState.checkUserLoading());
    final result = await accountStatusUseCase();

    result.fold((l) {
      emit(const AuthState.checkUserFailure());
    }, (isLogged) {
      if (isLogged == UserAuthState.loggedIn) {
        emit(const AuthState.checkAccountStatus(
            userAuthState: UserAuthState.loggedIn));
      }
      if (isLogged == UserAuthState.welcome) {
        emit(const AuthState.checkAccountStatus(
            userAuthState: UserAuthState.welcome));
      }
      if (isLogged == UserAuthState.guest) {
        emit(const AuthState.checkAccountStatus(
            userAuthState: UserAuthState.guest));
      }
      if (isLogged == UserAuthState.otp) {
        emit(const AuthState.checkAccountStatus(
            userAuthState: UserAuthState.otp));
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
      (f) async {
        EasyLoading.showError(f.message);
        emit(AuthState.completeRegistrationailure(failure: f));
      },
      (r) {
        emit(AuthState.registrationCompleted(userProfile: r));
        emit(AuthState.userProfileFetched(userProfile: r));

        Navigator.of(navigatorKey.currentContext!).push(
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      },
    );
    EasyLoading.dismiss();
  }

  Future<void> _editUserProfile(event, Emitter<AuthState> emit) async {
    event as _$EditUserProfileEventImpl;
    emit(const AuthState.userProfileLoading());
    EasyLoadingInit.startLoading();

    final result = await editUserProfileUseCase(params: event.params);

    await result.fold((f) async {
      await EasyLoading.dismiss();
      if (f.statusCode == 500) {
        EasyLoading.showError(f.message);
      } else {
        EasyLoading.showError(f.message);
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

  Future<void> _getUserProfile(event, Emitter<AuthState> emit) async {
    event as _$GetUserProfileEventImpl;
    emit(const AuthState.userProfileLoading());
    final result = await getUserProfileUseCase();
    result.fold((failure) {
      if (failure.statusCode == 401) {
        add(const AuthEvent.checkAccountStatus());
      }
      emit(const AuthState.userProfileFailure());
    }, (UserProfileEntity? userProfile) {
      if (userProfile != null) {
        user = userProfile;
        emit(AuthState.userProfileFetched(userProfile: userProfile));
        print('eventuserProfileFetched');
      }
    });
  }

  Future<void> _editPreferences(event, Emitter<AuthState> emit) async {
    event as _$EditPreferencesEventImpl;
    emit(const AuthState.userProfileLocalLoading());
    final result = await editPreferencesUseCase(params: event.params);
    result.fold((f) {}, (r) {
      AuthState.userProfileFetched(
        userProfile: r,
      );
    });
  }

  Future<void> _addFavoriteSports(event, Emitter<AuthState> emit) async {
    event as _$AddFavoriteSportsEventImpl;
    emit(const AuthState.userProfileLocalLoading());
    final result = await addFavoriteSportsUseCase(sportsIds: event.sportsIds);
    result.fold((f) {}, (r) {
      emit(AuthState.userProfileFetched(
        userProfile: r,
      ));
    });
  }

  Future<void> _deleteFavoriteSports(event, Emitter<AuthState> emit) async {
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

  Future<void> _getSports(event, Emitter<AuthState> emit) async {
    event as _$GetSportsEventImpl;
    emit(const AuthState.getSportsLoading());
    final result = await getsportsUseCase();
    await result.fold((f) {
      emit(AuthState.getSportsFailure(failure: f));
    }, (r) async {
      String? sportsJsonString =
          await sl<SecureStorageService>().read('sports');
      if (sportsJsonString == null) {
        return <SportEntity>[];
      }

      List<dynamic> sportsJson = json.decode(sportsJsonString);
      sports = sportsJson
          .map<SportEntity>((json) => SportModel.fromJson(json))
          .toList();

      emit(AuthState.sportsFetched(sports: r));
    });
  }

  Future<void> _deleteUserProfile(event, Emitter<AuthState> emit) async {
    event as _$DeleteUserProfileEventImpl;
    EasyLoadingInit.startLoading();
    emit(const AuthState.userProfileLocalLoading());
    final result = await deleteUserProfileUseCase();
    result.fold((f) {
      EasyLoading.showError(f.message);
    }, (r) async {
      EasyLoading.dismiss();
      await sl<SecureStorageService>().delete('token');

      Navigator.of(navigatorKey.currentContext!).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginPage()),
        ModalRoute.withName('/'),
      );
    });
  }

  Future<void> _changeEmail(event, Emitter<AuthState> emit) async {
    event as _$ChangeEmailEventImpl;
    EasyLoadingInit.startLoading();
    emit(const AuthState.changeEmailLoading());
    final result = await changeEmailUseCase();
    result.fold((f) {
      emit(const AuthState.changeEmailFailure());
      EasyLoading.showError(f.message);
    }, (r) async {
      await sl<SecureStorageService>().delete('token');
      emit(const AuthState.emailChanged());
      EasyLoading.dismiss();
      Navigator.of(navigatorKey.currentContext!).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const OtpPage()),
        ModalRoute.withName('/'),
      );
    });
  }

  Future<void> _changePassword(event, Emitter<AuthState> emit) async {
    event as _$ChangePasswordEventImpl;
    EasyLoadingInit.startLoading();
    emit(const AuthState.changePasswordLoading());
    final result = await changePasswordUseCase();
    result.fold((f) {
      EasyLoading.dismiss();

      emit(const AuthState.changePasswordFailure());
      Dialogs.changeProfileDataDialog(
          context: navigatorKey.currentContext!,
          isSuccess: false,
          error: f.message);
    }, (r) async {
      EasyLoading.dismiss();

      await sl<SecureStorageService>().delete('token');
      Dialogs.changeProfileDataDialog(
          context: navigatorKey.currentContext!,
          isSuccess: true,
          error:
              'سيتم تسجيل الخروج من حسابك, يرجى الدخول مرة أخرى باستخدام كلمة المرور الجديدة');

      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(navigatorKey.currentContext!).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const LoginPage()),
          ModalRoute.withName('/'),
        );
      });
    });
  }
}
