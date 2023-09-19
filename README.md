<h1 align="center">Flutter Monorepo sample</h1>
<p align="center">
   <a href="https://github.com/rohitkaradkar-tw/flutter-monorepo-sample/actions/workflows/cd.yml">
      <img src="https://github.com/rohitkaradkar-tw/flutter-monorepo-sample/actions/workflows/cd.yml/badge.svg?branch=main">
   </a>
   <a href="https://rohitkaradkar-tw.github.io/flutter-monorepo-sample">
      <img src="https://img.shields.io/badge/web_app-gray?logo=googlechrome&logoColor=white">
   </a>
</p>

### Instructions
1. Set Dart SDK path if needed. See [this guide](https://stackoverflow.com/a/64934005).
2. Activate [Melos tool](https://melos.invertase.dev/)
    ```bash
    dart pub global activate melos 
    ```
3. Link plugins and generate IDE runtime configurations
    ```bash
    melos bootstrap
    ```
4. Install git hooks
    ```bash
    chmod +x tools/install-git-hooks.sh
    ./tools/install-git-hooks.sh
    ```
