Android Debug Bridge (adb) is a versatile command-line tool that lets you communicate with a device. The adb command facilitates a variety of device actions, such as installing and debugging apps, and it provides access to a Unix shell that you can use to run a variety of commands on a device.

!!! note
    To see all of the documentation, visit [https://developer.android.com/](https://developer.android.com/studio/command-line/adb)

## Package Manager (pm)

Within an adb shell, you can issue commands with the package manager (pm) tool to perform actions and queries on app packages installed on the device. While in a shell, the syntax is:

```bash
pm command
```

You can also issue a package manager command directly from adb without entering a remote shell. For example:

```bash
adb shell pm path com.example.app
```

### Commands Used

| Command | Description |
|:--------|:------------|
|adb shell pm list packages|Lists all packages currently installed on the phone|
|adb shell pm path *package name*|Print the path to the APK of the given *package name*|
|adb pull *remote* *local* |Copies the APK from the path and copies it to a *local* directory on the computer|
|sed -e 's/\package://g'|Removes `package:` from the output of *pm* commands|
|awk 'NR==1{print $1}'|Only prints the first line of output if the *pm path* gives more than one|

!!! note
    *sed* and *awk* are not `adb` commands but are required for the command to work.
