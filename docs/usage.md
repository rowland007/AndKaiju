# Linux

Currently, the command only works in linux.

!!! success "Requirement"
    This command uses `adb` so you need to have the Android SDK installed or at least the platform tools. Easiest way to install them is by installing [Android Studio](https://developer.android.com/studio/).

## Install

To install the command, you can copy & paste the contents of the *AndKaiju.bash* file into your *.bashrc* file. Then run:

```bash
source ~/.bashrc
```

This will update your bash terminal to the latest environmental variables.

!!! note
    Remember where Android Studio installs the SDK. You may need to modify the `TOOLS` variable to the location of your SDK.

## Usage

You can now use the command followed by one argument to search the phone and rip the APK.

!!! success "Requirement"
    On the Android Phone, you will need to enable *USB debugging* in the Developer Options.

```bash
steal wellsfargo
```

!!! note
    Only type the argument as one word, for example, for [Credit Karma](https://www.creditkarma.com/), you would type `creditkarma` as one word. You may also try `karma` and see if it steals it.
    
!!! warning
    If you have more than one app that has similar names, this command will only steal the first one. For example, if you have Credit Karma and [Credit Wise](https://creditwise.capitalone.com/home) installed on your phone and only search for `credit`, you may not know which app you get.
