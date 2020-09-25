.class final Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;->onMessageChannelReady(Lorg/json/JSONObject;Ljava/lang/String;Lo/onSessionEvent;Landroid/view/ViewGroup;Lo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic onMessageChannelReady:Landroid/view/ViewGroup;

.field private synthetic onNavigationEvent:Lo/onSessionEvent;

.field private synthetic onPostMessage:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lo/onSessionEvent;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onPostMessage:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/onSessionEvent;

    iput-object p3, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onMessageChannelReady:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processRequest() called with params: requestJson = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onPostMessage:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JusPayInit"

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2065
    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onMessageChannelReady:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->extraCallback()Lin/juspay/services/HyperServices;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/onSessionEvent;

    iget-object v2, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onMessageChannelReady:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onPostMessage:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lin/juspay/services/HyperServices;->process(Lo/onSessionEvent;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/onSessionEvent;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->extraCallback()Lin/juspay/services/HyperServices;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/onSessionEvent;

    iget-object v2, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onPostMessage:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lin/juspay/services/HyperServices;->process(Lo/onSessionEvent;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1150
    :cond_1
    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->extraCallback()Lin/juspay/services/HyperServices;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;->onPostMessage:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lin/juspay/services/HyperServices;->process(Lorg/json/JSONObject;)V

    .line 107
    :cond_2
    :goto_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
