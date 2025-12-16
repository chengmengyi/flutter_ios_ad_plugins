import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_ios_ad_plugins_platform_interface.dart';

/// An implementation of [FlutterIosAdPluginsPlatform] that uses method channels.
class MethodChannelFlutterIosAdPlugins extends FlutterIosAdPluginsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_ios_ad_plugins');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
