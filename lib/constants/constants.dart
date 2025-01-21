abstract class AppImages {
  static const String instagramIcon = "assets/images/instagram.png";
  static const String splashLogo = "assets/images/Instagram Logo (1).png";
}

abstract class AppRoutes {
  static const auth = _AuthRoutes();
  static const String home = '/home';
}

class _AuthRoutes {
  const _AuthRoutes();
  final login = '/login';
  final signup = '/signup';
}

abstract class AppFonts {
  static const String inter = "Regular";
}
