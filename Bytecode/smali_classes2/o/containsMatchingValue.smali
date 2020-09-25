.class public final Lo/containsMatchingValue;
.super Lo/subtree;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u0006H\u0016J\u0014\u0010\u000b\u001a\u00020\u00062\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/SendElement;",
        "Lkotlinx/coroutines/channels/Send;",
        "pollResult",
        "",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V",
        "getPollResult",
        "()Ljava/lang/Object;",
        "completeResumeSend",
        "resumeSendClosed",
        "closed",
        "Lkotlinx/coroutines/channels/Closed;",
        "toString",
        "",
        "tryResumeSend",
        "Lkotlinx/coroutines/internal/Symbol;",
        "otherOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
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
.field private final extraCallback:Ljava/lang/Object;

.field private onPostMessage:Lo/addMerge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addMerge<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lo/addMerge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/addMerge<",
            "-",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 1016
    invoke-direct {p0}, Lo/subtree;-><init>()V

    iput-object p1, p0, Lo/containsMatchingValue;->extraCallback:Ljava/lang/Object;

    iput-object p2, p0, Lo/containsMatchingValue;->onPostMessage:Lo/addMerge;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/AppCompatDrawableManager;
    .locals 3

    .line 1018
    iget-object v0, p0, Lo/containsMatchingValue;->onPostMessage:Lo/addMerge;

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lo/addMerge;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 1019
    :cond_0
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1022
    :cond_3
    :goto_1
    sget-object v0, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 1024
    iget-object v0, p0, Lo/containsMatchingValue;->onPostMessage:Lo/addMerge;

    sget-object v1, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    invoke-interface {v0, v1}, Lo/addMerge;->onNavigationEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 1

    .line 1014
    iget-object v0, p0, Lo/containsMatchingValue;->extraCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendElement@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2012
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2014
    iget-object v1, p0, Lo/containsMatchingValue;->extraCallback:Ljava/lang/Object;

    .line 1026
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
