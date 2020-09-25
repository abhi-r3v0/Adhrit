.class public final Lcom/google/firebase/crashlytics/internal/MissingNativeComponent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$MissingNativeSessionFileProvider;
    }
.end annotation


# static fields
.field private static final MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$MissingNativeSessionFileProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$MissingNativeSessionFileProvider;-><init>(Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$1;)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/MissingNativeComponent;->MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finalizeSession(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final getSessionFileProvider(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;
    .locals 0

    .line 43
    sget-object p1, Lcom/google/firebase/crashlytics/internal/MissingNativeComponent;->MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;

    return-object p1
.end method

.method public final hasCrashDataForSession(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final openSession(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public final writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
