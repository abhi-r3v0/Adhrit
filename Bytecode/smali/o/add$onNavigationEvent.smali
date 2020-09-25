.class final Lo/add$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/add;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/add;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# direct methods
.method constructor <init>(Lo/add;Ljava/lang/String;Ljava/lang/String;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V
    .locals 0

    iput-object p1, p0, Lo/add$onNavigationEvent;->ICustomTabsCallback:Lo/add;

    iput-object p2, p0, Lo/add$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/add$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lo/add$onNavigationEvent;->onPostMessage:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "status"

    const-string v2, "failure"

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    const-string v2, "D001"

    .line 72
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget-object v1, p0, Lo/add$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/add$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p0, Lo/add$onNavigationEvent;->onPostMessage:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    invoke-static {v0, v1, v2, v3}, Lo/add;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    return-void
.end method
