.class public final Lo/tryBindViewHolderByDeadline;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rJ*\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u001c\u0010\u0011\u001a\u00020\u00082\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rH\u0002J\u0006\u0010\u0012\u001a\u00020\u0013R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "R",
        "E",
        "",
        "callRequest",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "(Lcom/dreamplug/network/internals/call/CallRequest;)V",
        "cancel",
        "",
        "enqueue",
        "tag",
        "",
        "callback",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/network/helper/LiveCallback;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "enqueueInternal",
        "isCanceled",
        "",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onMessageChannelReady:Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/clearScrap<",
            "TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/clearScrap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/clearScrap<",
            "TR;TE;>;)V"
        }
    .end annotation

    const-string v0, "callRequest"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    return-void
.end method
