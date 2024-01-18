import 'package:get/get.dart';

import '../modules/article/bindings/article_binding.dart';
import '../modules/article/views/article_view.dart';
import '../modules/chatbot/bindings/chatbot_binding.dart';
import '../modules/chatbot/views/chatbot_view.dart';
import '../modules/counseling/bindings/counseling_binding.dart';
import '../modules/counseling/views/counseling_view.dart';
import '../modules/counselingAppointment/bindings/counseling_appointment_binding.dart';
import '../modules/counselingAppointment/views/counseling_appointment_view.dart';
import '../modules/counselingDetails/bindings/counseling_details_binding.dart';
import '../modules/counselingDetails/views/counseling_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/selfCare/bindings/self_care_binding.dart';
import '../modules/selfCare/views/self_care_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnBoardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.COUNSELING,
      page: () => CounselingView(),
      binding: CounselingBinding(),
    ),
    GetPage(
      name: _Paths.COUNSELING_DETAILS,
      page: () => const CounselingDetailsView(),
      binding: CounselingDetailsBinding(),
    ),
    GetPage(
      name: _Paths.COUNSELING_APPOINTMENT,
      page: () => const CounselingAppointmentView(),
      binding: CounselingAppointmentBinding(),
    ),
    GetPage(
      name: _Paths.CHATBOT,
      page: () => const ChatPage(),
      binding: ChatbotBinding(),
    ),
    GetPage(
      name: _Paths.SELF_CARE,
      page: () => const SelfCareView(),
      binding: SelfCareBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLE,
      page: () => const ArticleView(),
      binding: ArticleBinding(),
    ),
  ];
}
