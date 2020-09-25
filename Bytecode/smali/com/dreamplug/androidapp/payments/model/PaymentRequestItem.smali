.class public Lcom/dreamplug/androidapp/payments/model/PaymentRequestItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field amount:D

.field bankCode:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "bank_code"
    .end annotation
.end field

.field paymentMethodId:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "instrument_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentRequestItem;->paymentMethodId:Ljava/lang/String;

    .line 20
    iput-wide p2, p0, Lcom/dreamplug/androidapp/payments/model/PaymentRequestItem;->amount:D

    .line 21
    iput-object p4, p0, Lcom/dreamplug/androidapp/payments/model/PaymentRequestItem;->bankCode:Ljava/lang/String;

    return-void
.end method
