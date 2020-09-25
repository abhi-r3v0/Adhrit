.class public Lcom/google/android/gms/internal/firebase-perf/zzfx;
.super Ljava/io/IOException;
.source ""


# instance fields
.field private onMessageChannelReady:Lo/aD;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-perf/zzfx;->onMessageChannelReady:Lo/aD;

    return-void
.end method

.method public static onNavigationEvent()Lcom/google/android/gms/internal/firebase-perf/zzfw;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzfw;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzfw;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
