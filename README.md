# COMP2006 Coursework

This is Firstname Lastname's coursework for the COMP2006 module of C++ programming.

## Building and Running

First and foremost, ensure you hve a working git lfs installation before cloning the repository, as the assets are
stored using git lfs. You can check if you have git lfs installed by running `git lfs version` in your terminal.
If you don't have it installed, you can follow the instructions on the [git lfs website](https://git-lfs.com/)
to set it up.

### Linux & macOS

#### With vcpkg

- Install CMake, GCC/Clang (Clang comes with Xcode build tools), Ninja, autoconf, autoconf-archive and libtoolize
  (usually from libtool) using your distro's package manager / homebrew on macOS
- [Install vcpkg](https://learn.microsoft.com/en-us/vcpkg/get_started/get-started)
    - Have it pointed at least to commit `1e199d32ad53aab1defda61ce41c380302e3f95c`
    - Ensure `VCPKG_ROOT` is set
- Compile using one of the cmake presets
  - For debug mode:
    ```bash
    cmake --preset debug
    cmake --build --preset debug
    ```
  - For release mode:
    ```bash
    cmake --preset release
    cmake --build --preset release
    ```
  - Run the binary located inside `cmake-build-debug/app` or `cmake-build-release/app` depending on the preset used

#### Without vcpkg

- Install CMake, GCC/Clang (Clang comes with Xcode build tools), Ninja, sdl3, sdl3-ttf, sdl3-image using your distro's
  package manager / homebrew on macOS
- Compile with CMake (optionally set a build type):
  - For debug mode:
    ```bash
    cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
    cmake --build build
    ```
  - For release mode:
    ```bash
    cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
    cmake --build build
    ```
- Run the binary located inside `build/app`

### Windows
- Install Visual Studio 2026 Build Tools with the "Desktop development with C++" workload
- Open "Developer PowerShell for VS 18" and navigate to the project directory
- Compile using one of the cmake presets
  - For debug mode:
    ```powershell
    cmake --preset debug
    cmake --build --preset debug
    ```
  - For release mode:
    ```powershell
    cmake --preset release
    cmake --build --preset release
    ```
- Run the binary located inside `cmake-build-debug\app` or `cmake-build-release\app` depending on the preset used