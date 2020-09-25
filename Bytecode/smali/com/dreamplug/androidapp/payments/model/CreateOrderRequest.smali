.class public Lcom/dreamplug/androidapp/payments/model/CreateOrderRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/PaymentRequestItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/PaymentRequestItem;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/CreateOrderRequest;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/PaymentRequestItem;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/CreateOrderRequest;->items:Ljava/util/List;

    return-void
.end method
