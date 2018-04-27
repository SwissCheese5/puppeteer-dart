import 'dart:async';
import '../src/connection.dart';

class DeviceOrientationManager {
  final Client _client;

  DeviceOrientationManager(this._client);

  /// Overrides the Device Orientation.
  /// [alpha] Mock alpha
  /// [beta] Mock beta
  /// [gamma] Mock gamma
  Future setDeviceOrientationOverride(
    num alpha,
    num beta,
    num gamma,
  ) async {
    Map parameters = {
      'alpha': alpha,
      'beta': beta,
      'gamma': gamma,
    };
    await _client.send(
        'DeviceOrientation.setDeviceOrientationOverride', parameters);
  }

  /// Clears the overridden Device Orientation.
  Future clearDeviceOrientationOverride() async {
    await _client.send('DeviceOrientation.clearDeviceOrientationOverride');
  }
}
