.class public interface abstract Lo/rootMostValueMatching;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
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
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0017J\u0014\u0010\u0015\u001a\u00020\u00042\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\'J\u001a\u0010\u0015\u001a\u00020\u00162\u0010\u0008\u0002\u0010\u0017\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aH&J\u000f\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u00a6\u0002J\u000f\u0010\u001d\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010\u001eJ\u0011\u0010\u001f\u001a\u00028\u0000H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fH\u00a7@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u0013\u0010\"\u001a\u0004\u0018\u00018\u0000H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 R\u001a\u0010\u0003\u001a\u00020\u00048&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0003\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u00048&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\t\u0010\u0006\u001a\u0004\u0008\u0008\u0010\u0007R\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR)\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f0\u000b8&X\u00a7\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0010\u0010\u0006\u001a\u0004\u0008\u0011\u0010\rR\"\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000b8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0006\u001a\u0004\u0008\u0014\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "E",
        "",
        "isClosedForReceive",
        "",
        "isClosedForReceive$annotations",
        "()V",
        "()Z",
        "isEmpty",
        "isEmpty$annotations",
        "onReceive",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnReceive",
        "()Lkotlinx/coroutines/selects/SelectClause1;",
        "onReceiveOrClosed",
        "Lkotlinx/coroutines/channels/ValueOrClosed;",
        "onReceiveOrClosed$annotations",
        "getOnReceiveOrClosed",
        "onReceiveOrNull",
        "onReceiveOrNull$annotations",
        "getOnReceiveOrNull",
        "cancel",
        "",
        "cause",
        "",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "iterator",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "poll",
        "()Ljava/lang/Object;",
        "receive",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveOrClosed",
        "receiveOrNull",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract onPostMessage(Lo/setSessionPersistenceKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionPersistenceKey<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
