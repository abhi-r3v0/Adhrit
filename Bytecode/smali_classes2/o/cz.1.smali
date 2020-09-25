.class final Lo/cz;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic extraCallback:Lo/getCsatResponse$onPostMessage;

.field private final synthetic onPostMessage:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lo/getCsatResponse$onPostMessage;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/cz;->extraCallback:Lo/getCsatResponse$onPostMessage;

    iput-object p2, p0, Lo/cz;->onPostMessage:Landroid/app/Activity;

    iget-object p1, p1, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

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
    iget-object v0, p0, Lo/cz;->extraCallback:Lo/getCsatResponse$onPostMessage;

    iget-object v0, v0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-object v1, p0, Lo/cz;->onPostMessage:Landroid/app/Activity;

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v1

    iget-wide v2, p0, Lo/cz;->onMessageChannelReady:J

    invoke-interface {v0, v1, v2, v3}, Lo/setControllerHideOnTouch;->onActivityStopped(Lo/getEventName;J)V

    return-void
.end method
