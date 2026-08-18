# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /sdk/tools/proguard/proguard-android.txt

# Keep line numbers for crash reporting
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile

# If you use Crashlytics / Firebase
#-keep class com.google.firebase.** { *; }
#-keep class com.crashlytics.** { *; }
