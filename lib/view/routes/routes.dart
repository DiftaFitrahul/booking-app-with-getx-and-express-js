import 'package:booking_app/view/bindings/intro_page.dart';
import 'package:booking_app/view/bindings/main_page.dart';
import 'package:booking_app/view/bindings/organizer.dart';
import 'package:booking_app/view/pages/auth/login_page.dart';
import 'package:booking_app/view/pages/auth/register_page.dart';
import 'package:booking_app/view/pages/auth/reset_password_page.dart';
import 'package:booking_app/view/pages/auth/verification_page.dart';
import 'package:booking_app/view/pages/profile/detail_organizer_event.dart';
import 'package:booking_app/view/pages/event/event_detail.dart';
import 'package:booking_app/view/pages/home/home.dart';
import 'package:booking_app/view/pages/intro/slider_page.dart';
import 'package:booking_app/view/pages/main_page.dart';
import 'package:booking_app/view/pages/notification/notification.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:get/get.dart';

class Routes {
  const Routes._();
  static final pages = [
    GetPage(
        name: RoutesName.intro,
        page: () => const IntroPage(),
        binding: IntroPageBinding()),
    GetPage(
      name: RoutesName.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RoutesName.register,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: RoutesName.resetPassword,
      page: () => const ResetPasswordPage(),
    ),
    GetPage(
      name: RoutesName.verification,
      page: () => const VerificationPage(),
    ),
    GetPage(
      name: RoutesName.home,
      page: () => const HomePage(),
    ),
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
