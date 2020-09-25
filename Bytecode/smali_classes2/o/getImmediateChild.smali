.class public final Lo/getImmediateChild;
.super Lo/shouldPruneUnkeptDescendants;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/BlockingEventLoop;",
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "thread",
        "Ljava/lang/Thread;",
        "(Ljava/lang/Thread;)V",
        "getThread",
        "()Ljava/lang/Thread;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/shouldPruneUnkeptDescendants;-><init>()V

    iput-object p1, p0, Lo/getImmediateChild;->onMessageChannelReady:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady()Ljava/lang/Thread;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/getImmediateChild;->onMessageChannelReady:Ljava/lang/Thread;

    return-object v0
.end method
