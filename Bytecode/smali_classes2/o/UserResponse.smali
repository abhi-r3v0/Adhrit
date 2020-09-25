.class final Lo/UserResponse;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/getCsatResponse;

.field private final synthetic extraCallback:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/UserResponse;->ICustomTabsCallback:Lo/getCsatResponse;

    iput-object p2, p0, Lo/UserResponse;->extraCallback:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/UserResponse;->extraCallback:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lo/UserResponse;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-object v1, p0, Lo/UserResponse;->extraCallback:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-wide v2, p0, Lo/UserResponse;->onNavigationEvent:J

    invoke-interface {v0, v1, v2, v3}, Lo/setControllerHideOnTouch;->setMeasurementEnabled(ZJ)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lo/UserResponse;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-wide v1, p0, Lo/UserResponse;->onNavigationEvent:J

    invoke-interface {v0, v1, v2}, Lo/setControllerHideOnTouch;->clearMeasurementEnabled(J)V

    return-void
.end method
