.class public final Lo/addFocusables$extraCallback;
.super Lo/addFocusables;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addFocusables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus$Success;",
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
.method public constructor <init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lo/addFocusables;-><init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;B)V

    return-void
.end method