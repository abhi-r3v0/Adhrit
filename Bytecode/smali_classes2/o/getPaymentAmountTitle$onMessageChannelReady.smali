.class final Lo/getPaymentAmountTitle$onMessageChannelReady;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaymentAmountTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lo/PaymentRequestItem;",
        ">",
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/PaymentRequestItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getPaymentMode;Lo/PaymentRequestItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPaymentMode;",
            "TR;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lo/getPaymentMode;)V

    .line 2
    iput-object p2, p0, Lo/getPaymentAmountTitle$onMessageChannelReady;->extraCallback:Lo/PaymentRequestItem;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lo/PaymentRequestItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation

    .line 4
    iget-object p1, p0, Lo/getPaymentAmountTitle$onMessageChannelReady;->extraCallback:Lo/PaymentRequestItem;

    return-object p1
.end method
