import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/core/utils/bloc_observer.dart';
import 'package:my_movie/core/utils/service_locator.dart';
import 'package:my_movie/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setupServerLocator();
  runApp(const MyApp());
}

