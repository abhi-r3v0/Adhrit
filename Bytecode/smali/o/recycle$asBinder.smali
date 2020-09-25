.class final Lo/recycle$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/recycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;",
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
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u001e\u0010\u0002\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00060\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "",
        "",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/recycle;


# direct methods
.method constructor <init>(Lo/recycle;)V
    .locals 0

    iput-object p1, p0, Lo/recycle$asBinder;->onPostMessage:Lo/recycle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 61
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1377
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v1, Lo/setTrackTintMode;->getExtras:Lo/setSubtitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1377
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v1, Lo/setTrackTintMode;->isConnected:Lo/setSubtitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1378
    iget-object v1, p0, Lo/recycle$asBinder;->onPostMessage:Lo/recycle;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->fabrikLoaderView:I

    invoke-virtual {v1, v2}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onDestroyView;

    invoke-virtual {v1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1381
    :cond_0
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string v2, "pairs"

    const-string v3, "action"

    const/4 v4, 0x0

    const-string v5, "onboard_qr_confirmation"

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    .line 1382
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1382
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 1384
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-virtual {v0, v6}, Lo/onDestroyOptionsMenu;->onNavigationEvent(Z)V

    .line 1385
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    const-string v0, "campaign_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/onDestroyOptionsMenu;->onNavigationEvent(Ljava/lang/String;)V

    .line 1386
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/onDestroyOptionsMenu;->onPostMessage(Ljava/lang/String;)V

    .line 1387
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    const-string v0, "campaign_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lo/onDestroyOptionsMenu;->extraCallback(Ljava/lang/String;)V

    .line 1388
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->onPostMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->onPostMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1389
    :cond_1
    iget-object p1, p0, Lo/recycle$asBinder;->onPostMessage:Lo/recycle;

    invoke-static {p1}, Lo/recycle;->ICustomTabsCallback(Lo/recycle;)Lo/getContentInsetLeft;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3027
    iput-boolean v6, p1, Lo/getContentInsetLeft;->onNavigationEvent:Z

    .line 1390
    :cond_2
    iget-object p1, p0, Lo/recycle$asBinder;->onPostMessage:Lo/recycle;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->haveQr:I

    invoke-virtual {p1, v0}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "haveQr"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1391
    iget-object p1, p0, Lo/recycle$asBinder;->onPostMessage:Lo/recycle;

    invoke-static {p1}, Lo/recycle;->onMessageChannelReady(Lo/recycle;)V

    :cond_3
    new-array p1, v6, [Lo/addWrite;

    .line 3043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v1, "success"

    invoke-direct {v0, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v4

    .line 1395
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1394
    invoke-static {v5, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_0

    .line 1400
    :cond_4
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v1, :cond_5

    .line 1401
    iget-object v1, p0, Lo/recycle$asBinder;->onPostMessage:Lo/recycle;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4014
    iget-object v7, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object v8, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 4010
    check-cast v8, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v7, v8}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v7

    .line 1401
    invoke-virtual {v1, v7}, Lo/recycle;->extraCallback(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v7, v1, [Lo/addWrite;

    .line 5043
    new-instance v8, Lo/addWrite;

    const-string v9, "error"

    invoke-direct {v8, v3, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v7, v4

    .line 1405
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 7014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 6009
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    .line 7043
    new-instance v0, Lo/addWrite;

    const-string v3, "failure_reason"

    invoke-direct {v0, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v7, v6

    .line 1403
    invoke-static {v7, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v7}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1402
    invoke-static {v5, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 61
    :cond_5
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
