.class public abstract Lo/setPaymentAmountTitle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lo/PaymentRequestItem;",
        "S::",
        "Lo/PaymentRequestItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Lo/PaymentRequestItem;)Lo/getPaymentDueDateWeaklyTyped;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "TS;>;"
        }
    .end annotation
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
