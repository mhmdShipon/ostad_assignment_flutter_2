enum Routes {
  home,
  detail,
}

extension RoutesExtension on Routes {
  String get route {
    switch(this) {
      case Routes.home:
        return '/${Routes.home.name}';
      case Routes.detail:
        return '/${Routes.detail.name}';
      default:
        return '/';
    }
  }
}