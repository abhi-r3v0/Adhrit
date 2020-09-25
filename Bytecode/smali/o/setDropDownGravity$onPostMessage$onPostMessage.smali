.class final Lo/setDropDownGravity$onPostMessage$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setDropDownGravity$onPostMessage;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lcom/cred/pay/repository/models/SessionCallResponse;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "cacheResponse",
        "Lcom/cred/pay/repository/models/SessionCallResponse;",
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
.field private synthetic extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

.field private synthetic onNavigationEvent:Lo/setDropDownGravity$onPostMessage;


# direct methods
.method constructor <init>(Lo/setDropDownGravity$onPostMessage;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 0

    iput-object p1, p0, Lo/setDropDownGravity$onPostMessage$onPostMessage;->onNavigationEvent:Lo/setDropDownGravity$onPostMessage;

    iput-object p2, p0, Lo/setDropDownGravity$onPostMessage$onPostMessage;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 74
    check-cast p1, Lcom/cred/pay/repository/models/SessionCallResponse;

    const-string v0, "pairs"

    const-string v1, "error_code"

    const/4 v2, 0x2

    const-string v3, "is_cache_hit"

    const/4 v4, 0x1

    const-string v5, "failure"

    const-string/jumbo v6, "sdk_response"

    const/4 v7, 0x0

    const/4 v8, 0x3

    const-string v9, "payment_session_response"

    if-eqz p1, :cond_0

    .line 1088
    iget-object v10, p0, Lo/setDropDownGravity$onPostMessage$onPostMessage;->onNavigationEvent:Lo/setDropDownGravity$onPostMessage;

    iget-object v10, v10, Lo/setDropDownGravity$onPostMessage;->extraCallback:Lo/setDropDownGravity;

    new-instance v11, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    invoke-direct {v11, p1}, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Lo/setDropDownGravity;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;)V

    new-array p1, v8, [Lo/addWrite;

    .line 2043
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v6, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, p1, v7

    .line 1090
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v3, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, p1, v4

    .line 1091
    iget-object v3, p0, Lo/setDropDownGravity$onPostMessage$onPostMessage;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v3, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 4014
    iget-object v3, v3, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 1091
    iget-object v4, p0, Lo/setDropDownGravity$onPostMessage$onPostMessage;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v4, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 5014
    iget-object v4, v4, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1091
    check-cast v4, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, v4}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    .line 5043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v1, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p1, v2

    .line 1089
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1089
    invoke-static {v9, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1093
    :cond_0
    iget-object p1, p0, Lo/setDropDownGravity$onPostMessage$onPostMessage;->onNavigationEvent:Lo/setDropDownGravity$onPostMessage;

    iget-object p1, p1, Lo/setDropDownGravity$onPostMessage;->extraCallback:Lo/setDropDownGravity;

    .line 6053
    iget-object p1, p1, Lo/setDropDownGravity;->extraCallback:Lo/setActive;

    .line 1093
    iget-object v10, p0, Lo/setDropDownGravity$onPostMessage$onPostMessage;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-virtual {p1, v10}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    new-array p1, v8, [Lo/addWrite;

    .line 7043
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v6, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, p1, v7

    .line 1095
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v3, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, p1, v4

    .line 1096
    iget-object v3, p0, Lo/setDropDownGravity$onPostMessage$onPostMessage;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v3, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 9014
    iget-object v3, v3, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 1096
    iget-object v4, p0, Lo/setDropDownGravity$onPostMessage$onPostMessage;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v4, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 10014
    iget-object v4, v4, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1096
    check-cast v4, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, v4}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    .line 10043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v1, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p1, v2

    .line 1094
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1094
    invoke-static {v9, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
