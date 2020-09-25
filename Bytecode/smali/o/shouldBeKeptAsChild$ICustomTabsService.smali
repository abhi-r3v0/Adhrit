.class final Lo/shouldBeKeptAsChild$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldBeKeptAsChild;->ICustomTabsCallback(Ljava/lang/String;Lorg/json/JSONObject;Z)V
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
.field private synthetic onMessageChannelReady:Lo/shouldBeKeptAsChild;


# direct methods
.method constructor <init>(Lo/shouldBeKeptAsChild;)V
    .locals 0

    iput-object p1, p0, Lo/shouldBeKeptAsChild$ICustomTabsService;->onMessageChannelReady:Lo/shouldBeKeptAsChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 415
    iget-object p3, p0, Lo/shouldBeKeptAsChild$ICustomTabsService;->onMessageChannelReady:Lo/shouldBeKeptAsChild;

    const-string/jumbo v0, "upiResponse"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p1, p2}, Lo/shouldBeKeptAsChild;->ICustomTabsCallback(Lo/shouldBeKeptAsChild;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method
