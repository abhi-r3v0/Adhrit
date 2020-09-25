.class public abstract Lo/resetKeepAlive;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/resetKeepAlive$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lo/resetKeepAlive<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final extraCallback:Lo/deleteTrackedQuery;

.field private final onMessageChannelReady:Lo/pruneCache;


# direct methods
.method protected constructor <init>(Lo/pruneCache;Lo/deleteTrackedQuery;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 73
    check-cast p1, Lo/pruneCache;

    iput-object p1, p0, Lo/resetKeepAlive;->onMessageChannelReady:Lo/pruneCache;

    if-eqz p2, :cond_0

    .line 74
    check-cast p2, Lo/deleteTrackedQuery;

    iput-object p2, p0, Lo/resetKeepAlive;->extraCallback:Lo/deleteTrackedQuery;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callOptions"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "channel"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback(Ljava/util/concurrent/Executor;)Lo/resetKeepAlive;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TS;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lo/resetKeepAlive;->onMessageChannelReady:Lo/pruneCache;

    iget-object v1, p0, Lo/resetKeepAlive;->extraCallback:Lo/deleteTrackedQuery;

    .line 3209
    new-instance v2, Lo/deleteTrackedQuery;

    invoke-direct {v2, v1}, Lo/deleteTrackedQuery;-><init>(Lo/deleteTrackedQuery;)V

    .line 3210
    iput-object p1, v2, Lo/deleteTrackedQuery;->extraCallback:Ljava/util/concurrent/Executor;

    .line 160
    invoke-virtual {p0, v0, v2}, Lo/resetKeepAlive;->onPostMessage(Lo/pruneCache;Lo/deleteTrackedQuery;)Lo/resetKeepAlive;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Lo/loadTrackedQueries;)Lo/resetKeepAlive;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/loadTrackedQueries;",
            ")TS;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lo/resetKeepAlive;->onMessageChannelReady:Lo/pruneCache;

    iget-object v1, p0, Lo/resetKeepAlive;->extraCallback:Lo/deleteTrackedQuery;

    .line 4101
    new-instance v2, Lo/deleteTrackedQuery;

    invoke-direct {v2, v1}, Lo/deleteTrackedQuery;-><init>(Lo/deleteTrackedQuery;)V

    .line 4102
    iput-object p1, v2, Lo/deleteTrackedQuery;->onMessageChannelReady:Lo/loadTrackedQueries;

    .line 219
    invoke-virtual {p0, v0, v2}, Lo/resetKeepAlive;->onPostMessage(Lo/pruneCache;Lo/deleteTrackedQuery;)Lo/resetKeepAlive;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onPostMessage(Lo/pruneCache;Lo/deleteTrackedQuery;)Lo/resetKeepAlive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/pruneCache;",
            "Lo/deleteTrackedQuery;",
            ")TS;"
        }
    .end annotation
.end method
