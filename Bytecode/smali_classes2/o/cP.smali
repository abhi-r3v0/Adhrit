.class final Lo/cP;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/Object;

.field private final synthetic asBinder:Lo/getCsatResponse;

.field private final synthetic extraCallback:I

.field private final synthetic onPostMessage:Ljava/lang/String;

.field private final synthetic onRelationshipValidationResult:Ljava/lang/Object;

.field private final synthetic onTransact:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/getCsatResponse;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/cP;->asBinder:Lo/getCsatResponse;

    const/4 p2, 0x5

    iput p2, p0, Lo/cP;->extraCallback:I

    iput-object p4, p0, Lo/cP;->onPostMessage:Ljava/lang/String;

    iput-object p5, p0, Lo/cP;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, p0, Lo/cP;->onTransact:Ljava/lang/Object;

    iput-object p2, p0, Lo/cP;->onRelationshipValidationResult:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;Z)V

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
    iget-object v0, p0, Lo/cP;->asBinder:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v1

    iget v2, p0, Lo/cP;->extraCallback:I

    iget-object v3, p0, Lo/cP;->onPostMessage:Ljava/lang/String;

    iget-object v0, p0, Lo/cP;->ICustomTabsCallback:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v4

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v5

    .line 5
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v6

    .line 6
    invoke-interface/range {v1 .. v6}, Lo/setControllerHideOnTouch;->logHealthData(ILjava/lang/String;Lo/getEventName;Lo/getEventName;Lo/getEventName;)V

    return-void
.end method
