.class public abstract Lo/getMismatchDetails;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lo/setCustomAmount$onMessageChannelReady;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/getPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPaymentMethod<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:[Lo/setAmountRefunded;

.field private final onNavigationEvent:Z


# virtual methods
.method public extraCallback()V
    .locals 1

    .line 12
    iget-object v0, p0, Lo/getMismatchDetails;->extraCallback:Lo/getPaymentMethod;

    invoke-virtual {v0}, Lo/getPaymentMethod;->ICustomTabsCallback()V

    return-void
.end method

.method public onMessageChannelReady()[Lo/setAmountRefunded;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/getMismatchDetails;->onMessageChannelReady:[Lo/setAmountRefunded;

    return-object v0
.end method

.method protected abstract onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/getMismatchDetails;->onNavigationEvent:Z

    return v0
.end method

.method public onPostMessage()Lo/getPaymentMethod$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getPaymentMethod$onPostMessage<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/getMismatchDetails;->extraCallback:Lo/getPaymentMethod;

    invoke-virtual {v0}, Lo/getPaymentMethod;->onMessageChannelReady()Lo/getPaymentMethod$onPostMessage;

    move-result-object v0

    return-object v0
.end method
