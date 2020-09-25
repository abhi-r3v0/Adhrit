.class final Lo/ValidateJwtIdTokenResponse;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic onPostMessage:Lo/getCsatResponse;


# direct methods
.method constructor <init>(Lo/getCsatResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ValidateJwtIdTokenResponse;->onPostMessage:Lo/getCsatResponse;

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/ValidateJwtIdTokenResponse;->onPostMessage:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-wide v1, p0, Lo/ValidateJwtIdTokenResponse;->onNavigationEvent:J

    invoke-interface {v0, v1, v2}, Lo/setControllerHideOnTouch;->resetAnalyticsData(J)V

    return-void
.end method
