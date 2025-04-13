
import 'package:flutter_bloc/flutter_bloc.dart'; // Use flutter_bloc for Cubit
import 'package:movie/presentation/splash/bloc/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appStarted() async {
    await Future.delayed(Duration(seconds: 2));

    // TODO: Add actual auth check here if needed
    emit(Authenticated());
  }
}


