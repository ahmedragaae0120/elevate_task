import 'package:bloc/bloc.dart';
import 'package:elevate_task/core/Di/di.dart';
import 'package:elevate_task/core/api/api_manger.dart';
import 'package:elevate_task/myApp.dart';
import 'package:elevate_task/presentation/observer/blocObserve.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  ApiManger.init();
  Bloc.observer = MyBlocObserver();
  runApp(const Myapp());
}
