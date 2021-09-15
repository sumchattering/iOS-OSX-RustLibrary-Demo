# iOS-OSX-RustLibrary-Demo

## Introduction

## Environment

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

## New Project Setup

First we create a new multiplatform iOS-OSX project in Xcode from `File\New\Project…` and select the `iOS\Application\Single View Application` template

![Screen Shot 2021-09-15 at 12.40.57 PM](/Users/sumeruchatterjee/Library/Application Support/typora-user-images/Screen Shot 2021-09-15 at 12.40.57 PM.png)

To make a cargo library we run the following command from the command line 

```bash
cargo new RustLibrary --lib
```

This should create all necessary files for the library. To build our RustLibrary we use

```bash
cargo lipo --release
```

from inside the RustLibrary directory.

## Limitations

## Future Work

## References

1. ##### Building and Deploying a Rust library on iOS https://mozilla.github.io/firefox-browser-architecture/experiments/2017-09-06-rust-on-ios.html

2. 