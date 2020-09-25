.class final Lo/gn;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/app/Activity;

.field private final synthetic extraCallback:Lo/getCsatResponse$onPostMessage;

.field private final synthetic onPostMessage:Lo/setErrorMessageProvider;


# direct methods
.method constructor <init>(Lo/getCsatResponse$onPostMessage;Landroid/app/Activity;Lo/setErrorMessageProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/gn;->extraCallback:Lo/getCsatResponse$onPostMessage;

    iput-object p2, p0, Lo/gn;->ICustomTabsCallback:Landroid/app/Activity;

    iput-object p3, p0, Lo/gn;->onPostMessage:Lo/setErrorMessageProvider;

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

    .line 2
    iget-object v0, p0, Lo/gn;->extraCallback:Lo/getCsatResponse$onPostMessage;

    iget-object v0, v0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-object v1, p0, Lo/gn;->ICustomTabsCallback:Landroid/app/Activity;

    .line 3
    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v1

    iget-object v2, p0, Lo/gn;->onPostMessage:Lo/setErrorMessageProvider;

    iget-wide v3, p0, Lo/gn;->onMessageChannelReady:J

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Lo/setControllerHideOnTouch;->onActivitySaveInstanceState(Lo/getEventName;Lo/setShowBuffering;J)V

    return-void
.end method
