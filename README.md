# COMP2006 Coursework

This is Victor Rijnoveanu's coursework for the COMP2006 module of C++ programming.

## Building and Running

### Linux

#### With vcpkg

- Install CMake, GCC, Ninja, autoconf, autoconf-archive and libtoolize using your distro's package manager
- [Install vcpkg](https://learn.microsoft.com/en-us/vcpkg/get_started/get-started)
    - Have it pointed at least to commit `8e340d35bd96de57321f8deb0f3f94a0d3151a42`
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

- Install CMake, GCC, Ninja, sdl2, sdl2-image and sdl2-ttf using your distro's package manager
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