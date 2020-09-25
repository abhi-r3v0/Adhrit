.class final Lo/onMoveStarting$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onMoveStarting;-><init>(Lo/onSessionEvent;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "kotlin.jvm.PlatformType",
        "command",
        "",
        "requestId",
        "onResponseFromUpiSdk"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onMoveStarting;


# direct methods
.method constructor <init>(Lo/onMoveStarting;)V
    .locals 0

    iput-object p1, p0, Lo/onMoveStarting$onMessageChannelReady;->extraCallback:Lo/onMoveStarting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsonObject "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "UpiSdkCallback"

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v0, p3}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "SUCCESS"

    const-string/jumbo v1, "status"

    const/4 v2, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string p3, "GET_SESSION_TOKEN"

    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 41
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 42
    sget-object p2, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object p2

    const-class p3, Lcom/cred/pay/repository/models/UpiAccountResponse;

    .line 2072
    sget-object v0, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 2098
    invoke-virtual {p2, p3, v0, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p2

    .line 43
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cred/pay/repository/models/UpiAccountResponse;

    .line 44
    iget-object p3, p0, Lo/onMoveStarting$onMessageChannelReady;->extraCallback:Lo/onMoveStarting;

    .line 3028
    iget-object p3, p3, Lo/onMoveStarting;->onMessageChannelReady:Lo/setActive;

    .line 44
    new-instance v0, Lo/onMoveStarting$onNavigationEvent;

    const/4 v1, 0x6

    invoke-direct {v0, p2, v2, v1}, Lo/onMoveStarting$onNavigationEvent;-><init>(Lcom/cred/pay/repository/models/UpiAccountResponse;Lcom/cred/pay/repository/models/UpiErrorResponse;I)V

    invoke-virtual {p3, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    if-nez p2, :cond_6

    .line 48
    sget-object p3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object p3

    const-class v0, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 3072
    sget-object v1, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 3098
    invoke-virtual {p3, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p3

    .line 49
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 50
    iget-object p3, p0, Lo/onMoveStarting$onMessageChannelReady;->extraCallback:Lo/onMoveStarting;

    .line 4028
    iget-object p3, p3, Lo/onMoveStarting;->onMessageChannelReady:Lo/setActive;

    .line 50
    new-instance v0, Lo/onMoveStarting$onNavigationEvent;

    const/4 v1, 0x4

    invoke-direct {v0, p2, p1, v1}, Lo/onMoveStarting$onNavigationEvent;-><init>(Lcom/cred/pay/repository/models/UpiAccountResponse;Lcom/cred/pay/repository/models/UpiErrorResponse;I)V

    invoke-virtual {p3, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :sswitch_1
    const-string p1, "SDK_INIT"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 36
    iget-object p1, p0, Lo/onMoveStarting$onMessageChannelReady;->extraCallback:Lo/onMoveStarting;

    const/4 p2, 0x1

    .line 2020
    iput-boolean p2, p1, Lo/onMoveStarting;->onNavigationEvent:Z

    .line 37
    iget-object p1, p0, Lo/onMoveStarting$onMessageChannelReady;->extraCallback:Lo/onMoveStarting;

    invoke-virtual {p1}, Lo/onMoveStarting;->onPostMessage()V

    return-void

    :sswitch_2
    const-string p3, "PAY"

    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :sswitch_3
    const-string p3, "SET_MPIN"

    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 70
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 71
    sget-object p2, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object p2

    const-class p3, Lcom/cred/pay/repository/models/UpiSuccessResponse;

    .line 6072
    sget-object v0, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 6098
    invoke-virtual {p2, p3, v0, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p2

    .line 72
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cred/pay/repository/models/UpiSuccessResponse;

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    if-nez p2, :cond_3

    .line 75
    sget-object p3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object p3

    const-class v0, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 7072
    sget-object v1, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 7098
    invoke-virtual {p3, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p3

    .line 76
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cred/pay/repository/models/UpiErrorResponse;

    goto :goto_2

    :cond_3
    move-object p1, v2

    .line 78
    :goto_2
    iget-object p3, p0, Lo/onMoveStarting$onMessageChannelReady;->extraCallback:Lo/onMoveStarting;

    .line 8030
    iget-object p3, p3, Lo/onMoveStarting;->onRelationshipValidationResult:Lo/setActive;

    .line 78
    new-instance v0, Lo/fromPathMerge;

    iget-object v1, p0, Lo/onMoveStarting$onMessageChannelReady;->extraCallback:Lo/onMoveStarting;

    .line 8240
    iget-object v1, v1, Lo/onMoveStarting;->asInterface:Lo/snapFromFling$extraCallback;

    .line 78
    invoke-direct {v0, p2, p1, v1}, Lo/fromPathMerge;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lo/onMoveStarting$onMessageChannelReady;->extraCallback:Lo/onMoveStarting;

    .line 9240
    iput-object v2, p1, Lo/onMoveStarting;->asInterface:Lo/snapFromFling$extraCallback;

    goto :goto_5

    :sswitch_4
    const-string p3, "SEND_MONEY"

    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 56
    :goto_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 57
    sget-object p2, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object p2

    const-class p3, Lcom/cred/pay/repository/models/UpiSuccessResponse;

    .line 4072
    sget-object v0, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 4098
    invoke-virtual {p2, p3, v0, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p2

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cred/pay/repository/models/UpiSuccessResponse;

    goto :goto_4

    :cond_4
    move-object p2, v2

    :goto_4
    if-nez p2, :cond_5

    .line 61
    sget-object p3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object p3

    const-class v0, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 5072
    sget-object v1, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 5098
    invoke-virtual {p3, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p3

    .line 62
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 64
    :cond_5
    iget-object p1, p0, Lo/onMoveStarting$onMessageChannelReady;->extraCallback:Lo/onMoveStarting;

    .line 6029
    iget-object p1, p1, Lo/onMoveStarting;->ICustomTabsCallback:Lo/setActive;

    .line 64
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, p2, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_6
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b7c72d7 -> :sswitch_4
        -0x7b3a781b -> :sswitch_3
        0x13488 -> :sswitch_2
        0x4081d615 -> :sswitch_1
        0x75141187 -> :sswitch_0
    .end sparse-switch
.end method
