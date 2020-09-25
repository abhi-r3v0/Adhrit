.class public final Lo/updateCloseButton;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/data/upload/DataUploadHandlerThread;",
        "Landroid/os/HandlerThread;",
        "threadName",
        "",
        "reader",
        "Lcom/datadog/android/core/internal/data/Reader;",
        "dataUploader",
        "Lcom/datadog/android/core/internal/net/DataUploader;",
        "networkInfoProvider",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "systemInfoProvider",
        "Lcom/datadog/android/core/internal/system/SystemInfoProvider;",
        "(Ljava/lang/String;Lcom/datadog/android/core/internal/data/Reader;Lcom/datadog/android/core/internal/net/DataUploader;Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;Lcom/datadog/android/core/internal/system/SystemInfoProvider;)V",
        "handler",
        "Landroid/os/Handler;",
        "onLooperPrepared",
        "",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/onCloseClicked;

.field private extraCallback:Landroid/os/Handler;

.field private final onMessageChannelReady:Lo/onActionViewExpanded;

.field private final onNavigationEvent:Lo/getChildBoundsWithinSearchView;

.field private final onPostMessage:Lo/launchQuerySearch;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/getChildBoundsWithinSearchView;Lo/onCloseClicked;Lo/onActionViewExpanded;Lo/launchQuerySearch;)V
    .locals 1

    const-string/jumbo v0, "threadName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataUploader"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemInfoProvider"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/updateCloseButton;->onNavigationEvent:Lo/getChildBoundsWithinSearchView;

    iput-object p3, p0, Lo/updateCloseButton;->ICustomTabsCallback:Lo/onCloseClicked;

    iput-object p4, p0, Lo/updateCloseButton;->onMessageChannelReady:Lo/onActionViewExpanded;

    iput-object p5, p0, Lo/updateCloseButton;->onPostMessage:Lo/launchQuerySearch;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 8

    .line 27
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/updateCloseButton;->extraCallback:Landroid/os/Handler;

    .line 30
    new-instance v0, Lo/updateFocusedState;

    .line 31
    iget-object v3, p0, Lo/updateCloseButton;->extraCallback:Landroid/os/Handler;

    const-string v1, "handler"

    if-nez v3, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object v4, p0, Lo/updateCloseButton;->onNavigationEvent:Lo/getChildBoundsWithinSearchView;

    .line 33
    iget-object v5, p0, Lo/updateCloseButton;->ICustomTabsCallback:Lo/onCloseClicked;

    .line 34
    iget-object v6, p0, Lo/updateCloseButton;->onMessageChannelReady:Lo/onActionViewExpanded;

    .line 35
    iget-object v7, p0, Lo/updateCloseButton;->onPostMessage:Lo/launchQuerySearch;

    move-object v2, v0

    .line 30
    invoke-direct/range {v2 .. v7}, Lo/updateFocusedState;-><init>(Landroid/os/Handler;Lo/getChildBoundsWithinSearchView;Lo/onCloseClicked;Lo/onActionViewExpanded;Lo/launchQuerySearch;)V

    .line 37
    iget-object v2, p0, Lo/updateCloseButton;->extraCallback:Landroid/os/Handler;

    if-nez v2, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
