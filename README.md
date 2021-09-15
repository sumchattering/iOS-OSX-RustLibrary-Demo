# iOS-OSX-RustLibrary-Demo

## Introduction

Rust is a modern cross platform language and many companies are now using it as a cross platform solution instead of C/C++ beacuse of its many advantages. Here is an example setup for iOS/OSX to have cross-platform code in rust and then use it from the iOS / OSX app.

## Setup

Step 1. **Install Xcode** First, we have to [install Xcode](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12) and then set up Xcode build tools. If you already have the build tools installed and they are up to date, you can skip this step.

```
xcode-select --install
```

Step 2. **Install Rust** We need to ensure that Rust is installed and that we can cross compile to the iOS architectures. For this we will be using [rustup](https://www.rustup.rs/). If you already have rustup installed, you can skip this step. 

```
curl https://sh.rustup.rs -sSf | sh
```

Step 3. **Add all iOS architectures**. Add the iOS architectures to rustup so we can use them during cross compilation.

```
rustup target add aarch64-apple-ios armv7-apple-ios armv7s-apple-ios x86_64-apple-ios i386-apple-ios
```

Step 4. **cargo-lipo** When you installed Rust, it also installed cargo, which is a package manager similar to pip, gems etc. Now we will use cargo to install `cargo-lipo`. This is a cargo subcommand which automatically creates a universal library for use with iOS. Without this crate, cross compiling Rust to work on iOS is infinitely harder.

Step 5. **Rust Xcode Plugin** Install the Rust Xcode Plugin from https://github.com/BrainiumLLC/rust-xcode-plugin. Clone the directory and run the setup.sh file as root using sudo. You will have to quit and reinstall Xcode at which point you should see a popup to load the bundle.

## References

1. ##### Building and Deploying a Rust library on iOS https://mozilla.github.io/firefox-browser-architecture/experiments/2017-09-06-rust-on-ios.html

2. ##### Cargo lip macos building issue on BigSur https://github.com/TimNN/cargo-lipo/issues/41