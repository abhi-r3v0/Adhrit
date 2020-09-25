.class final Lo/getUserId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EncoderDecoder$RDSException;


# instance fields
.field private final onNavigationEvent:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lo/getUserId;->onNavigationEvent:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(III)Landroid/os/Message;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/getUserId;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/getUserId;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final ICustomTabsCallback(IJ)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lo/getUserId;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/getUserId;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/getUserId;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(I)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lo/getUserId;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage()Landroid/os/Looper;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/getUserId;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
