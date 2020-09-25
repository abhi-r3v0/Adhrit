.class final Lo/add$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/add;
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
        "response",
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


# static fields
.field public static final onPostMessage:Lo/add$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/add$onMessageChannelReady;

    invoke-direct {v0}, Lo/add$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/add$onMessageChannelReady;->onPostMessage:Lo/add$onMessageChannelReady;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 137
    sget-object v0, Lo/add;->extraCallback:Lo/add$onPostMessage;

    .line 1140
    invoke-static {}, Lo/add;->onPostMessage()Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p1, p2, p3}, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;->onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
