.class public abstract Lo/getReminder;
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
.field private final ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPaymentMethod$onPostMessage<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public extraCallback()Lo/getPaymentMethod$onPostMessage;
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

    .line 4
    iget-object v0, p0, Lo/getReminder;->ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;

    return-object v0
.end method

.method protected abstract onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
