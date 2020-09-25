.class public Lcom/google/android/gms/internal/firebase_auth/zzir;
.super Ljava/io/IOException;
.source ""


# instance fields
.field private extraCallback:Lo/access$502;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzir;->extraCallback:Lo/access$502;

    return-void
.end method

.method public static ICustomTabsCallback()Lcom/google/android/gms/internal/firebase_auth/zziq;
    .locals 2

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zziq;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zziq;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static onMessageChannelReady()Lcom/google/android/gms/internal/firebase_auth/zzir;
    .locals 2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzir;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzir;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static onNavigationEvent()Lcom/google/android/gms/internal/firebase_auth/zzir;
    .locals 2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzir;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzir;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
