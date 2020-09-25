.class public final Lo/saveFocusInfo$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveFocusInfo;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsViewModel$getPlayResponse$1",
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
.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/saveFocusInfo;


# direct methods
.method constructor <init>(Lo/saveFocusInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lo/saveFocusInfo$extraCallback;->onPostMessage:Lo/saveFocusInfo;

    iput-object p2, p0, Lo/saveFocusInfo$extraCallback;->onNavigationEvent:Ljava/lang/String;

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

    .line 131
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, v0, Lo/saveFocusInfo$extraCallback;->onPostMessage:Lo/saveFocusInfo;

    invoke-static {v2}, Lo/saveFocusInfo;->extraCallback(Lo/saveFocusInfo;)Lo/setActive;

    move-result-object v2

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v4, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 132
    invoke-virtual {v2, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 v2, 0x3

    new-array v4, v2, [Lo/addWrite;

    const/4 v5, 0x0

    .line 134
    iget-object v6, v0, Lo/saveFocusInfo$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 1043
    new-instance v7, Lo/addWrite;

    const-string v8, "game_id"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v5

    const/4 v5, 0x1

    .line 2009
    iget-object v6, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 135
    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    if-eqz v6, :cond_0

    .line 2121
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v6, :cond_0

    .line 3051
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v6, v3

    .line 4043
    :goto_0
    new-instance v7, Lo/addWrite;

    const-string v8, "outcome_type"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v5

    const/4 v5, 0x2

    .line 5009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 136
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    if-eqz v1, :cond_1

    .line 5121
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v1, :cond_1

    .line 6050
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->ICustomTabsCallback:Ljava/lang/String;

    .line 7043
    :cond_1
    new-instance v1, Lo/addWrite;

    const-string v6, "outcome_id"

    invoke-direct {v1, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v4, v5

    const-string v1, "pairs"

    .line 133
    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "construct_ui_outcome_load"

    .line 133
    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 141
    :cond_2
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v2, :cond_d

    .line 142
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 8014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 142
    check-cast v2, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, -0x5a55242e

    const-string v6, ""

    if-eq v4, v5, :cond_8

    const v5, -0x9b61dcf

    if-eq v4, v5, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string v4, "inadequate_points"

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 157
    iget-object v1, v0, Lo/saveFocusInfo$extraCallback;->onPostMessage:Lo/saveFocusInfo;

    invoke-static {v1}, Lo/saveFocusInfo;->onNavigationEvent(Lo/saveFocusInfo;)Lo/setActive;

    move-result-object v1

    new-instance v3, Lo/throwIfInMutationOperation;

    .line 158
    new-instance v4, Lo/findContainingItemView$onMessageChannelReady;

    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v5, v6

    .line 160
    :cond_6
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move-object v6, v2

    :goto_1
    const-string v2, "coins"

    .line 158
    invoke-direct {v4, v5, v6, v2}, Lo/findContainingItemView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {v3, v4}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :cond_8
    const-string v4, "inadequate_gems"

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 145
    sget-object v3, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 146
    iget-object v1, v0, Lo/saveFocusInfo$extraCallback;->onPostMessage:Lo/saveFocusInfo;

    invoke-static {v1}, Lo/saveFocusInfo;->onNavigationEvent(Lo/saveFocusInfo;)Lo/setActive;

    move-result-object v1

    .line 147
    new-instance v3, Lo/throwIfInMutationOperation;

    new-instance v4, Lo/findContainingItemView$onMessageChannelReady;

    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    move-object v5, v6

    .line 149
    :cond_9
    invoke-virtual {v2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    move-object v6, v2

    :goto_2
    const-string v2, "gems"

    .line 147
    invoke-direct {v4, v5, v6, v2}, Lo/findContainingItemView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_b
    sget-object v7, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 9014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 10014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 153
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1e

    invoke-static/range {v7 .. v13}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    return-void

    .line 164
    :cond_c
    :goto_3
    sget-object v14, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 11014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 12014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 164
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1e

    invoke-static/range {v14 .. v20}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_d
    return-void
.end method
