# Proguard rules to keep necessary Tink classes
-keep class com.google.crypto.tink.** { *; }
-dontwarn com.google.crypto.tink.**

# If you're using Google API client, keep these classes too
-keep class com.google.api.client.** { *; }
-dontwarn com.google.api.client.**

# Keep Joda-Time classes
-keep class org.joda.time.** { *; }
-dontwarn org.joda.time.**

# Keep error-prone annotations
-keep class com.google.errorprone.** { *; }
-dontwarn com.google.errorprone.**
