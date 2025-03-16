part of '../sdpify.dart';

/// [ScreenType] is an enum class which contains type of the device screens
///
enum ScreenType {
  /// [undefined] Defines
  /// when [Config] struggles to retrieve device [ScreenType]
  ///
  undefined,

  /// [small] Defines for
  /// Small Sizes Mobile Devices
  ///
  small,

  /// [medium] Defines for
  /// Medium Sizes Mobile Devices
  ///
  medium,

  /// [large] Defines for
  /// Large Sizes Mobile Devices
  large,

  /// [extraLarge] Defines for Tablets
  ///
  extraLarge,

  /// [ultraLarge] Defines for Desktop
  ///
  ultraLarge,
}
