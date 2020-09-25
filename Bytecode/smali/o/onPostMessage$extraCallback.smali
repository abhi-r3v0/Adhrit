.class public interface abstract Lo/onPostMessage$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\u0006H&J\u0008\u0010\n\u001a\u00020\u0006H&J\u0008\u0010\u000b\u001a\u00020\u0006H&J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0006H&J\u0018\u0010\u0010\u001a\u00060\u0011j\u0002`\u00122\n\u0010\u0013\u001a\u00060\u0011j\u0002`\u0012H&\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/TimeSource;",
        "",
        "currentTimeMillis",
        "",
        "nanoTime",
        "parkNanos",
        "",
        "blocker",
        "nanos",
        "registerTimeLoopThread",
        "trackTask",
        "unTrackTask",
        "unpark",
        "thread",
        "Ljava/lang/Thread;",
        "unregisterTimeLoopThread",
        "wrapTask",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final VERSION_NAME:Ljava/lang/String; = "19.0.8"

.field public static final zzdb:Ljava/lang/String; = "FIREPERF"

.field public static final zzdc:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Landroid/content/Context;)V
.end method

.method public abstract ICustomTabsCallback()Z
.end method

.method public abstract asInterface()Z
.end method

.method public abstract extraCallback()Z
.end method

.method public abstract onMessageChannelReady()Z
.end method

.method public abstract onNavigationEvent()Z
.end method

.method public abstract onPostMessage(Landroid/location/Location;)V
.end method

.method public abstract onPostMessage()Z
.end method
