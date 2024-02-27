import 'package:booking_app/features/home/views/screen/home.dart';
import 'package:booking_app/features/users/login/view/intro.dart';
import 'package:booking_app/features/users/login/view/login.dart';
import 'package:booking_app/features/users/login/view/reset_password.dart';
import 'package:booking_app/features/users/register/view/register.dart';
import 'package:booking_app/features/users/register/view/verification.dart';
import 'package:booking_app/view/bindings/main_page.dart';
import 'package:booking_app/view/bindings/organizer.dart';

import 'package:booking_app/view/pages/profile/detail_organizer_event.dart';
import 'package:booking_app/view/pages/event/event_detail.dart';
import 'package:booking_app/view/pages/main_page.dart';
import 'package:booking_app/view/pages/notification/notification.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class Routes {
  const Routes._();
  static final pages = [
    GetPage(
      name: RoutesName.eventDetail,
      page: () => const EventDetailPage(),
    ),
    GetPage(
      name: RoutesName.main,
      page: () => const MainPage(),
      binding: MainPageBinding(),
    ),
    GetPage(
      name: RoutesName.notification,
      page: () => const NotificationPage(),
    ),
    GetPage(
      name: RoutesName.detailOrganizerEvent,
      page: () => const DetailOrganizerEvent(),
      binding: OrganizerBinding(),
    )
  ];
}

class GoRouteClass {
  static final GoRouteClass _singleton = GoRouteClass._internal();

  factory GoRouteClass() {
    return _singleton;
  }

  GoRouteClass._internal();

  static RouterConfig<Object>? routerConfig() {
    return GoRouter(
      initialLocation: RoutesName.intro,
      routes: [
        GoRoute(
          name: RoutesName.intro,
          path: RoutesName.intro,
          builder: (context, state) {
            return const IntroPage();
          },
        ),
        GoRoute(
          name: RoutesName.login,
          path: RoutesName.login,
          builder: (context, state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          name: RoutesName.register,
          path: RoutesName.register,
          builder: (context, state) {
            return const RegisterPage();
          },
        ),
        GoRoute(
          name: RoutesName.verification,
          path: RoutesName.verification,
          builder: (context, state) {
            return const OTPVerificationPage();
          },
        ),
        GoRoute(
          name: RoutesName.resetPassword,
          path: RoutesName.resetPassword,
          builder: (context, state) {
            return const ResetPasswordPage();
          },
        ),
        GoRoute(
          name: RoutesName.home,
          path: RoutesName.home,
          builder: (context, state) {
            return const HomePage();
          },
        )
      ],
      redirect: (context, state) {
        return null;
      },
    );
  }
}
