.class public interface abstract Lo/clearScrap;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003J\u0008\u0010\u0010\u001a\u00020\u0011H&J\u001c\u0010\u0012\u001a\u00020\u00112\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0016H&R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0004\u0018\u00010\u000bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "R",
        "E",
        "",
        "callBackExecutor",
        "Ljava/util/concurrent/Executor;",
        "getCallBackExecutor",
        "()Ljava/util/concurrent/Executor;",
        "setCallBackExecutor",
        "(Ljava/util/concurrent/Executor;)V",
        "retryStrategy",
        "Lcom/dreamplug/network/helper/RetryStrategy;",
        "getRetryStrategy",
        "()Lcom/dreamplug/network/helper/RetryStrategy;",
        "setRetryStrategy",
        "(Lcom/dreamplug/network/helper/RetryStrategy;)V",
        "cancel",
        "",
        "enqueue",
        "callback",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
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


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract ICustomTabsCallback(Ljava/util/concurrent/Executor;)V
.end method

.method public abstract ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrCachedViewForId<",
            "TR;TE;>;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V
.end method

.method public abstract onPostMessage()Z
.end method
