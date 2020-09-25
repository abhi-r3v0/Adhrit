.class public final Lo/isFocusedChildVisibleAfterScrolling$extraCallback;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isFocusedChildVisibleAfterScrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Lcom/dreamplug/fabrik/ui/remotecontrol/RemoteControlDataResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/remotecontrol/RemoteControlDataRepository$data$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/remotecontrol/RemoteControlDataResponse;",
        "onActive",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 2

    .line 13
    invoke-super {p0}, Lo/setActive;->onPostMessage()V

    .line 17
    sget-object v0, Lo/isFocusedChildVisibleAfterScrolling;->extraCallback:Lo/isFocusedChildVisibleAfterScrolling;

    .line 2000
    sget-object v0, Lo/isFocusedChildVisibleAfterScrolling;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onRequestChildFocus;

    .line 1023
    invoke-interface {v0}, Lo/onRequestChildFocus;->onPostMessage()Lo/clearScrap;

    move-result-object v0

    .line 1024
    new-instance v1, Lo/isFocusedChildVisibleAfterScrolling$onPostMessage;

    invoke-direct {v1}, Lo/isFocusedChildVisibleAfterScrolling$onPostMessage;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
