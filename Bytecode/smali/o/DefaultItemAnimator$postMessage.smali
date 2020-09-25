.class final Lo/DefaultItemAnimator$postMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$postMessage;->onPostMessage:Lo/DefaultItemAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 8

    .line 1347
    iget-object v0, p0, Lo/DefaultItemAnimator$postMessage;->onPostMessage:Lo/DefaultItemAnimator;

    invoke-static {v0}, Lo/DefaultItemAnimator;->onRelationshipValidationResult(Lo/DefaultItemAnimator;)Lo/isSmoothScrolling;

    move-result-object v0

    iget-object v1, p0, Lo/DefaultItemAnimator$postMessage;->onPostMessage:Lo/DefaultItemAnimator;

    invoke-static {v1}, Lo/DefaultItemAnimator;->asBinder(Lo/DefaultItemAnimator;)Lo/onAddFocusables$extraCallback;

    move-result-object v1

    .line 2226
    iget-object v1, v1, Lo/onAddFocusables$extraCallback;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "payment_status"

    :cond_0
    move-object v4, v1

    .line 1347
    iget-object v1, p0, Lo/DefaultItemAnimator$postMessage;->onPostMessage:Lo/DefaultItemAnimator;

    invoke-static {v1}, Lo/DefaultItemAnimator;->asBinder(Lo/DefaultItemAnimator;)Lo/onAddFocusables$extraCallback;

    move-result-object v1

    .line 3225
    iget-object v5, v1, Lo/onAddFocusables$extraCallback;->ICustomTabsService:Ljava/lang/String;

    const-string v1, "context"

    .line 1347
    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payment_nba_api_trigger"

    .line 4048
    invoke-static {v1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 5000
    iget-object v1, v0, Lo/isSmoothScrolling;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/removeAndRecycleView;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x9

    .line 4049
    invoke-static/range {v2 .. v7}, Lo/removeAndRecycleView$onNavigationEvent;->onPostMessage(Lo/removeAndRecycleView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lo/clearScrap;

    move-result-object v1

    .line 4050
    new-instance v2, Lo/isSmoothScrolling$onMessageChannelReady;

    invoke-direct {v2, v0}, Lo/isSmoothScrolling$onMessageChannelReady;-><init>(Lo/isSmoothScrolling;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 53
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
