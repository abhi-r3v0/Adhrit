.class public final Lo/MenuItemHoverListener$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MenuItemHoverListener;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cred/pay/ui/PaymentContainerViewModel$Companion;",
        "",
        "()V",
        "INSTRUMENT_LIST_NORMAL",
        "",
        "INSTRUMENT_LIST_RETRY",
        "PAYMENT_STATUS_COMPLETE",
        "PAYMENT_STATUS_FAILED",
        "PAYMENT_STATUS_PROCESSING",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    invoke-static {}, Lo/setQueryHint;->onPostMessage()Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;

    .line 1023
    invoke-static {}, Lo/setQueryHint;->onPostMessage()Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;

    if-lez p1, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    return-void

    .line 1026
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad npar"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
