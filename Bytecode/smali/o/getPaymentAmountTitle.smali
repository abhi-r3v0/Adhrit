.class public final Lo/getPaymentAmountTitle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPaymentAmountTitle$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lo/lambda$publish$0;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lo/getPaymentAmountTitle;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lo/getPaymentAmountTitle;->onNavigationEvent:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public static onMessageChannelReady(Lo/PaymentRequestItem;Lo/getPaymentMode;)Lo/getPaymentDueDateWeaklyTyped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lo/PaymentRequestItem;",
            ">(TR;",
            "Lo/getPaymentMode;",
            ")",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "TR;>;"
        }
    .end annotation

    .line 10
    invoke-interface {p0}, Lo/PaymentRequestItem;->extraCallback()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2021
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 11
    new-instance p1, Lo/getPaymentAmountTitle$onMessageChannelReady;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lo/getPaymentAmountTitle$onMessageChannelReady;-><init>(Lo/getPaymentMode;Lo/PaymentRequestItem;)V

    .line 12
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onNavigationEvent(Lo/PaymentRequestItem;)V

    return-object p1

    .line 2035
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Status code must not be SUCCESS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Lcom/google/android/gms/common/api/Status;Lo/getPaymentMode;)Lo/getPaymentDueDateWeaklyTyped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Lo/getPaymentMode;",
            ")",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 6
    new-instance v0, Lo/isUPIEnabled;

    invoke-direct {v0, p1}, Lo/isUPIEnabled;-><init>(Lo/getPaymentMode;)V

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onNavigationEvent(Lo/PaymentRequestItem;)V

    return-object v0

    .line 1011
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Result must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 4000
    :goto_0
    iget-object v0, p0, Lo/getPaymentAmountTitle;->onNavigationEvent:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/getPaymentAmountTitle;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lo/lambda$publish$0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/lambda$publish$0;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v1, p0, Lo/getPaymentAmountTitle;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iget-object v1, p0, Lo/getPaymentAmountTitle;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lo/lambda$publish$0;

    iget-object v3, p0, Lo/getPaymentAmountTitle;->onNavigationEvent:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Lo/lambda$publish$0;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
