.class public final Lo/setDropDownGravity$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDropDownGravity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/cred/pay/repository/models/SessionCallResponse;",
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
        "com/cred/pay/core/CredPaymentCore$getSessionData$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/cred/pay/repository/models/SessionCallResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "credpaycore_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/setDropDownGravity;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/setDropDownGravity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lo/setDropDownGravity$onPostMessage;->extraCallback:Lo/setDropDownGravity;

    iput-object p2, p0, Lo/setDropDownGravity$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/cred/pay/repository/models/SessionCallResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lo/setDropDownGravity$onPostMessage;->extraCallback:Lo/setDropDownGravity;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/setDropDownGravity;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;)V

    .line 79
    sget-object v0, Lo/recycleView;->onMessageChannelReady:Lo/recycleView;

    iget-object v0, p0, Lo/setDropDownGravity$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 81
    sget-object v1, Lo/getScrapViewAt;->onMessageChannelReady:Ljava/lang/String;

    const-class v2, Lcom/cred/pay/repository/models/SessionCallResponse;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 79
    invoke-static {v0, p1, v1, v2}, Lo/recycleView;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    const/4 v1, 0x0

    .line 1043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "sdk_response"

    const-string/jumbo v4, "success"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 82
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "payment_session_response"

    .line 82
    invoke-static {p1, v1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 84
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lo/recycleView;->onMessageChannelReady:Lo/recycleView;

    iget-object v0, p0, Lo/setDropDownGravity$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 86
    const-class v1, Lcom/cred/pay/repository/models/SessionCallResponse;

    check-cast v1, Ljava/lang/reflect/Type;

    sget-object v2, Lo/getScrapViewAt;->onMessageChannelReady:Ljava/lang/String;

    new-instance v3, Lo/setDropDownGravity$onPostMessage$onPostMessage;

    invoke-direct {v3, p0, p1}, Lo/setDropDownGravity$onPostMessage$onPostMessage;-><init>(Lo/setDropDownGravity$onPostMessage;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    check-cast v3, Lo/onDisconnectSetValue;

    .line 85
    invoke-static {v0, v1, v2, v3}, Lo/recycleView;->onPostMessage(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/onDisconnectSetValue;)V

    :cond_1
    return-void
.end method
