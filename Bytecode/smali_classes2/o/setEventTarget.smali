.class public final Lo/setEventTarget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u001aH\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u00070\u0006\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0000\u001aD\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u00070\u000e\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "checkWindowSizeStep",
        "",
        "size",
        "",
        "step",
        "windowedIterator",
        "",
        "",
        "T",
        "iterator",
        "partialWindows",
        "",
        "reuseBuffer",
        "windowedSequence",
        "Lkotlin/sequences/Sequence;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/onDisconnect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2029
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/setEventTarget;->onPostMessage:Ljava/util/Set;

    return-void
.end method

.method public static final extraCallback(Ljava/util/Iterator;IIZ)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;IIZ)",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string p3, "iterator"

    invoke-static {p0, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p0, Lo/ensureLogger;->ICustomTabsCallback:Lo/ensureLogger;

    check-cast p0, Ljava/util/Iterator;

    return-object p0

    .line 24
    :cond_0
    new-instance p3, Lo/setEventTarget$onNavigationEvent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p3

    move v1, p1

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lo/setEventTarget$onNavigationEvent;-><init>(IILjava/util/Iterator;ZZLo/setSessionPersistenceKey;)V

    check-cast p3, Lo/nextTransactionOrder;

    const-string p0, "block"

    invoke-static {p3, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    new-instance p0, Lo/applyListenComplete;

    invoke-direct {p0}, Lo/applyListenComplete;-><init>()V

    .line 1041
    move-object p1, p0

    check-cast p1, Lo/setSessionPersistenceKey;

    invoke-static {p3, p0, p1}, Lo/onZombied;->onMessageChannelReady(Lo/nextTransactionOrder;Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    .line 1119
    iput-object p1, p0, Lo/applyListenComplete;->onNavigationEvent:Lo/setSessionPersistenceKey;

    .line 1042
    check-cast p0, Ljava/util/Iterator;

    return-object p0
.end method

.method public static final onPostMessage(II)V
    .locals 3

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, " must be greater than zero."

    if-eq p0, p1, :cond_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Both size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and step "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "size "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Lo/onDisconnect;)Z
    .locals 1

    monitor-enter p0

    .line 2043
    :try_start_0
    iget-object v0, p0, Lo/setEventTarget;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(Lo/onDisconnect;)V
    .locals 1

    monitor-enter p0

    .line 2038
    :try_start_0
    iget-object v0, p0, Lo/setEventTarget;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2039
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage(Lo/onDisconnect;)V
    .locals 1

    monitor-enter p0

    .line 2033
    :try_start_0
    iget-object v0, p0, Lo/setEventTarget;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2034
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
