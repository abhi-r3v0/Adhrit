.class public final Lo/pullGlows$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pullGlows;->ICustomTabsCallback(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemViewModel$lockInventory$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field private synthetic ICustomTabsCallback:Lo/pullGlows;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

.field private synthetic onNavigationEvent:Ljava/lang/Double;


# direct methods
.method constructor <init>(Lo/pullGlows;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;Ljava/lang/Double;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .line 1027
    iput-object p1, p0, Lo/pullGlows$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/pullGlows;

    iput-object p2, p0, Lo/pullGlows$ICustomTabsCallback$Stub;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/pullGlows$ICustomTabsCallback$Stub;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    iput-object p4, p0, Lo/pullGlows$ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/Double;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v2, :cond_4

    .line 1030
    iget-object v1, v0, Lo/pullGlows$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/pullGlows;

    iget-object v3, v0, Lo/pullGlows$ICustomTabsCallback$Stub;->extraCallback:Ljava/lang/String;

    iget-object v2, v0, Lo/pullGlows$ICustomTabsCallback$Stub;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    iget-object v4, v0, Lo/pullGlows$ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/Double;

    const-string/jumbo v5, "rewardUsageId"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "selectedSlab"

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1982
    iget-object v14, v1, Lo/pullGlows;->onPostMessage:Lo/getMoveDuration;

    if-eqz v14, :cond_3

    new-instance v15, Lo/requestChildOnScreen$extraCallback;

    .line 2032
    iget-object v5, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    .line 2040
    iget-wide v6, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    .line 2042
    iget-wide v8, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    .line 2044
    iget-object v10, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->asBinder:Lo/getTargetScrollPosition;

    .line 1988
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f130458

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v11

    .line 1989
    iget-object v2, v1, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v2, :cond_0

    .line 2417
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->asInterface:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    :cond_1
    move-object v12, v2

    .line 1990
    invoke-virtual {v1}, Lo/pullGlows;->extraCallback()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1991
    invoke-virtual {v1}, Lo/pullGlows;->onPostMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    if-eqz v4, :cond_2

    .line 1992
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    goto :goto_0

    :cond_2
    const-wide/16 v17, 0x0

    .line 1993
    :goto_0
    iget-object v1, v1, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    move-object v2, v15

    move-object v4, v5

    move-wide v5, v6

    move-wide v7, v8

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v16

    move-object/from16 p1, v14

    move-object v0, v15

    move-wide/from16 v14, v17

    move-object/from16 v16, v1

    .line 1982
    invoke-direct/range {v2 .. v16}, Lo/requestChildOnScreen$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;DDLo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;)V

    const-string v1, "data"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2514
    new-instance v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionResultReceiver;

    invoke-direct {v1, v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$CustomActionResultReceiver;-><init>(Lo/requestChildOnScreen$extraCallback;)V

    check-cast v1, Lo/getRemoveDuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_3
    return-void

    .line 1031
    :cond_4
    instance-of v0, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_5

    move-object/from16 v0, p0

    .line 1032
    iget-object v2, v0, Lo/pullGlows$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/pullGlows;

    .line 3082
    iget-object v2, v2, Lo/pullGlows;->extraCommand:Lo/setActive;

    .line 1032
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 4014
    iget-object v3, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1032
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    :goto_1
    return-void
.end method
