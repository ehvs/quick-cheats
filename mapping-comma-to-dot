# How to change from 'comma' to 'dot'
## Issue
When hitting 'Del/.' in my numpad it sends 'comma' instead of a 'dot'.
## Environment
RHEL 8
Input source: Portuguese (Brazil, IBM/Lenovo Thinkpad)
### Steps
1. Check the keycode mapping
~~~
xmodmap -pke | less
~~~
2. On my keyboard, I figured that `keycode 91` refers to the 'Del/.' in my numpad.
~~~
keycode  91 = KP_Delete KP_Separator KP_Delete KP_Separator
~~~

3. Replace to
~~~
xmodmap -e 'keycode 91 = KP_Delete period KP_Delete period KP_Delete period '
~~~
4. To make the change persistent, add into the `~/.bashrc` file.
