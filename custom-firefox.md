1. Find your profile folder (hence referred to as ${PROFILE}): 
Go to `about:support` and look at the line that says "Profile Directory".

2. Go to `about:config`:
Toggle to `true` the following flags.
```
    toolkit.legacyUserProfileCustomizations.stylesheets
    layers.acceleration.force-enabled
    gfx.webrender.all
    gfx.webrender.enabled
    layout.css.backdrop-filter.enabled
    svg.context-properties.content.enabled
```

Reference: https://github.com/FirefoxCSS-Store/FirefoxCSS-Store.github.io/blob/main/README.md#generic-installation

3. Close Firefox.

4. Add the below code in `${PROFILE}/chrome/userChrome.css` (create the folder and file if it doesn't already exist):
```
#TabsToolbar
{
    visibility: collapse;
}
```
5. Start up Firefox again.
