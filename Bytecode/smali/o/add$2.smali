.class final Lo/add$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/add;-><init>(Landroid/app/Activity;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V
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
.field private synthetic onPostMessage:Lo/add;


# direct methods
.method constructor <init>(Lo/add;)V
    .locals 0

    iput-object p1, p0, Lo/add$2;->onPostMessage:Lo/add;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "status"

    const-string v2, "failure"

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    const-string v2, "D001"

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object v1, p0, Lo/add$2;->onPostMessage:Lo/add;

    invoke-static {v1}, Lo/add;->ICustomTabsCallback(Lo/add;)Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    move-result-object v1

    const-string v2, "N/A"

    const-string v3, "GET_SESSION_TOKEN"

    invoke-static {v0, v2, v3, v1}, Lo/add;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    return-void
.end method
