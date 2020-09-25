.class public final Lo/applyListenComplete;
.super Lo/applyTaggedQueryOverwrite;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/setSessionPersistenceKey;
.implements Lo/isCacheableHost;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/applyTaggedQueryOverwrite<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lo/setSessionPersistenceKey<",
        "Lo/addWrites;",
        ">;",
        "Lo/isCacheableHost;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u00020\u00050\u0004B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\t\u0010\u0018\u001a\u00020\u0019H\u0096\u0002J\u000e\u0010\u001a\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u001bJ\r\u0010\u001c\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u001bJ\u001e\u0010\u001d\u001a\u00020\u00052\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001fH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u0019\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\u001f\u0010$\u001a\u00020\u00052\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlin/sequences/SequenceBuilderIterator;",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "",
        "()V",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "nextIterator",
        "nextStep",
        "getNextStep",
        "()Lkotlin/coroutines/Continuation;",
        "setNextStep",
        "(Lkotlin/coroutines/Continuation;)V",
        "nextValue",
        "Ljava/lang/Object;",
        "state",
        "",
        "Lkotlin/sequences/State;",
        "exceptionalState",
        "",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
        "nextNotReady",
        "resumeWith",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)V",
        "yield",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "yieldAll",
        "iterator",
        "(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:I

.field public onNavigationEvent:Lo/setSessionPersistenceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setSessionPersistenceKey<",
            "-",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lo/applyTaggedQueryOverwrite;-><init>()V

    return-void
.end method

.method private final extraCallback()Ljava/lang/Throwable;
    .locals 3

    .line 166
    iget v0, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state of the iterator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator has failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 167
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 123
    :goto_0
    iget v0, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    invoke-direct {p0}, Lo/applyListenComplete;->extraCallback()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    return v3

    .line 126
    :cond_2
    invoke-static {}, Lo/access$3000;->extraCallback()V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iput v2, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    return v3

    .line 130
    :cond_3
    iput-object v1, p0, Lo/applyListenComplete;->onPostMessage:Ljava/util/Iterator;

    :cond_4
    const/4 v0, 0x5

    .line 137
    iput v0, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    .line 138
    iget-object v0, p0, Lo/applyListenComplete;->onNavigationEvent:Lo/setSessionPersistenceKey;

    if-nez v0, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 139
    :cond_5
    iput-object v1, p0, Lo/applyListenComplete;->onNavigationEvent:Lo/setSessionPersistenceKey;

    .line 140
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    sget-object v2, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-static {v1}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 145
    :goto_0
    iget v0, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    .line 154
    iget-object v0, p0, Lo/applyListenComplete;->ICustomTabsCallback:Ljava/lang/Object;

    .line 155
    iput-object v3, p0, Lo/applyListenComplete;->ICustomTabsCallback:Ljava/lang/Object;

    return-object v0

    .line 158
    :cond_0
    invoke-direct {p0}, Lo/applyListenComplete;->extraCallback()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 148
    :cond_1
    iput v1, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    .line 149
    invoke-static {}, Lo/access$3000;->extraCallback()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1163
    :cond_2
    invoke-virtual {p0}, Lo/applyListenComplete;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setSessionPersistenceKey<",
            "-",
            "Lo/addWrites;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lo/applyListenComplete;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 175
    iput p1, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    .line 177
    iput-object p2, p0, Lo/applyListenComplete;->onNavigationEvent:Lo/setSessionPersistenceKey;

    .line 2054
    sget-object p1, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 3054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    if-ne p1, v0, :cond_0

    const-string v0, "frame"

    .line 176
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4054
    :cond_0
    sget-object p2, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    if-ne p1, p2, :cond_1

    return-object p1

    .line 176
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method

.method public final onNavigationEvent()Lo/isZombied;
    .locals 1

    .line 199
    sget-object v0, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    check-cast v0, Lo/isZombied;

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 1

    .line 4126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    const/4 p1, 0x4

    .line 195
    iput p1, p0, Lo/applyListenComplete;->onMessageChannelReady:I

    return-void

    .line 4126
    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
