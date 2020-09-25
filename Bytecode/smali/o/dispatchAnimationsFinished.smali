.class public final Lo/dispatchAnimationsFinished;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dispatchAnimationsFinished$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/tabnavigation/TabNavigationManager;",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "containerId",
        "",
        "(Landroidx/fragment/app/FragmentActivity;I)V",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/tabnavigation/TabNavigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/tabnavigation/TabNavigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "transactionHelper",
        "Lcom/dreamplug/fabrik/ui/main/tabnavigation/TabNavigationTransactionHelper;",
        "onBackPressed",
        "",
        "SwitchFragment",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onNavigationEvent:Lo/performCompletion$onNavigationEvent;

.field private final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>(Lo/onSessionEvent;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    move-object v0, p1

    check-cast v0, Lo/removeOnActiveChangeListener;

    .line 32
    new-instance v1, Lo/dispatchAnimationsFinished$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/dispatchAnimationsFinished$ICustomTabsCallback;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, v1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 32
    iput-object v0, p0, Lo/dispatchAnimationsFinished;->onPostMessage:Lo/isSameListener;

    .line 12
    new-instance v0, Lo/performCompletion$onNavigationEvent;

    const v1, 0x7f0b0541

    invoke-direct {v0, p1, v1}, Lo/performCompletion$onNavigationEvent;-><init>(Lo/onSessionEvent;I)V

    iput-object v0, p0, Lo/dispatchAnimationsFinished;->onNavigationEvent:Lo/performCompletion$onNavigationEvent;

    .line 2000
    iget-object v0, p0, Lo/dispatchAnimationsFinished;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dispatchAnimationStarted;

    .line 2016
    iget-object v0, v0, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 15
    check-cast p1, Lo/toLegacyStreamType;

    new-instance v1, Lo/dispatchAnimationsFinished$5;

    invoke-direct {v1, p0}, Lo/dispatchAnimationsFinished$5;-><init>(Lo/dispatchAnimationsFinished;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
