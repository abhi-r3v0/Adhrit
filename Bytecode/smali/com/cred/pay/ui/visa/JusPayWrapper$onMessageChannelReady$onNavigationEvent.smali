.class final Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;->onNavigationEvent(Ljava/util/List;Lo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lorg/json/JSONObject;",
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
        "response",
        "Lorg/json/JSONObject;",
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
.field private synthetic onMessageChannelReady:Lo/onDisconnectSetValue;

.field private synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onNavigationEvent;->onPostMessage:Ljava/util/List;

    iput-object p2, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onNavigationEvent;->onMessageChannelReady:Lo/onDisconnectSetValue;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 107
    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "payload"

    .line 1162
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 1163
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1164
    iget-object v2, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onNavigationEvent;->onPostMessage:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 1215
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cred/pay/repository/visa/EligibilityPayload$Card;

    if-eqz p1, :cond_1

    .line 2072
    iget-object v4, v3, Lcom/cred/pay/repository/visa/EligibilityPayload$Card;->extraCallback:Ljava/lang/String;

    .line 1165
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, v0

    .line 1166
    :goto_2
    move-object v5, v1

    check-cast v5, Ljava/util/Map;

    .line 3072
    iget-object v3, v3, Lcom/cred/pay/repository/visa/EligibilityPayload$Card;->extraCallback:Ljava/lang/String;

    .line 1166
    new-instance v6, Lo/createDragToOpenListener;

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    const-string v8, "eligibility"

    .line 1167
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v4, :cond_3

    const-string v9, "enrolled"

    .line 1168
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v4, :cond_4

    const-string v7, "expired"

    .line 1169
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_4
    if-eqz v4, :cond_5

    const-string/jumbo v10, "response_msg"

    .line 1170
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, v0

    .line 1166
    :goto_5
    invoke-direct {v6, v8, v9, v7, v4}, Lo/createDragToOpenListener;-><init>(ZZZLjava/lang/String;)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1173
    :cond_6
    iget-object p1, p0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onNavigationEvent;->onMessageChannelReady:Lo/onDisconnectSetValue;

    invoke-interface {p1, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
