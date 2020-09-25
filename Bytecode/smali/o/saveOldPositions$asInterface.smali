.class public final Lo/saveOldPositions$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveOldPositions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberViewModel$play$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;",
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
.field private synthetic extraCallback:Lo/saveOldPositions;


# direct methods
.method constructor <init>(Lo/saveOldPositions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lo/saveOldPositions$asInterface;->extraCallback:Lo/saveOldPositions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 88
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 88
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lo/saveOldPositions$asInterface;->extraCallback:Lo/saveOldPositions;

    invoke-static {v0}, Lo/saveOldPositions;->onMessageChannelReady(Lo/saveOldPositions;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/saveOldPositions$extraCallback$onPostMessage;

    invoke-direct {v1, p1}, Lo/saveOldPositions$extraCallback$onPostMessage;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lo/saveOldPositions$asInterface;->extraCallback:Lo/saveOldPositions;

    invoke-static {v0}, Lo/saveOldPositions;->onPostMessage(Lo/saveOldPositions;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/saveOldPositions$extraCallback$onMessageChannelReady;

    invoke-direct {v2, p1}, Lo/saveOldPositions$extraCallback$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 94
    :cond_1
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_c

    .line 95
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 1014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 95
    check-cast v0, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x5a55242e

    const-string v4, ""

    if-eq v2, v3, :cond_7

    const v3, -0x9b61dcf

    if-eq v2, v3, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v2, "inadequate_points"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 109
    iget-object p1, p0, Lo/saveOldPositions$asInterface;->extraCallback:Lo/saveOldPositions;

    invoke-static {p1}, Lo/saveOldPositions;->onTransact(Lo/saveOldPositions;)Lo/setActive;

    move-result-object p1

    .line 110
    new-instance v1, Lo/saveOldPositions$onPostMessage;

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v2, v4

    .line 111
    :cond_5
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v4, v0

    :goto_1
    const-string v0, "coins"

    .line 110
    invoke-direct {v1, v2, v4, v0}, Lo/saveOldPositions$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :cond_7
    const-string v2, "inadequate_gems"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 98
    sget-object v1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 99
    iget-object p1, p0, Lo/saveOldPositions$asInterface;->extraCallback:Lo/saveOldPositions;

    invoke-static {p1}, Lo/saveOldPositions;->onTransact(Lo/saveOldPositions;)Lo/setActive;

    move-result-object p1

    .line 100
    new-instance v1, Lo/saveOldPositions$onPostMessage;

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v2, v4

    .line 101
    :cond_8
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    move-object v4, v0

    :goto_2
    const-string v0, "gems"

    .line 100
    invoke-direct {v1, v2, v4, v0}, Lo/saveOldPositions$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 104
    :cond_a
    sget-object v5, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 2014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 3014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 104
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    invoke-static/range {v5 .. v11}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 105
    iget-object p1, p0, Lo/saveOldPositions$asInterface;->extraCallback:Lo/saveOldPositions;

    invoke-static {p1}, Lo/saveOldPositions;->onPostMessage(Lo/saveOldPositions;)Lo/setActive;

    move-result-object p1

    new-instance v0, Lo/throwIfInMutationOperation;

    sget-object v1, Lo/saveOldPositions$extraCallback$extraCallback;->onPostMessage:Lo/saveOldPositions$extraCallback$extraCallback;

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 115
    :cond_b
    :goto_3
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 4014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 115
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 116
    iget-object p1, p0, Lo/saveOldPositions$asInterface;->extraCallback:Lo/saveOldPositions;

    invoke-static {p1}, Lo/saveOldPositions;->onPostMessage(Lo/saveOldPositions;)Lo/setActive;

    move-result-object p1

    new-instance v0, Lo/throwIfInMutationOperation;

    sget-object v1, Lo/saveOldPositions$extraCallback$extraCallback;->onPostMessage:Lo/saveOldPositions$extraCallback$extraCallback;

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method
