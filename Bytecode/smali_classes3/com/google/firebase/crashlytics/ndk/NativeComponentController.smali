.class interface abstract Lcom/google/firebase/crashlytics/ndk/NativeComponentController;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract finalizeSession(Ljava/lang/String;)Z
.end method

.method public abstract getFilesForSession(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/SessionFiles;
.end method

.method public abstract hasCrashDataForSession(Ljava/lang/String;)Z
.end method

.method public abstract initialize(Ljava/lang/String;)Z
.end method

.method public abstract writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method
