.class final Lo/add$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


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


# instance fields
.field private synthetic extraCallback:Lo/add;

.field private synthetic onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/add;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/add$4;->extraCallback:Lo/add;

    iput-object p2, p0, Lo/add$4;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lo/add$4;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lo/addAll;->ICustomTabsCallback:Lo/addAll;

    iget-object v1, p0, Lo/add$4;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    iget-object v1, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lo/add$4;->extraCallback:Lo/add;

    invoke-static {v0}, Lo/add;->ICustomTabsCallback(Lo/add;)Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;->onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
