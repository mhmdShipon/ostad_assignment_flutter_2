enum CustomColor {
  primary,
  secondary,
  lightGrey,
  charcoalGrey,
}

extension CustomColorExtension on CustomColor {
  int get value {
    switch(this) {
      case CustomColor.primary:
        return 0xFF2CAB00;
      case CustomColor.secondary:
        return 0xFF7ACA5E;
      case CustomColor.lightGrey:
        return 0xFFEFEFEF;
      case CustomColor.charcoalGrey:
        return 0xFF1E1E1E;
      default:
        return 0xFFFFFF;
    }
  }
}