.class final Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addItemDecoration$onRelationshipValidationResult;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/SimpleBottomSheetView$Cta$Builder;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderboardViewModel$getWinnerstatus$1$onResponse$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;

.field final synthetic onMessageChannelReady:Lo/addItemDecoration$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;Lo/addItemDecoration$onRelationshipValidationResult;)V
    .locals 0

    iput-object p1, p0, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;

    iput-object p2, p0, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;->onMessageChannelReady:Lo/addItemDecoration$onRelationshipValidationResult;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 270
    check-cast p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;

    .line 2098
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 3085
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onNavigationEvent:Ljava/lang/String;

    .line 4052
    iput-object v0, p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 1280
    new-instance v0, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady$4;

    invoke-direct {v0, p0}, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady$4;-><init>(Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;)V

    check-cast v0, Lo/getServerTime;

    .line 4055
    iput-object v0, p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/getServerTime;

    .line 270
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
