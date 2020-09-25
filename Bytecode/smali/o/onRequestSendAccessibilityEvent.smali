.class public final Lo/onRequestSendAccessibilityEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onRequestSendAccessibilityEvent$onNavigationEvent;,
        Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0010\u0011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u000f\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/batcher/Batcher;",
        "",
        "()V",
        "BATCHER_JOBS_TAG",
        "",
        "BATCHER_LEGACY_JOBS_TAG",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "clearAll",
        "",
        "init",
        "onAppUpgrade",
        "Builder",
        "Method",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/onRequestSendAccessibilityEvent;

.field private static onNavigationEvent:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/onRequestSendAccessibilityEvent;

    invoke-direct {v0}, Lo/onRequestSendAccessibilityEvent;-><init>()V

    sput-object v0, Lo/onRequestSendAccessibilityEvent;->extraCallback:Lo/onRequestSendAccessibilityEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Landroid/content/Context;
    .locals 2

    .line 14
    sget-object v0, Lo/onRequestSendAccessibilityEvent;->onNavigationEvent:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static onNavigationEvent()V
    .locals 3

    .line 21
    sget-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    .line 2014
    :try_start_0
    sget-object v0, Lo/onRequestSendAccessibilityEvent;->onNavigationEvent:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2184
    :cond_0
    invoke-static {v0}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v0

    const-string v1, "BATCHER_SYNC_JOBS"

    .line 1107
    invoke-virtual {v0, v1}, Lo/setErrorMessage;->onPostMessage(Ljava/lang/String;)Lo/setActions;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3000
    sget-object v0, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1111
    :goto_0
    sget-object v1, Lo/getAccessibilityNodeProvider$onMessageChannelReady;->extraCallback:Lo/getAccessibilityNodeProvider$onMessageChannelReady;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1109
    :try_start_1
    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "batcher cancel all error"

    invoke-static {v0, v1}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4000
    sget-object v0, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    goto :goto_0

    .line 5000
    :goto_1
    sget-object v1, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 1111
    sget-object v2, Lo/getAccessibilityNodeProvider$onMessageChannelReady;->extraCallback:Lo/getAccessibilityNodeProvider$onMessageChannelReady;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public static onNavigationEvent(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context.applicationContext"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lo/onRequestSendAccessibilityEvent;->onNavigationEvent:Landroid/content/Context;

    return-void
.end method

.method public static onPostMessage()V
    .locals 2

    .line 25
    sget-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    .line 6014
    sget-object v0, Lo/onRequestSendAccessibilityEvent;->onNavigationEvent:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6184
    :cond_0
    invoke-static {v0}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v0

    const-string v1, "BATCHER_JOBS"

    .line 5118
    invoke-virtual {v0, v1}, Lo/setErrorMessage;->onPostMessage(Ljava/lang/String;)Lo/setActions;

    .line 7000
    sget-object v0, Lo/getAccessibilityNodeProvider;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 5119
    sget-object v1, Lo/getAccessibilityNodeProvider$asInterface;->onMessageChannelReady:Lo/getAccessibilityNodeProvider$asInterface;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
