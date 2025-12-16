import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ios_ad_plugins_method_channel.dart';

abstract class FlutterIosAdPluginsPlatform extends PlatformInterface {
  /// Constructs a FlutterIosAdPluginsPlatform.
  FlutterIosAdPluginsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIosAdPluginsPlatform _instance = MethodChannelFlutterIosAdPlugins();

  /// The default instance of [FlutterIosAdPluginsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIosAdPlugins].
  static FlutterIosAdPluginsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIosAdPluginsPlatform] when
  /// they register themselves.
  static set instance(FlutterIosAdPluginsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
