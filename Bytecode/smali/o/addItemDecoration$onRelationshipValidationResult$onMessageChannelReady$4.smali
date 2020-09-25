.class final Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderboardViewModel$getWinnerstatus$1$onResponse$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady$4;->onNavigationEvent:Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1281
    iget-object v0, p0, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady$4;->onNavigationEvent:Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;

    iget-object v0, v0, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;->onMessageChannelReady:Lo/addItemDecoration$onRelationshipValidationResult;

    iget-object v0, v0, Lo/addItemDecoration$onRelationshipValidationResult;->onNavigationEvent:Lo/addItemDecoration;

    .line 2037
    iget-object v0, v0, Lo/addItemDecoration;->ICustomTabsCallback:Lo/setActive;

    .line 1281
    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/findCenterView;

    iget-object v3, p0, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady$4;->onNavigationEvent:Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;

    iget-object v3, v3, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;

    .line 2098
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 1281
    invoke-direct {v2, v3}, Lo/findCenterView;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 270
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
