.class public final Lo/Toolbar;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Toolbar$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/gating/DobPanViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "lastState",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/androidapp/gating/DobPanViewModel$DopPanStateUiModel;",
        "getLastState",
        "()Landroidx/lifecycle/LiveData;",
        "screenLastState",
        "Landroidx/lifecycle/MutableLiveData;",
        "getScreenLastState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "screenState",
        "getScreenState",
        "state",
        "getState",
        "DopPanStateUiModel",
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
.field public final extraCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/Toolbar$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/Toolbar$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 11
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/Toolbar;->extraCallback:Lo/setActive;

    .line 15
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/Toolbar;->onMessageChannelReady:Lo/setActive;

    .line 22
    iget-object p1, p0, Lo/Toolbar;->extraCallback:Lo/setActive;

    new-instance v0, Lo/Toolbar$ICustomTabsCallback;

    sget-object v1, Lo/getType$onMessageChannelReady;->onPostMessage:Lo/getType$onMessageChannelReady;

    check-cast v1, Lo/getType;

    invoke-direct {v0, v1}, Lo/Toolbar$ICustomTabsCallback;-><init>(Lo/getType;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lo/Toolbar;->onMessageChannelReady:Lo/setActive;

    new-instance v0, Lo/Toolbar$ICustomTabsCallback;

    sget-object v1, Lo/getType$onMessageChannelReady;->onPostMessage:Lo/getType$onMessageChannelReady;

    check-cast v1, Lo/getType;

    invoke-direct {v0, v1}, Lo/Toolbar$ICustomTabsCallback;-><init>(Lo/getType;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
