.class final Lo/dispatchRemovals$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchRemovals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/dispatchRemovals;


# direct methods
.method constructor <init>(Lo/dispatchRemovals;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchRemovals$onMessageChannelReady;->ICustomTabsCallback:Lo/dispatchRemovals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 78
    iget-object v0, p0, Lo/dispatchRemovals$onMessageChannelReady;->ICustomTabsCallback:Lo/dispatchRemovals;

    invoke-static {v0}, Lo/dispatchRemovals;->ICustomTabsCallback(Lo/dispatchRemovals;)Lo/clearScrap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/clearScrap;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lo/dispatchRemovals$onMessageChannelReady;->ICustomTabsCallback:Lo/dispatchRemovals;

    .line 1029
    iget-object v0, v0, Lo/dispatchRemovals;->extraCallback:Lo/setActive;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 78
    :goto_0
    check-cast v0, Lo/dispatchRemovals$onNavigationEvent;

    if-eqz v0, :cond_2

    .line 2027
    iget-object v2, v0, Lo/dispatchRemovals$onNavigationEvent;->onNavigationEvent:Lo/removePostponedUpdate;

    .line 78
    :cond_2
    sget-object v0, Lo/removePostponedUpdate;->extraCallback:Lo/removePostponedUpdate;

    if-ne v2, v0, :cond_4

    .line 79
    iget-object v0, p0, Lo/dispatchRemovals$onMessageChannelReady;->ICustomTabsCallback:Lo/dispatchRemovals;

    invoke-static {v0}, Lo/dispatchRemovals;->ICustomTabsCallback(Lo/dispatchRemovals;)Lo/clearScrap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/clearScrap;->ICustomTabsCallback()V

    .line 80
    :cond_3
    iget-object v0, p0, Lo/dispatchRemovals$onMessageChannelReady;->ICustomTabsCallback:Lo/dispatchRemovals;

    .line 2029
    iget-object v0, v0, Lo/dispatchRemovals;->extraCallback:Lo/setActive;

    .line 80
    new-instance v1, Lo/dispatchRemovals$onNavigationEvent;

    sget-object v2, Lo/removePostponedUpdate;->ICustomTabsCallback:Lo/removePostponedUpdate;

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130412

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/dispatchRemovals$onNavigationEvent;-><init>(Lo/removePostponedUpdate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const-string v0, "document_upload_timeout"

    .line 81
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    :cond_4
    return-void
.end method
