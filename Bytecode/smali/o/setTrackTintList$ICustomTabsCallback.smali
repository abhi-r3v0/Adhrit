.class final Lo/setTrackTintList$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTrackTintList;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
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
        "response",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
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
.field private synthetic onMessageChannelReady:Lo/setTrackTintList;


# direct methods
.method constructor <init>(Lo/setTrackTintList;)V
    .locals 0

    iput-object p1, p0, Lo/setTrackTintList$ICustomTabsCallback;->onMessageChannelReady:Lo/setTrackTintList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 18
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 1031
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_2

    .line 1032
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1032
    check-cast p1, Lcom/cred/pay/repository/models/JuspaySessionToken;

    const-string/jumbo v0, "tag"

    const-string v1, "UPIActivity"

    if-eqz p1, :cond_1

    .line 1034
    iget-object v2, p0, Lo/setTrackTintList$ICustomTabsCallback;->onMessageChannelReady:Lo/setTrackTintList;

    invoke-static {v2}, Lo/setTrackTintList;->ICustomTabsCallback(Lo/setTrackTintList;)Lin/juspay/services/HyperServices;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1035
    iget-object v2, p0, Lo/setTrackTintList$ICustomTabsCallback;->onMessageChannelReady:Lo/setTrackTintList;

    new-instance v3, Lin/juspay/services/HyperServices;

    iget-object v4, p0, Lo/setTrackTintList$ICustomTabsCallback;->onMessageChannelReady:Lo/setTrackTintList;

    check-cast v4, Lo/onSessionEvent;

    invoke-direct {v3, v4}, Lin/juspay/services/HyperServices;-><init>(Lo/onSessionEvent;)V

    invoke-static {v2, v3}, Lo/setTrackTintList;->ICustomTabsCallback(Lo/setTrackTintList;Lin/juspay/services/HyperServices;)V

    .line 1036
    invoke-static {p1}, Lo/setTrackTintList;->ICustomTabsCallback(Lcom/cred/pay/repository/models/JuspaySessionToken;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1037
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreate() called with: initPayload = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2065
    invoke-static {v1, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lo/setTrackTintList$ICustomTabsCallback;->onMessageChannelReady:Lo/setTrackTintList;

    invoke-static {v0}, Lo/setTrackTintList;->ICustomTabsCallback(Lo/setTrackTintList;)Lin/juspay/services/HyperServices;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/setTrackTintList$ICustomTabsCallback;->onMessageChannelReady:Lo/setTrackTintList;

    invoke-static {v1}, Lo/setTrackTintList;->onPostMessage(Lo/setTrackTintList;)Lo/setTrackTintList$onPostMessage;

    move-result-object v1

    check-cast v1, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-virtual {v0, p1, v1}, Lin/juspay/services/HyperServices;->initiate(Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V

    :cond_0
    return-void

    .line 1041
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "onCreate() called with: sessionToken = "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3065
    invoke-static {v1, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
