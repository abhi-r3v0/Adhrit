.class public final Lo/DefaultItemAnimator$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/startSmoothScroll$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DefaultItemAnimator;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/payments/statusV2/PaymentSuccessFabrikDialog$nbaCompletionAnimationListener$1",
        "Lcom/dreamplug/fabrik/ui/nba/adapter/paymentV2/NBAPaymentsAdapter$OnAnimationListener;",
        "onCompletionAnimationEnd",
        "",
        "index",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lo/DefaultItemAnimator$onTransact;->onPostMessage:Lo/DefaultItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 5

    if-ltz p1, :cond_0

    .line 294
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/DefaultItemAnimator$onTransact;->onPostMessage:Lo/DefaultItemAnimator;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/DefaultItemAnimator;->onPostMessage(Landroid/content/Context;)Lo/toLegacyStreamType;

    move-result-object v1

    invoke-interface {v1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "getLifecycleOwner(context).lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    new-instance v4, Lo/DefaultItemAnimator$onTransact$onPostMessage;

    invoke-direct {v4, p0, p1}, Lo/DefaultItemAnimator$onTransact$onPostMessage;-><init>(Lo/DefaultItemAnimator$onTransact;I)V

    check-cast v4, Lo/getServerTime;

    invoke-static {v0, v1, v2, v3, v4}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    :cond_0
    return-void
.end method
