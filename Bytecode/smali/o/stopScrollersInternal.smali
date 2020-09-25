.class public final Lo/stopScrollersInternal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/releaseGlows$onPostMessage;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRewardUseCase$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$OnRedeemCtaClickedListener;",
        "onRedeemCtaClicked",
        "",
        "redeemDialog",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment;",
        "sectionsList",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/SectionsRequestModel;",
        "storePaymentSlab",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
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
.field ICustomTabsCallback:Ljava/lang/String;

.field final ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

.field final ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field final ICustomTabsService:Lo/nextTransactionOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nextTransactionOrder<",
            "Ljava/lang/Throwable;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field final asBinder:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field final asInterface:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/throwIfInMutationOperation<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private extraCommand:Lo/isSameListener;

.field final getInterfaceDescriptor:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final mayLaunchUrl:Ljava/lang/String;

.field final newSession:Lo/rerunTransactionQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/rerunTransactionQueue<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/isSameListener;

.field final onNavigationEvent:Lo/isSameListener;

.field public final onPostMessage:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/throwIfInMutationOperation<",
            "Lo/startInterceptRequestLayout$extraCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

.field final onTransact:Lo/releaseGlows$onPostMessage;

.field final postMessage:Z

.field private final requestPostMessageChannel:I

.field private updateVisuals:Z

.field final warmup:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;Lo/getServerTime;Lo/getServerTime;Lo/rerunTransactionQueue;Lo/getServerTime;Lo/nextTransactionOrder;ZLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/rerunTransactionQueue<",
            "-",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/nextTransactionOrder<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lo/addWrites;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rewardData"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rewardCurrency"

    invoke-static {p9, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    iput-object p3, p0, Lo/stopScrollersInternal;->asBinder:Lo/getServerTime;

    iput-object p4, p0, Lo/stopScrollersInternal;->getInterfaceDescriptor:Lo/getServerTime;

    iput-object p5, p0, Lo/stopScrollersInternal;->newSession:Lo/rerunTransactionQueue;

    iput-object p6, p0, Lo/stopScrollersInternal;->warmup:Lo/getServerTime;

    iput-object p7, p0, Lo/stopScrollersInternal;->ICustomTabsService:Lo/nextTransactionOrder;

    iput-boolean p8, p0, Lo/stopScrollersInternal;->updateVisuals:Z

    iput-object p9, p0, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object p10, p0, Lo/stopScrollersInternal;->mayLaunchUrl:Ljava/lang/String;

    iput p11, p0, Lo/stopScrollersInternal;->requestPostMessageChannel:I

    iput-boolean p12, p0, Lo/stopScrollersInternal;->postMessage:Z

    .line 48
    new-instance p1, Lo/stopScrollersInternal$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/stopScrollersInternal$ICustomTabsCallback;-><init>(Lo/stopScrollersInternal;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/stopScrollersInternal;->onPostMessage:Lo/setPlaybackToRemote;

    .line 64
    new-instance p1, Lo/stopScrollersInternal$onPostMessage;

    invoke-direct {p1, p0}, Lo/stopScrollersInternal$onPostMessage;-><init>(Lo/stopScrollersInternal;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/stopScrollersInternal;->extraCallback:Lo/setPlaybackToRemote;

    .line 70
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 397
    sget-object p1, Lo/stopScrollersInternal$extraCallback;->extraCallback:Lo/stopScrollersInternal$extraCallback;

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance p3, Lo/fromChildMerge;

    invoke-direct {p3, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p3, Lo/isSameListener;

    .line 397
    iput-object p3, p0, Lo/stopScrollersInternal;->onNavigationEvent:Lo/isSameListener;

    .line 71
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 398
    sget-object p1, Lo/stopScrollersInternal$onMessageChannelReady;->extraCallback:Lo/stopScrollersInternal$onMessageChannelReady;

    check-cast p1, Lo/getServerTime;

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9021
    new-instance p3, Lo/fromChildMerge;

    invoke-direct {p3, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p3, Lo/isSameListener;

    .line 398
    iput-object p3, p0, Lo/stopScrollersInternal;->extraCommand:Lo/isSameListener;

    .line 73
    iget-object p1, p0, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    const-string p3, "$this$lazyNavigator"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9072
    new-instance p3, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {p3, p1}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast p3, Lo/getServerTime;

    invoke-static {p3, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10021
    new-instance p1, Lo/fromChildMerge;

    invoke-direct {p1, p3}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p1, Lo/isSameListener;

    .line 73
    iput-object p1, p0, Lo/stopScrollersInternal;->onMessageChannelReady:Lo/isSameListener;

    .line 79
    move-object p1, p0

    check-cast p1, Lo/releaseGlows$onPostMessage;

    iput-object p1, p0, Lo/stopScrollersInternal;->onTransact:Lo/releaseGlows$onPostMessage;

    .line 90
    sget-object p1, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    invoke-static {}, Lo/startInterceptRequestLayout;->extraCallback()Lo/setActive;

    move-result-object p1

    iget-object p2, p0, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    check-cast p2, Lo/toLegacyStreamType;

    iget-object p3, p0, Lo/stopScrollersInternal;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, p3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 91
    sget-object p1, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    invoke-static {}, Lo/startInterceptRequestLayout;->onMessageChannelReady()Lo/setActive;

    move-result-object p1

    iget-object p2, p0, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    check-cast p2, Lo/toLegacyStreamType;

    iget-object p3, p0, Lo/stopScrollersInternal;->extraCallback:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, p3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 94
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/stopScrollersInternal;->asInterface:Lo/setActive;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;Lo/getServerTime;Lo/getServerTime;Lo/rerunTransactionQueue;Lo/getServerTime;Lo/nextTransactionOrder;ZLjava/lang/String;Ljava/lang/String;IZI)V
    .locals 16

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    const-string v1, "CRED_POINTS"

    move-object v12, v1

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    move/from16 v14, p11

    :goto_8
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    move/from16 v15, p12

    :goto_9
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 45
    invoke-direct/range {v3 .. v15}, Lo/stopScrollersInternal;-><init>(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;Lo/getServerTime;Lo/getServerTime;Lo/rerunTransactionQueue;Lo/getServerTime;Lo/nextTransactionOrder;ZLjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/stopScrollersInternal;)Ljava/util/Map;
    .locals 7

    const/16 v0, 0xa

    new-array v1, v0, [Lo/addWrite;

    .line 10384
    iget-object v2, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 11000
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeItemDecoration;

    .line 11396
    iget-object v2, v2, Lo/removeItemDecoration;->onNavigationEvent:Ljava/lang/String;

    .line 12043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "reward_ID"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 10385
    iget-object v2, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 13000
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeItemDecoration;

    .line 13397
    iget-object v2, v2, Lo/removeItemDecoration;->ICustomTabsCallback:Ljava/lang/String;

    .line 14043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "usage_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 10386
    iget-object v2, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 15039
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    const-string v3, "NA"

    if-eqz v2, :cond_0

    .line 15082
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v2, :cond_0

    .line 15091
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 16043
    :cond_1
    new-instance v4, Lo/addWrite;

    const-string v5, "currency"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 10387
    iget-object v4, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 17039
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v4, :cond_2

    .line 17082
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v4, :cond_2

    .line 17097
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onTransact:Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 10387
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 18043
    :goto_0
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "reward_cred_value"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x4

    .line 10388
    iget-object v4, p0, Lo/stopScrollersInternal;->mayLaunchUrl:Ljava/lang/String;

    .line 19043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "source"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x5

    .line 10389
    sget-object v4, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v4}, Lo/onPanelClosed;->onPostMessage()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 20043
    new-instance v5, Lo/addWrite;

    const-string v6, "cred_balance"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x6

    .line 10390
    sget-object v4, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v4}, Lo/onPanelClosed;->ICustomTabsCallback()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 21043
    new-instance v5, Lo/addWrite;

    const-string v6, "cred_gem_balance"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x7

    .line 10391
    iget-object v4, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 22039
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v4, :cond_4

    .line 22080
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->onMessageChannelReady:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 23043
    :cond_4
    :goto_1
    new-instance v4, Lo/addWrite;

    const-string v5, "entity_type"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/16 v2, 0x8

    .line 10392
    iget-object v3, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 24031
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    .line 24043
    new-instance v4, Lo/addWrite;

    const-string v5, "card_template"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/16 v2, 0x9

    .line 10393
    iget p0, p0, Lo/stopScrollersInternal;->requestPostMessageChannel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 25043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "reward_farm_card_position"

    invoke-direct {v3, v4, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const-string p0, "pairs"

    .line 10383
    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25105
    new-instance p0, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    return-object p0
.end method

.method private final ICustomTabsCallback()V
    .locals 5

    .line 110
    iget-boolean v0, p0, Lo/stopScrollersInternal;->updateVisuals:Z

    if-eqz v0, :cond_0

    .line 3000
    iget-object v0, p0, Lo/stopScrollersInternal;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 111
    new-instance v1, Lo/releaseGlows$onNavigationEvent;

    iget-object v2, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    invoke-static {v2}, Lo/extraCallback;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;)Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    move-result-object v2

    iget-object v3, p0, Lo/stopScrollersInternal;->mayLaunchUrl:Ljava/lang/String;

    iget v4, p0, Lo/stopScrollersInternal;->requestPostMessageChannel:I

    invoke-direct {v1, v2, v3, v4}, Lo/releaseGlows$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;Ljava/lang/String;I)V

    const-string v2, "data"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3518
    new-instance v2, Lo/onGetChildDrawingOrder$onConnectionSuspended;

    invoke-direct {v2, v1}, Lo/onGetChildDrawingOrder$onConnectionSuspended;-><init>(Lo/releaseGlows$onNavigationEvent;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v0, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4154
    invoke-direct {p0, v0, v0}, Lo/stopScrollersInternal;->onNavigationEvent(Lo/releaseGlows;Ljava/util/List;)V

    return-void
.end method

.method private onNavigationEvent(Lo/releaseGlows;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/releaseGlows;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/SectionsRequestModel;",
            ">;)V"
        }
    .end annotation

    .line 155
    new-instance v0, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v0}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 160
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 161
    new-instance p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    invoke-direct {p1, v2, v1, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 163
    :cond_2
    new-instance p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    .line 164
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;

    invoke-direct {v1, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;-><init>(Ljava/util/List;)V

    .line 163
    invoke-direct {p1, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;)V

    .line 171
    :goto_2
    iget-object p2, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 5067
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object p2, v2

    :goto_3
    if-nez p2, :cond_5

    .line 6000
    iget-object p2, p0, Lo/stopScrollersInternal;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/computeHorizontalScrollExtent;

    .line 173
    iget-object v1, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6065
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    .line 172
    :cond_4
    invoke-interface {p2, v2, p1}, Lo/computeHorizontalScrollExtent;->onPostMessage(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;)Lo/clearScrap;

    move-result-object p1

    goto :goto_4

    .line 7000
    :cond_5
    iget-object p2, p0, Lo/stopScrollersInternal;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/computeHorizontalScrollExtent;

    .line 178
    iget-object v1, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7067
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->ICustomTabsCallback:Ljava/lang/String;

    .line 177
    :cond_6
    invoke-interface {p2, v2, p1}, Lo/computeHorizontalScrollExtent;->onMessageChannelReady(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;)Lo/clearScrap;

    move-result-object p1

    .line 183
    :goto_4
    new-instance p2, Lo/stopScrollersInternal$onNavigationEvent;

    invoke-direct {p2, p0, v0}, Lo/stopScrollersInternal$onNavigationEvent;-><init>(Lo/stopScrollersInternal;Lo/toDebugString$ICustomTabsCallback;)V

    check-cast p2, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, p2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage()Lo/setActive;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "redeem_with_form"

    .line 98
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lo/stopScrollersInternal;->updateVisuals:Z

    .line 101
    :cond_1
    invoke-direct {p0}, Lo/stopScrollersInternal;->ICustomTabsCallback()V

    .line 103
    iget-object v0, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1067
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2

    .line 103
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2065
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    .line 103
    :cond_4
    :goto_2
    iput-object v1, p0, Lo/stopScrollersInternal;->ICustomTabsCallback:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lo/stopScrollersInternal;->asInterface:Lo/setActive;

    return-object v0
.end method

.method public final onPostMessage(Lo/releaseGlows;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/releaseGlows;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/SectionsRequestModel;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
            ")V"
        }
    .end annotation

    const-string p3, "redeemDialog"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27033
    iget-object p3, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 27039
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 27082
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz p3, :cond_0

    .line 27091
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    const-string v1, "INR"

    .line 26082
    invoke-static {p3, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 28122
    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, 0x1

    :goto_2
    if-eqz p3, :cond_3

    .line 28123
    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    invoke-direct {p2, v0, v1, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    .line 28125
    :cond_3
    new-instance p3, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;

    invoke-direct {v1, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;-><init>(Ljava/util/List;)V

    invoke-direct {p3, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;)V

    move-object p2, p3

    .line 29000
    :goto_3
    iget-object p3, p0, Lo/stopScrollersInternal;->extraCommand:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/isAttachedToWindow;

    .line 28128
    iget-object v1, p0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 29065
    iget-object v0, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    .line 28128
    :cond_4
    invoke-interface {p3, v0, p2}, Lo/isAttachedToWindow;->ICustomTabsCallback(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;)Lo/clearScrap;

    move-result-object p2

    .line 28129
    new-instance p3, Lo/stopScrollersInternal$onTransact;

    invoke-direct {p3, p0, p1}, Lo/stopScrollersInternal$onTransact;-><init>(Lo/stopScrollersInternal;Lo/releaseGlows;)V

    check-cast p3, Lo/getScrapOrCachedViewForId;

    invoke-interface {p2, p3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 30033
    :cond_5
    invoke-direct {p0, p1, p2}, Lo/stopScrollersInternal;->onNavigationEvent(Lo/releaseGlows;Ljava/util/List;)V

    return-void
.end method
