.class final Lo/onUpgrade;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic extraCallback:Lo/getCsatResponse;

.field private final synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lo/getCsatResponse;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onUpgrade;->extraCallback:Lo/getCsatResponse;

    iput-boolean p2, p0, Lo/onUpgrade;->onPostMessage:Z

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/onUpgrade;->extraCallback:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-boolean v1, p0, Lo/onUpgrade;->onPostMessage:Z

    invoke-interface {v0, v1}, Lo/setControllerHideOnTouch;->setDataCollectionEnabled(Z)V

    return-void
.end method
