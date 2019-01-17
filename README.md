# Tab Activity in FragmentLayout Template

Tab Activity in FragmentLayout Template for android studio

<img src="https://i.imgur.com/UaVdQwQ.png" width="200">

## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Prerequisites

- Before you begin to the installation, you need to install [Android Studio](https://developer.android.com/studio/).
- in your android studio project you must add this in your `build.gradle(app)` depedencies
```
dependencies {
  ...
  implementation 'com.android.support:design:28.0.0'
  ...
}
```
- and implement dataBinding in your `build.gradle(app)` android
```
android {
  ...
  dataBinding {
      enabled true
  }
  ...
}
```

### Installing

- Clone or download this repo
- Copy folder `TabActivityInFragmentTemplate` to 

for windows user:
```
{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/activities/
```
for mac user:
```
/Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities/
```
- open Android Studio (if you already opened android studio, restart it)
- right click on a package that you want to create the template in and select it from the `New` menu, as below:
<img src="https://i.imgur.com/daJd4ea.png" width="600">

- You will then be prompted to fill in the variables see the example below:
<img src="https://i.imgur.com/iYapkH2.png" width="600">

- You will see some error code, that's because you must `import` some code before you can continue.
- if the error has gone, you must add this in your `androidManifest.xml`

if this is your first activity, than use this code

```
<manifest ...>
    <application ...>
        
        <activity android:name="{name of your activity}">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />

                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
        
    </application>
</manifest>
```

but if there is another activity existed use this code

```
<manifest ...>
    <application ...>
        
        <activity android:name="{name of your activity}"></activity>
        
    </application>
</manifest>
```

- You can modify the code as you like.

## Running the app

to run your app. you can use your android device or use the emulator.
just click this icon ![Run icon](https://i.imgur.com/UPUZvN7.png)

<img src="https://i.imgur.com/UaVdQwQ.png" width="200">

## Authors

* **Anang Kurniawan** - *Initial work* - [AnangKur](https://github.com/anangkur)

## Acknowledgments

* [Franks Rebecca](https://riggaroo.co.za/custom-file-template-group-android-studiointellij/)
