# Flutter Patch Package

Enhance your Flutter projects with `flutter_patch_package`, the ultimate tool for instantaneously applying and managing patches to your Flutter packages. Live on the edge with minimal hassle!

## Features

- **Instant Patches**: Instantly apply fixes to Flutter packages.
- **Version Alerts**: Receive notifications about version mismatches.
- **Error Logging**: Automatic logging for failed patch attempts ensures you're always informed.

## Quick Start

Integrate `flutter_patch_package` into your project by following these simple steps.

### Installation

Add `flutter_patch_package` to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_patch_package: ^1.0.0

Then, run the following command:
`flutter pub get`

## Usage

To seamlessly integrate and manage patches with `flutter_patch_package`, follow these steps:

1. **Start Patching**: Before making changes to a package, save its original state. Navigate to the package directory in `.pub-cache` and execute:
`flutter patch <package_name> start`
This command prepares the package for patching by saving a snapshot of its current state for later comparison.

2. **Apply Your Changes**: Modify the package directly in `.pub-cache` to fix issues or add new functionality. These changes can be made with any code editor.

3. **Finalize Patch**: After your modifications are complete, finalize the patch. This process compares the modified package to the original snapshot, generating a patch file that encapsulates your changes. Execute:
`flutter patch <package_name> done`

The generated patch file is stored in the `patches/` directory within your project. This file should be committed to your version control system to share the fix with your team or maintain it across environment setups.

### Applying Patches Automatically

Ensure your patches are re-applied automatically after every `flutter pub get` to maintain your modifications across setups. To do this, include a step in your build process or a script that runs:

`flutter pub run flutter_patch_package`

This version correctly groups the shell commands with their descriptive text, providing a clear, step-by-step guide for using your Flutter patch package.

Version Compatibility Warning `flutter_patch_package` smartly warns you about any version mismatches, ensuring smooth package upgrades.

Troubleshooting
If you encounter errors, refer to the logs/ directory for detailed diagnostics and quick troubleshooting.





# flutter_patch_package
