.class public final Lo/addFocusables$onMessageChannelReady;
.super Lo/addFocusables;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addFocusables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus$Processing;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus;",
        "amount",
        "",
        "orderStatusResponse",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/addFocusables$onMessageChannelReady;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 2

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, v0, v1, p1}, Lo/addFocusables$onMessageChannelReady;-><init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    return-void
.end method

.method private constructor <init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V
    .locals 1

    const-wide/16 p1, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Lo/addFocusables;-><init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;B)V

    return-void
.end method
