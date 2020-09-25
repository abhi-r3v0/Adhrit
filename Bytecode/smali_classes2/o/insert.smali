.class public abstract Lo/insert;
.super Lo/pruneCache;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/pruneCache;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()V
    .locals 0

    return-void
.end method

.method public extraCallback(Z)Lo/setTransactionSuccessful;
    .locals 1

    .line 85
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract onMessageChannelReady()Lo/insert;
.end method

.method public abstract onMessageChannelReady(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/insert;
.end method

.method public onPostMessage()V
    .locals 0

    return-void
.end method

.method public onPostMessage(Lo/setTransactionSuccessful;Ljava/lang/Runnable;)V
    .locals 0

    .line 110
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
