.class final Lo/findRootMostMatchingPath$extraCallback;
.super Lo/rootMostValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findRootMostMatchingPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/rootMostValue<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000cJ\u0014\u0010\r\u001a\u00020\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000fH\u0016J\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J!\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000b\u001a\u00028\u00012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0002\u0010\u0018R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;",
        "E",
        "Lkotlinx/coroutines/channels/Receive;",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "receiveMode",
        "",
        "(Lkotlinx/coroutines/CancellableContinuation;I)V",
        "completeResumeReceive",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "resumeReceiveClosed",
        "closed",
        "Lkotlinx/coroutines/channels/Closed;",
        "resumeValue",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "toString",
        "",
        "tryResumeReceive",
        "Lkotlinx/coroutines/internal/Symbol;",
        "otherOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;",
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
.field private onMessageChannelReady:Lo/addMerge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addMerge<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Lo/addMerge;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addMerge<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 857
    invoke-direct {p0}, Lo/rootMostValue;-><init>()V

    iput-object p1, p0, Lo/findRootMostMatchingPath$extraCallback;->onMessageChannelReady:Lo/addMerge;

    const/4 p1, 0x0

    iput p1, p0, Lo/findRootMostMatchingPath$extraCallback;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lo/findRootMostMatchingPath$extraCallback;->onMessageChannelReady:Lo/addMerge;

    sget-object v1, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    invoke-interface {v0, v1}, Lo/addMerge;->onNavigationEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/findRootMostPathWithValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/findRootMostPathWithValue<",
            "*>;)V"
        }
    .end annotation

    .line 876
    iget p1, p0, Lo/findRootMostMatchingPath$extraCallback;->onPostMessage:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lo/findRootMostMatchingPath$extraCallback;->onMessageChannelReady:Lo/addMerge;

    check-cast p1, Lo/setSessionPersistenceKey;

    sget-object v1, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-static {v0}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 877
    iget-object p1, p0, Lo/findRootMostMatchingPath$extraCallback;->onMessageChannelReady:Lo/addMerge;

    check-cast p1, Lo/setSessionPersistenceKey;

    .line 1061
    sget-object v1, Lo/foreach;->extraCallback:Lo/foreach$onPostMessage;

    .line 1062
    new-instance v1, Lo/foreach$extraCallback;

    invoke-direct {v1, v0}, Lo/foreach$extraCallback;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lo/foreach;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1061
    invoke-static {v0}, Lo/foreach;->onNavigationEvent(Ljava/lang/Object;)Lo/foreach;

    move-result-object v0

    .line 877
    sget-object v1, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-static {v0}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    return-void

    .line 878
    :cond_1
    iget-object p1, p0, Lo/findRootMostMatchingPath$extraCallback;->onMessageChannelReady:Lo/addMerge;

    check-cast p1, Lo/setSessionPersistenceKey;

    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    const-string v1, "exception"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    new-instance v1, Lo/emptyWrite$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/emptyWrite$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    .line 878
    invoke-static {v1}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 858
    iget v0, p0, Lo/findRootMostMatchingPath$extraCallback;->onPostMessage:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p1

    .line 859
    :cond_0
    sget-object v0, Lo/foreach;->extraCallback:Lo/foreach$onPostMessage;

    .line 1060
    invoke-static {p1}, Lo/foreach;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo/foreach;->onNavigationEvent(Ljava/lang/Object;)Lo/foreach;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Object;)Lo/AppCompatDrawableManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lo/AppCompatDrawableManager;"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lo/findRootMostMatchingPath$extraCallback;->onMessageChannelReady:Lo/addMerge;

    invoke-virtual {p0, p1}, Lo/findRootMostMatchingPath$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/addMerge;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 866
    :cond_0
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 869
    :cond_3
    :goto_1
    sget-object p1, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiveElement@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3012
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/findRootMostMatchingPath$extraCallback;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
