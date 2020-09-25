.class public abstract Lo/applySubtreeWrite;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/isCacheableHost;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
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
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH$J\u0008\u0010\n\u001a\u00020\tH\u0004J\t\u0010\u000b\u001a\u00020\u000cH\u0096\u0002J\u000e\u0010\r\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u000cH\u0002R\u0012\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/collections/AbstractIterator;",
        "T",
        "",
        "()V",
        "nextValue",
        "Ljava/lang/Object;",
        "state",
        "Lkotlin/collections/State;",
        "computeNext",
        "",
        "done",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
        "setNext",
        "value",
        "(Ljava/lang/Object;)V",
        "tryToComputeNext",
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
.field private onMessageChannelReady:Lo/setDebugLogComponents;

.field private onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lo/setDebugLogComponents;->extraCallback:Lo/setDebugLogComponents;

    iput-object v0, p0, Lo/applySubtreeWrite;->onMessageChannelReady:Lo/setDebugLogComponents;

    return-void
.end method


# virtual methods
.method protected abstract extraCallback()V
.end method

.method public hasNext()Z
    .locals 4

    .line 25
    iget-object v0, p0, Lo/applySubtreeWrite;->onMessageChannelReady:Lo/setDebugLogComponents;

    sget-object v1, Lo/setDebugLogComponents;->onPostMessage:Lo/setDebugLogComponents;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Lo/applySubtreeWrite;->onMessageChannelReady:Lo/setDebugLogComponents;

    sget-object v1, Lo/getCompleteChildren;->onNavigationEvent:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1041
    sget-object v0, Lo/setDebugLogComponents;->onPostMessage:Lo/setDebugLogComponents;

    iput-object v0, p0, Lo/applySubtreeWrite;->onMessageChannelReady:Lo/setDebugLogComponents;

    .line 1042
    invoke-virtual {p0}, Lo/applySubtreeWrite;->extraCallback()V

    .line 1043
    iget-object v0, p0, Lo/applySubtreeWrite;->onMessageChannelReady:Lo/setDebugLogComponents;

    sget-object v1, Lo/setDebugLogComponents;->ICustomTabsCallback:Lo/setDebugLogComponents;

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v2

    .line 25
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lo/applySubtreeWrite;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lo/setDebugLogComponents;->extraCallback:Lo/setDebugLogComponents;

    iput-object v0, p0, Lo/applySubtreeWrite;->onMessageChannelReady:Lo/setDebugLogComponents;

    .line 37
    iget-object v0, p0, Lo/applySubtreeWrite;->onNavigationEvent:Ljava/lang/Object;

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected final onNavigationEvent()V
    .locals 1

    .line 70
    sget-object v0, Lo/setDebugLogComponents;->onMessageChannelReady:Lo/setDebugLogComponents;

    iput-object v0, p0, Lo/applySubtreeWrite;->onMessageChannelReady:Lo/setDebugLogComponents;

    return-void
.end method

.method protected final onNavigationEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lo/applySubtreeWrite;->onNavigationEvent:Ljava/lang/Object;

    .line 63
    sget-object p1, Lo/setDebugLogComponents;->ICustomTabsCallback:Lo/setDebugLogComponents;

    iput-object p1, p0, Lo/applySubtreeWrite;->onMessageChannelReady:Lo/setDebugLogComponents;

    return-void
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
