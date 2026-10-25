# PC16 Week 11 — Asynchronous Programming in Dart

## Important note about the starting project
This is a **new beginner-friendly sample OOP project**, created because no Week 9–10 Dart source file was supplied. It is not represented as your earlier school project. If your instructor specifically requires the actual Week 9–10 classes, ask whether this new example is acceptable or replace the sample classes with your original classes.

## What the program demonstrates
- `LibraryItem` is an abstract base class.
- `Book` and `Magazine` are derived classes that override `describe()`.
- `Book.saveRecord()` returns `Future<String>` and uses `await Future.delayed(const Duration(seconds: 2))` to simulate saving a record.
- `main()` is asynchronous and calls the method with `await`.
- Two messages from `main()` are printed after the save starts but before its delayed completion. The save result is printed only after the Future completes.

## Requirements
- Dart SDK 3.0 or later
- Visual Studio Code (optional; Dart can also run from a terminal)
- Dart extension for VS Code recommended

Official references:
- Dart async programming: https://dart.dev/language/async
- Dart with VS Code: https://dart.dev/tools/vs-code

## Open and run in VS Code on Windows
1. Extract the project ZIP.
2. In VS Code, choose **File > Open Folder...** and select the `Week11_Dart_Async_OOP_Project` folder (the one containing `pubspec.yaml`).
3. Choose **Terminal > New Terminal**.
4. Confirm that `dir` lists `pubspec.yaml` and the `bin` folder.
5. Run these commands one at a time:

```powershell
dart --version
dart pub get
dart format .
dart run
```

You can also run the exact entry file with `dart run bin/week11_async_oop.dart`.

## Testing required by the activity
1. Run `dart run` and check the printed order against `expected_output.txt`.
2. Wait until the result is displayed; the save simulation is delayed by two seconds.
3. Run `dart run` a second time and verify that the same order is preserved.
4. Capture your own terminal screenshots. Do not use the expected-output file as proof that the program ran.

## Troubleshooting
- **`dart` is not recognized:** the SDK is not installed or its `bin` directory is not on Windows PATH. Open a new terminal after fixing PATH and retry `dart --version`.
- **`pubspec.yaml` not found:** the terminal is in the wrong directory. Use VS Code's **File > Open Folder...** to open this project root, then create a new terminal. Run `dir` and confirm `pubspec.yaml` appears.
- **Syntax error:** compare `bin/week11_async_oop.dart` with the provided file, especially `Future<String>`, braces, quotes, and `void`/`Future<void> main() async`.
- **`dart format .` says no paths:** confirm the command has the dot at the end and that the terminal is in the project root.

## Submission
The guide says to submit your `.dart` file or a GitHub repository link, as your instructor specifies. The main file is `bin/week11_async_oop.dart`. The screenshots listed in your instructions are useful supporting evidence, but the PDF does not name them as separate mandatory deliverables.

If using GitHub, create a repository (for example `pc16-week11-async-dart`), then from the project root run:

```powershell
git init
git add .
git commit -m "Add Week 11 Dart async OOP activity"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/pc16-week11-async-dart.git
git push -u origin main
```

Replace `YOUR-USERNAME` with your real GitHub username. If `git remote add origin` reports that `origin` already exists, use `git remote set-url origin https://github.com/YOUR-USERNAME/pc16-week11-async-dart.git` instead. Open the repository in the browser after pushing and confirm `bin/week11_async_oop.dart` is visible. Submit the URL only if your instructor permits GitHub links.

## Oral code-defense practice
Be ready to explain in your own words:
- `Future<String>` represents a string result that will be available later.
- `async` marks a function as asynchronous.
- `await` waits for the Future's result inside an async function.
- `Future.delayed` simulates a time-consuming operation by waiting two seconds.
- The messages printed before `await` appear before the delayed save completes because `saveRecord()` returns a pending Future while the rest of `main()` continues until it reaches `await`.
