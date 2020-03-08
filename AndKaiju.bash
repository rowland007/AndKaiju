TOOLS=/home/$USER/Android/Sdk/platform-tools/

steal() {
    if [ -d $TOOLS ]; then
    export PATH="$PATH:$TOOLS"
    adb pull $(adb shell pm path $(adb shell pm list packages | grep $1 | sed -e 's/\package://g') | sed -e 's/\package://g' | awk 'NR==1{print $1}') $1.apk
  else
    "Android platform-tools not found"
}