.class public abstract Lo/addFocusables;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/addFocusables$extraCallback;,
        Lo/addFocusables$onNavigationEvent;,
        Lo/addFocusables$ICustomTabsCallback;,
        Lo/addFocusables$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u000b\u000c\r\u000eB\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0001\u0004\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus;",
        "",
        "amount",
        "",
        "orderStatusResponse",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V",
        "getAmount",
        "()D",
        "getOrderStatusResponse",
        "()Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "Cancelled",
        "Failure",
        "Processing",
        "Success",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus$Success;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus$Failure;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus$Cancelled;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus$Processing;",
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
.field public final extraCallback:D

.field public final onPostMessage:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;


# direct methods
.method private constructor <init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo/addFocusables;->extraCallback:D

    iput-object p3, p0, Lo/addFocusables;->onPostMessage:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    return-void
.end method

.method public synthetic constructor <init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;B)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lo/addFocusables;-><init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    return-void
.end method
