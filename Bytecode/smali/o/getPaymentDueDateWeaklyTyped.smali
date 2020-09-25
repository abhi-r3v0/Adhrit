.class public abstract Lo/getPaymentDueDateWeaklyTyped;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
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
.method public abstract ICustomTabsCallback(JLjava/util/concurrent/TimeUnit;)Lo/PaymentRequestItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation
.end method

.method public ICustomTabsCallback(Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract ICustomTabsCallback()Z
.end method

.method public abstract onMessageChannelReady(Lo/getSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getSource<",
            "-TR;>;)V"
        }
    .end annotation
.end method
