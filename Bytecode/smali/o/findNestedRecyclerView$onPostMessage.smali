.class public final Lo/findNestedRecyclerView$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findNestedRecyclerView;->extraCallback()V
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
        "com/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineViewModel$createRealTicket$1",
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
.field private synthetic onMessageChannelReady:Lo/findNestedRecyclerView;


# direct methods
.method constructor <init>(Lo/findNestedRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lo/findNestedRecyclerView$onPostMessage;->onMessageChannelReady:Lo/findNestedRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 93
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    if-eqz p1, :cond_0

    .line 1111
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 96
    iget-object v2, p0, Lo/findNestedRecyclerView$onPostMessage;->onMessageChannelReady:Lo/findNestedRecyclerView;

    .line 2051
    iput-object p1, v2, Lo/findNestedRecyclerView;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    .line 97
    iget-object p1, p0, Lo/findNestedRecyclerView$onPostMessage;->onMessageChannelReady:Lo/findNestedRecyclerView;

    invoke-static {p1, v1, v0}, Lo/findNestedRecyclerView;->onMessageChannelReady(Lo/findNestedRecyclerView;Ljava/util/List;Lo/getTargetScrollPosition;)V

    :cond_0
    return-void

    .line 102
    :cond_1
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_c

    .line 103
    iget-object v0, p0, Lo/findNestedRecyclerView$onPostMessage;->onMessageChannelReady:Lo/findNestedRecyclerView;

    invoke-virtual {v0}, Lo/findNestedRecyclerView;->asInterface()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "win_unsuccessful_claim"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 104
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 3014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 104
    check-cast v0, Lcom/dreamplug/utils/model/BaseResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, -0x5a55242e

    const-string v5, ""

    if-eq v3, v4, :cond_7

    const v4, -0x9b61dcf

    if-eq v3, v4, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v3, "inadequate_points"

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 120
    iget-object p1, p0, Lo/findNestedRecyclerView$onPostMessage;->onMessageChannelReady:Lo/findNestedRecyclerView;

    invoke-static {p1}, Lo/findNestedRecyclerView;->ICustomTabsCallback(Lo/findNestedRecyclerView;)Lo/setActive;

    move-result-object p1

    new-instance v1, Lo/throwIfInMutationOperation;

    .line 121
    new-instance v2, Lo/findContainingItemView$onMessageChannelReady;

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v3, v5

    .line 123
    :cond_5
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v5, v0

    :goto_1
    const-string v0, "coins"

    .line 121
    invoke-direct {v2, v3, v5, v0}, Lo/findContainingItemView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :cond_7
    const-string v3, "inadequate_gems"

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 107
    sget-object v2, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 108
    iget-object p1, p0, Lo/findNestedRecyclerView$onPostMessage;->onMessageChannelReady:Lo/findNestedRecyclerView;

    invoke-static {p1}, Lo/findNestedRecyclerView;->ICustomTabsCallback(Lo/findNestedRecyclerView;)Lo/setActive;

    move-result-object p1

    .line 109
    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/findContainingItemView$onMessageChannelReady;

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move-object v3, v5

    .line 111
    :cond_8
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    move-object v5, v0

    :goto_2
    const-string v0, "gems"

    .line 109
    invoke-direct {v2, v3, v5, v0}, Lo/findContainingItemView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 115
    :cond_a
    iget-object v0, p0, Lo/findNestedRecyclerView$onPostMessage;->onMessageChannelReady:Lo/findNestedRecyclerView;

    invoke-static {v0}, Lo/findNestedRecyclerView;->onNavigationEvent(Lo/findNestedRecyclerView;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 116
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 4014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 116
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    return-void

    .line 127
    :cond_b
    :goto_3
    iget-object v0, p0, Lo/findNestedRecyclerView$onPostMessage;->onMessageChannelReady:Lo/findNestedRecyclerView;

    invoke-static {v0}, Lo/findNestedRecyclerView;->onNavigationEvent(Lo/findNestedRecyclerView;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 128
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 6014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 7014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 128
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_c
    return-void
.end method
