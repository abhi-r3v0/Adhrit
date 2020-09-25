.class final Lo/computeScrollExtent$onTransact$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeScrollExtent$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005 \u0006*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/computeScrollExtent$onTransact;


# direct methods
.method constructor <init>(Lo/computeScrollExtent$onTransact;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$onTransact$4;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 65
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 1265
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object v1, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1266
    sget-object p1, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->onPostMessage()V

    .line 1267
    iget-object p1, p0, Lo/computeScrollExtent$onTransact$4;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    iget-object p1, p1, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    .line 2069
    iget-object p1, p1, Lo/computeScrollExtent;->onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

    if-eqz p1, :cond_0

    .line 3009
    iget-object v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1267
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 4007
    iput-object v0, p1, Lo/onQueryRefine$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 1268
    :cond_0
    iget-object p1, p0, Lo/computeScrollExtent$onTransact$4;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    iget-object p1, p1, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {p1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object p1

    const-string v0, "redeemed"

    .line 4088
    iput-object v0, p1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 4089
    iget-object p1, p1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 1271
    :cond_1
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_2

    .line 1272
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 5014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 6014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1272
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 1274
    :cond_2
    iget-object p1, p0, Lo/computeScrollExtent$onTransact$4;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    iget-object p1, p1, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {p1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object p1

    const-string v0, "failed"

    .line 6088
    iput-object v0, p1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 6089
    iget-object p1, p1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1275
    iget-object p1, p0, Lo/computeScrollExtent$onTransact$4;->onMessageChannelReady:Lo/computeScrollExtent$onTransact;

    iget-object p1, p1, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {p1, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getLayoutInflater;

    invoke-virtual {p1}, Lo/getLayoutInflater;->onMessageChannelReady()V

    return-void
.end method
