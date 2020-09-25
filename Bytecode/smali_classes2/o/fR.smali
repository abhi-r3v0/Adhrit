.class final Lo/fR;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/app/Activity;

.field private final synthetic extraCallback:Lo/getCsatResponse$onPostMessage;

.field private final synthetic onPostMessage:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/getCsatResponse$onPostMessage;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/fR;->extraCallback:Lo/getCsatResponse$onPostMessage;

    iput-object p2, p0, Lo/fR;->onPostMessage:Landroid/os/Bundle;

    iput-object p3, p0, Lo/fR;->ICustomTabsCallback:Landroid/app/Activity;

    iget-object p1, p1, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lo/fR;->onPostMessage:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v1, p0, Lo/fR;->onPostMessage:Landroid/os/Bundle;

    const-string v2, "com.google.app_measurement.screen_service"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lo/fR;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 8
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/fR;->extraCallback:Lo/getCsatResponse$onPostMessage;

    iget-object v1, v1, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v1}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v1

    iget-object v2, p0, Lo/fR;->ICustomTabsCallback:Landroid/app/Activity;

    .line 10
    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-wide v3, p0, Lo/fR;->onMessageChannelReady:J

    .line 11
    invoke-interface {v1, v2, v0, v3, v4}, Lo/setControllerHideOnTouch;->onActivityCreated(Lo/getEventName;Landroid/os/Bundle;J)V

    return-void
.end method
