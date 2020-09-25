.class public final Lo/estimateNextPositionDiffForFling;
.super Lo/setQueue;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R(\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u000c\"\u0004\u0008(\u0010\u000eR\u001a\u0010)\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u000c\"\u0004\u0008+\u0010\u000eR\u001c\u0010,\u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010#\"\u0004\u0008.\u0010%R\u001a\u0010/\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u000c\"\u0004\u00080\u0010\u000eR\u001a\u00101\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0006\"\u0004\u00083\u0010\u0008R\u001a\u00104\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u000c\"\u0004\u00086\u0010\u000eR\u001a\u00107\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u000c\"\u0004\u00089\u0010\u000eR\u001a\u0010:\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u000c\"\u0004\u0008<\u0010\u000eR\u001c\u0010=\u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010#\"\u0004\u0008?\u0010%R\u001a\u0010@\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u000c\"\u0004\u0008B\u0010\u000eR(\u0010C\u001a\u0010\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u001d\"\u0004\u0008F\u0010\u001f\u00a8\u0006G"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerDataModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "currentScore",
        "",
        "getCurrentScore",
        "()I",
        "setCurrentScore",
        "(I)V",
        "deductLifePending",
        "",
        "getDeductLifePending",
        "()Z",
        "setDeductLifePending",
        "(Z)V",
        "deductingPlayerLife",
        "getDeductingPlayerLife",
        "setDeductingPlayerLife",
        "gameCta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
        "getGameCta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
        "setGameCta",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;)V",
        "gameDetailsCallResult",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "getGameDetailsCallResult",
        "()Lcom/dreamplug/network/internals/call/CallResult;",
        "setGameDetailsCallResult",
        "(Lcom/dreamplug/network/internals/call/CallResult;)V",
        "gameId",
        "",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "hasShownWinnerSheet",
        "getHasShownWinnerSheet",
        "setHasShownWinnerSheet",
        "hasWonReward",
        "getHasWonReward",
        "setHasWonReward",
        "hiScore",
        "getHiScore",
        "setHiScore",
        "isOutputClaimed",
        "setOutputClaimed",
        "livesCount",
        "getLivesCount",
        "setLivesCount",
        "loadingGameDetails",
        "getLoadingGameDetails",
        "setLoadingGameDetails",
        "loadingUserGameDetails",
        "getLoadingUserGameDetails",
        "setLoadingUserGameDetails",
        "renewingLives",
        "getRenewingLives",
        "setRenewingLives",
        "scoreIdempotencyId",
        "getScoreIdempotencyId",
        "setScoreIdempotencyId",
        "submittingScore",
        "getSubmittingScore",
        "setSubmittingScore",
        "userGameDetailsCallResult",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;",
        "getUserGameDetailsCallResult",
        "setUserGameDetailsCallResult",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public ICustomTabsCallback$Stub:I

.field public ICustomTabsCallback$Stub$Proxy:Z

.field public ICustomTabsService:Lo/getScrapOrHiddenOrCachedHolderForPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation
.end field

.field asBinder:Ljava/lang/String;

.field public asInterface:Z

.field extraCallback:Z

.field public getInterfaceDescriptor:Z

.field public newSession:Z

.field onMessageChannelReady:Z

.field public onNavigationEvent:Z

.field onPostMessage:Z

.field onRelationshipValidationResult:Ljava/lang/String;

.field public onTransact:I

.field public postMessage:Lo/getScrapOrHiddenOrCachedHolderForPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation
.end field

.field requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

.field public warmup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lo/estimateNextPositionDiffForFling;->onTransact:I

    return-void
.end method
