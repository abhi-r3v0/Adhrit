.class public final Lo/findViewHolderForItemId$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findViewHolderForItemId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachineViewModel$spinSlotMachine$3",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;",
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
.field private synthetic onPostMessage:Lo/findViewHolderForItemId;


# direct methods
.method constructor <init>(Lo/findViewHolderForItemId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 171
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 171
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    if-eqz v1, :cond_6

    .line 174
    iget-object v2, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->onRelationshipValidationResult(Lo/findViewHolderForItemId;)Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v2

    .line 1320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 174
    :goto_0
    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 175
    iget-object v5, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v5}, Lo/findViewHolderForItemId;->onNavigationEvent(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v5

    .line 2320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v6, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 175
    :goto_1
    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;

    if-eqz v5, :cond_2

    .line 3013
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

    if-eqz v5, :cond_2

    .line 3030
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;->extraCallback:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 175
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 176
    :cond_2
    iget-object v5, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v5}, Lo/findViewHolderForItemId;->onRelationshipValidationResult(Lo/findViewHolderForItemId;)Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    int-to-long v2, v3

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 180
    :cond_3
    iget-object v2, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->onTransact(Lo/findViewHolderForItemId;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3074
    iget v3, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->extraCallback:I

    add-int/lit8 v3, v3, 0x1

    .line 181
    invoke-static {v2, v3}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;I)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    move-result-object v4

    :cond_4
    if-eqz v4, :cond_5

    .line 183
    iget-object v2, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->warmup(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 186
    :cond_5
    iget-object v2, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->ICustomTabsCallback(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v2

    new-instance v3, Lo/findChildViewUnder$onRelationshipValidationResult;

    invoke-direct {v3, v1}, Lo/findChildViewUnder$onRelationshipValidationResult;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_6
    return-void

    .line 194
    :cond_7
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v2, :cond_12

    .line 195
    iget-object v2, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->ICustomTabsCallback(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v2

    new-instance v5, Lo/findChildViewUnder$onNavigationEvent;

    invoke-direct {v5, v3}, Lo/findChildViewUnder$onNavigationEvent;-><init>(Z)V

    invoke-virtual {v2, v5}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 196
    iget-object v2, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-virtual {v2}, Lo/findViewHolderForItemId;->onPostMessage()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "win_unsuccessful_claim"

    invoke-static {v3, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 198
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 4014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 198
    check-cast v2, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v2, :cond_8

    .line 199
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v4

    :cond_8
    if-nez v4, :cond_9

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v5, -0x5a55242e

    const-string v6, ""

    if-eq v3, v5, :cond_d

    const v5, -0x9b61dcf

    if-eq v3, v5, :cond_a

    goto/16 :goto_4

    :cond_a
    const-string v3, "inadequate_points"

    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 212
    iget-object v1, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v1}, Lo/findViewHolderForItemId;->ICustomTabsService(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v1

    .line 213
    new-instance v3, Lo/saveOldPositions$onPostMessage;

    .line 214
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move-object v4, v6

    :cond_b
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    move-object v6, v2

    :goto_2
    const-string v2, "coins"

    .line 213
    invoke-direct {v3, v4, v6, v2}, Lo/saveOldPositions$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :cond_d
    const-string v3, "inadequate_gems"

    .line 200
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 201
    sget-object v3, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 202
    iget-object v1, v0, Lo/findViewHolderForItemId$onMessageChannelReady;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v1}, Lo/findViewHolderForItemId;->ICustomTabsService(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v1

    .line 203
    new-instance v3, Lo/saveOldPositions$onPostMessage;

    .line 204
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move-object v4, v6

    :cond_e
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_3

    :cond_f
    move-object v6, v2

    :goto_3
    const-string v2, "gems"

    .line 203
    invoke-direct {v3, v4, v6, v2}, Lo/saveOldPositions$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 208
    :cond_10
    sget-object v7, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 5014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 6014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 208
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1e

    invoke-static/range {v7 .. v13}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    return-void

    .line 219
    :cond_11
    :goto_4
    sget-object v14, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 7014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 8014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 219
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1e

    invoke-static/range {v14 .. v20}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_12
    return-void
.end method
