// test/flutter_patch_package_test.dart

import 'package:flutter_patch_package/flutter_patch_package.dart';
import 'package:flutter_patch_package/logger.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('findPackagePath returns a valid path for existing package', () {
    final logger = MockLogger();
    final patcher = FlutterPatcher('flutter_patch_package', MockLogger());

    final path = patcher.findPackagePath('flutter_patch_package', logger);

    expect(path, isNotNull);
  });
}
