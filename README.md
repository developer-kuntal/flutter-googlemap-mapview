# flutter_googlemap_mapview

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## mapview gradle file

group 'com.apptreesoftware.mapview'
version '1.0-SNAPSHOT'

buildscript {
    ext.kotlin_version = '1.3.20'
    repositories {
        google()
        jcenter()
    }

    dependencies {
        classpath 'com.android.tools.build:gradle:3.2.1'
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
    }
}

rootProject.allprojects {
    repositories {
        google()
        jcenter()
    }
}

apply plugin: 'com.android.library'
apply plugin: 'kotlin-android'

android {
    compileSdkVersion 28
    

    sourceSets {
        main.java.srcDirs += 'src/main/kotlin'
    }
    defaultConfig {
        minSdkVersion 16
        targetSdkVersion 28
        versionCode 1
        versionName "1.0"
        testInstrumentationRunner "android.support.test.runner.AndroidJUnitRunner"
    }
    lintOptions {
        disable 'InvalidPackage'
    }
}

dependencies {
    // implementation 'com.android.support:support-compat:28.0.0'
    implementation 'androidx.appcompat:appcompat:1.0.0-alpha3'
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk8:$kotlin_version"
    implementation 'com.google.android.gms:play-services-maps:16.1.0'
}
