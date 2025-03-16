part of '../sdpify.dart';

/// [SdpifyBuilder] is the type of [Sdpify] builder function
/// it return a [Widget] and by params it get [BuildContext]
///
typedef SdpifyBuilder = Widget Function(BuildContext);

class Sdpify extends StatelessWidget {
  /// [screenType] is static variable for global access
  /// It can Access like [Sdpify.screenType] this
  ///
  static ScreenType screenType = ScreenType.medium;

  const Sdpify({
    super.key,
    required this.builder,
    this.isBreakPointEnabled = true,
  });

  final SdpifyBuilder builder;
  final bool isBreakPointEnabled;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return OrientationBuilder(
          builder: (context, orientation) {
            screenType = Config().init(
              context: context,
              constraint: constraint,
              orientation: orientation,
              isBreakPointEnabled: isBreakPointEnabled,
            );

            return builder(context);
          },
        );
      },
    );
  }
}
