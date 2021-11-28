// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_database/firebase_database.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i17;
import 'application/auth/sign_up_form/email_form/email_form_bloc.dart' as _i18;
import 'application/auth/sign_up_form/password_form/password_form_bloc.dart'
    as _i13;
import 'application/auth/sign_up_form/profile_picture_form/profile_picture_form_bloc.dart'
    as _i22;
import 'application/auth/sign_up_form/username_form/username_form_bloc.dart'
    as _i15;
import 'application/auth/signin_form/signin_form_bloc.dart' as _i14;
import 'application/ui/account/account_bloc.dart' as _i16;
import 'application/ui/home_page/home_page_bloc.dart' as _i19;
import 'application/ui/inbox/inbox_bloc.dart' as _i11;
import 'application/ui/navigation_bar/navigation_bar_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/user/i_image_picker.dart' as _i20;
import 'domain/user/i_user_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/injectable_module.dart' as _i23;
import 'infrastructure/user/firebase_user_repository.dart' as _i9;
import 'infrastructure/user/image_picker_plugin.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseDatabase>(
      () => injectableModule.firebaseDatabase);
  gh.lazySingleton<_i5.FirebaseStorage>(() => injectableModule.firebaseStorage);
  gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i4.FirebaseDatabase>()));
  gh.lazySingleton<_i8.IUserRepository>(() => _i9.FirebaseUserRepository(
      get<_i4.FirebaseDatabase>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i10.ImagePicker>(() => injectableModule.imagePicker);
  gh.factory<_i11.InboxBloc>(
      () => _i11.InboxBloc(get<_i8.IUserRepository>(), get<_i6.IAuthFacade>()));
  gh.factory<_i12.NavigationBarBloc>(() => _i12.NavigationBarBloc());
  gh.factory<_i13.PasswordFormBloc>(
      () => _i13.PasswordFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i14.SigninFormBloc>(
      () => _i14.SigninFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i15.UsernameFormBloc>(
      () => _i15.UsernameFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i16.AccountBloc>(() =>
      _i16.AccountBloc(get<_i6.IAuthFacade>(), get<_i8.IUserRepository>()));
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i18.EmailFormBloc>(
      () => _i18.EmailFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i19.HomePageBloc>(() =>
      _i19.HomePageBloc(get<_i8.IUserRepository>(), get<_i6.IAuthFacade>()));
  gh.lazySingleton<_i20.IImagePicker>(
      () => _i21.ImagePickerPlugin(get<_i10.ImagePicker>()));
  gh.factory<_i22.ProfilePictureFormBloc>(() => _i22.ProfilePictureFormBloc(
      get<_i20.IImagePicker>(),
      get<_i6.IAuthFacade>(),
      get<_i8.IUserRepository>()));
  return get;
}

class _$InjectableModule extends _i23.InjectableModule {}
