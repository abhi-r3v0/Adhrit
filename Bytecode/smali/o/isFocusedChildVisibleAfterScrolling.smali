.class public final Lo/isFocusedChildVisibleAfterScrolling;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0006\u0010\u0013\u001a\u00020\u000fR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/remotecontrol/RemoteControlDataRepository;",
        "",
        "()V",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/remotecontrol/RemoteControlDataResponse;",
        "getData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "service",
        "Lcom/dreamplug/fabrik/ui/remotecontrol/RemoteControlService;",
        "getService",
        "()Lcom/dreamplug/fabrik/ui/remotecontrol/RemoteControlService;",
        "service$delegate",
        "Lkotlin/Lazy;",
        "clear",
        "",
        "getRentDeepLink",
        "Lcom/dreamplug/fabrik/ui/remotecontrol/TemplateData;",
        "getStashDeepLink",
        "refresh",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/isFocusedChildVisibleAfterScrolling;

.field static final onNavigationEvent:Lo/isSameListener;

.field private static final onPostMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/remotecontrol/RemoteControlDataResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lo/isFocusedChildVisibleAfterScrolling;

    invoke-direct {v0}, Lo/isFocusedChildVisibleAfterScrolling;-><init>()V

    sput-object v0, Lo/isFocusedChildVisibleAfterScrolling;->extraCallback:Lo/isFocusedChildVisibleAfterScrolling;

    .line 11
    new-instance v0, Lo/isFocusedChildVisibleAfterScrolling$extraCallback;

    invoke-direct {v0}, Lo/isFocusedChildVisibleAfterScrolling$extraCallback;-><init>()V

    check-cast v0, Lo/setActive;

    sput-object v0, Lo/isFocusedChildVisibleAfterScrolling;->onPostMessage:Lo/setActive;

    .line 20
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 51
    sget-object v0, Lo/isFocusedChildVisibleAfterScrolling$ICustomTabsCallback;->onNavigationEvent:Lo/isFocusedChildVisibleAfterScrolling$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 51
    sput-object v1, Lo/isFocusedChildVisibleAfterScrolling;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()V
    .locals 2

    .line 48
    sget-object v0, Lo/isFocusedChildVisibleAfterScrolling;->onPostMessage:Lo/setActive;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onPostMessage()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/remotecontrol/RemoteControlDataResponse;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object v0, Lo/isFocusedChildVisibleAfterScrolling;->onPostMessage:Lo/setActive;

    return-object v0
.end method