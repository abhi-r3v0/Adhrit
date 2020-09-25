.class final Lo/cT;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/getCsatResponse;

.field private final synthetic extraCallback:Lo/setErrorMessageProvider;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Lo/setErrorMessageProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/cT;->ICustomTabsCallback:Lo/getCsatResponse;

    iput-object p2, p0, Lo/cT;->extraCallback:Lo/setErrorMessageProvider;

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
    iget-object v0, p0, Lo/cT;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-object v1, p0, Lo/cT;->extraCallback:Lo/setErrorMessageProvider;

    invoke-interface {v0, v1}, Lo/setControllerHideOnTouch;->getCurrentScreenClass(Lo/setShowBuffering;)V

    return-void
.end method

.method protected final onPostMessage()V
    .locals 2

    .line 4
    iget-object v0, p0, Lo/cT;->extraCallback:Lo/setErrorMessageProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setErrorMessageProvider;->onPostMessage(Landroid/os/Bundle;)V

    return-void
.end method
