.class final Lo/cs;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/Object;

.field private final synthetic ICustomTabsCallback$Stub:Z

.field private final synthetic asInterface:Lo/getCsatResponse;

.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/cs;->asInterface:Lo/getCsatResponse;

    iput-object p2, p0, Lo/cs;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/cs;->onPostMessage:Ljava/lang/String;

    iput-object p4, p0, Lo/cs;->ICustomTabsCallback:Ljava/lang/Object;

    iput-boolean p5, p0, Lo/cs;->ICustomTabsCallback$Stub:Z

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/cs;->asInterface:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v1

    iget-object v2, p0, Lo/cs;->extraCallback:Ljava/lang/String;

    iget-object v3, p0, Lo/cs;->onPostMessage:Ljava/lang/String;

    iget-object v0, p0, Lo/cs;->ICustomTabsCallback:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v4

    iget-boolean v5, p0, Lo/cs;->ICustomTabsCallback$Stub:Z

    iget-wide v6, p0, Lo/cs;->onNavigationEvent:J

    .line 4
    invoke-interface/range {v1 .. v7}, Lo/setControllerHideOnTouch;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lo/getEventName;ZJ)V

    return-void
.end method
