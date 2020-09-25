.class public final Lo/findContainingItemView$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findContainingItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$hitPlayApi$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
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
.field private synthetic onMessageChannelReady:Lo/findContainingItemView;


# direct methods
.method public constructor <init>(Lo/findContainingItemView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

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
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 185
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    invoke-static {v2, v1}, Lo/findContainingItemView;->onPostMessage(Lo/findContainingItemView;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;)V

    .line 186
    iget-object v1, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    .line 1037
    iget-object v1, v1, Lo/findContainingItemView;->extraCallback:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 1320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    move-object v3, v1

    .line 186
    :cond_0
    check-cast v3, Lo/findContainingItemView$onNavigationEvent;

    if-eqz v3, :cond_1

    .line 2302
    iget-object v1, v3, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz v1, :cond_1

    .line 3035
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 186
    iget-object v2, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    .line 3073
    iget-object v2, v2, Lo/findContainingItemView;->warmup:Ljava/util/HashSet;

    .line 186
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 187
    :cond_1
    iget-object v1, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    invoke-virtual {v1}, Lo/findContainingItemView;->extraCallback()V

    return-void

    .line 189
    :cond_2
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v2, :cond_d

    .line 190
    iget-object v2, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    invoke-static {v2}, Lo/findContainingItemView;->extraCallback(Lo/findContainingItemView;)Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "win_unsuccessful_claim"

    invoke-static {v4, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 191
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 4014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 191
    check-cast v2, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v2, :cond_3

    .line 192
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, -0x5a55242e

    const-string v6, ""

    if-eq v4, v5, :cond_8

    const v5, -0x9b61dcf

    if-eq v4, v5, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v4, "inadequate_points"

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 206
    iget-object v1, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    invoke-static {v1}, Lo/findContainingItemView;->ICustomTabsCallback$Stub(Lo/findContainingItemView;)Lo/setActive;

    move-result-object v1

    new-instance v3, Lo/throwIfInMutationOperation;

    .line 207
    new-instance v4, Lo/findContainingItemView$onMessageChannelReady;

    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v5, v6

    .line 208
    :cond_6
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move-object v6, v2

    :goto_0
    const-string v2, "coins"

    .line 207
    invoke-direct {v4, v5, v6, v2}, Lo/findContainingItemView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {v3, v4}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    const-string v4, "inadequate_gems"

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 194
    sget-object v3, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 195
    iget-object v1, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    invoke-static {v1}, Lo/findContainingItemView;->ICustomTabsCallback$Stub(Lo/findContainingItemView;)Lo/setActive;

    move-result-object v1

    .line 196
    new-instance v3, Lo/throwIfInMutationOperation;

    new-instance v4, Lo/findContainingItemView$onMessageChannelReady;

    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    move-object v5, v6

    .line 198
    :cond_9
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    move-object v6, v2

    :goto_1
    const-string v2, "gems"

    .line 196
    invoke-direct {v4, v5, v6, v2}, Lo/findContainingItemView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_3

    .line 202
    :cond_b
    sget-object v7, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 5014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 6014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 202
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1e

    invoke-static/range {v7 .. v13}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_3

    .line 212
    :cond_c
    :goto_2
    sget-object v14, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 7014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 8014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 212
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1e

    invoke-static/range {v14 .. v20}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 215
    :goto_3
    iget-object v1, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    invoke-static {v1}, Lo/findContainingItemView;->onRelationshipValidationResult(Lo/findContainingItemView;)Lo/setActive;

    move-result-object v1

    new-instance v2, Lo/throwIfInMutationOperation;

    sget-object v3, Lo/findContainingItemView$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/findContainingItemView$ICustomTabsCallback$onPostMessage;

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 216
    iget-object v1, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    invoke-static {v1}, Lo/findContainingItemView;->ICustomTabsService(Lo/findContainingItemView;)Lo/setActive;

    move-result-object v1

    new-instance v2, Lo/throwIfInMutationOperation;

    sget-object v3, Lo/findContainingItemView$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/findContainingItemView$ICustomTabsCallback$onPostMessage;

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 217
    iget-object v1, v0, Lo/findContainingItemView$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/findContainingItemView;

    invoke-static {v1}, Lo/findContainingItemView;->getInterfaceDescriptor(Lo/findContainingItemView;)Lo/setActive;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
