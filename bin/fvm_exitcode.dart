import 'dart:io';

void main() async {
  var flutterOutput = await Process.run(
    'flutter',
    ['doctor'],
    runInShell: Platform.isWindows,
  );
  print(flutterOutput.stdout);
  print(['exitcode', flutterOutput.exitCode]);
  var listOutput = await Process.run(
    'fvm',
    ['list'],
    runInShell: Platform.isWindows,
  );
  print(listOutput.stdout);
  print(['exitcode', listOutput.exitCode]);
  var fvmOutput = await Process.run(
    'fvm',
    ['flutter', 'doctor'],
    runInShell: Platform.isWindows,
  );
  print(fvmOutput.stdout);
  print(['exitcode', fvmOutput.exitCode]);
}
