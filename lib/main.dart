import 'package:booking_app/features/home/cubit/filter_cubit.dart';
import 'package:booking_app/features/home/cubit/home_cubit.dart';
import 'package:booking_app/view/routes/routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(),
        ),
        BlocProvider<FilterCubit>(
          create: (context) => FilterCubit(),
        )
      ],
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routerConfig: GoRouteClass.routerConfig(),
      ),
    );
  }
}
