.class final Lo/notifyDataSetChanged$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
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
        "upiResponse",
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
.field private synthetic onNavigationEvent:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0

    iput-object p1, p0, Lo/notifyDataSetChanged$asBinder;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, 0x4081d615

    if-eq p3, v0, :cond_5

    const v0, 0x75141187

    if-eq p3, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p3, "GET_SESSION_TOKEN"

    .line 123
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    const-string/jumbo p3, "status"

    .line 125
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "SUCCESS"

    invoke-static {p3, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    const-string p3, "isDeviceBound"

    .line 126
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string/jumbo v2, "true"

    invoke-static {p3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 127
    new-instance p3, Lo/notifyDataSetChanged$asBinder$ICustomTabsCallback;

    invoke-direct {p3}, Lo/notifyDataSetChanged$asBinder$ICustomTabsCallback;-><init>()V

    .line 1101
    iget-object p3, p3, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 128
    new-instance v2, Lo/writeStringNoTag;

    invoke-direct {v2}, Lo/writeStringNoTag;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v1

    goto :goto_0

    .line 1845
    :cond_2
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v2, v3, p3}, Lo/writeStringNoTag;->extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 128
    :goto_0
    check-cast p1, Lcom/cred/pay/repository/models/UpiAccountResponse;

    .line 2013
    iget-object p1, p1, Lcom/cred/pay/repository/models/UpiAccountResponse;->extraCallback:Ljava/util/List;

    .line 129
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    .line 134
    :cond_3
    iget-object p1, p0, Lo/notifyDataSetChanged$asBinder;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-static {p1, p2}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;Z)V

    .line 135
    iget-object p1, p0, Lo/notifyDataSetChanged$asBinder;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->extraCallback(Lo/notifyDataSetChanged;)Lo/add;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2047
    sget-object p2, Lo/add;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    iget-object p1, p1, Lo/add;->onPostMessage:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    invoke-static {p2, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2048
    sput-object v1, Lo/add;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 136
    :cond_4
    iget-object p1, p0, Lo/notifyDataSetChanged$asBinder;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-static {p1, v1}, Lo/notifyDataSetChanged;->ICustomTabsCallback(Lo/notifyDataSetChanged;Lo/add;)V

    goto :goto_1

    :cond_5
    const-string p1, "SDK_INIT"

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 121
    iget-object p1, p0, Lo/notifyDataSetChanged$asBinder;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->onNavigationEvent(Lo/notifyDataSetChanged;)V

    :cond_6
    :goto_1
    return-void
.end method
