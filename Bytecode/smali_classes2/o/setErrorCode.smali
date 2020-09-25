.class final Lo/setErrorCode;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onPostMessage:Landroid/app/Activity;

.field private final synthetic onTransact:Lo/getCsatResponse;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setErrorCode;->onTransact:Lo/getCsatResponse;

    iput-object p2, p0, Lo/setErrorCode;->onPostMessage:Landroid/app/Activity;

    iput-object p3, p0, Lo/setErrorCode;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/setErrorCode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/setErrorCode;->onTransact:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v1

    iget-object v0, p0, Lo/setErrorCode;->onPostMessage:Landroid/app/Activity;

    .line 3
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-object v3, p0, Lo/setErrorCode;->extraCallback:Ljava/lang/String;

    iget-object v4, p0, Lo/setErrorCode;->ICustomTabsCallback:Ljava/lang/String;

    iget-wide v5, p0, Lo/setErrorCode;->onNavigationEvent:J

    .line 4
    invoke-interface/range {v1 .. v6}, Lo/setControllerHideOnTouch;->setCurrentScreen(Lo/getEventName;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
