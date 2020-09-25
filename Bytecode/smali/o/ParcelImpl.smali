.class public final Lo/ParcelImpl;
.super Lo/getRootAlpha;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getRootAlpha<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/common/references/SharedReference;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lo/getRootAlpha;-><init>(Lcom/facebook/common/references/SharedReference;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setPageMargin<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lo/getRootAlpha;-><init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lo/getRootAlpha;->onPostMessage()Lo/getRootAlpha;

    move-result-object v0

    return-object v0
.end method

.method protected final finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    iget-boolean v0, p0, Lo/getRootAlpha;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 44
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-super {p0}, Lo/getRootAlpha;->finalize()V

    return-void

    .line 46
    :cond_0
    :try_start_2
    monitor-exit p0

    const-string v0, "DefaultCloseableReference"

    const-string v1, "Finalized without closing: %x %x (type = %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 51
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    .line 52
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    .line 53
    invoke-virtual {v4}, Lcom/facebook/common/references/SharedReference;->onPostMessage()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 48
    invoke-static {v0, v1, v2}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lo/getRootAlpha;->onPostMessage:Lo/getRootAlpha$onPostMessage;

    iget-object v1, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    iget-object v2, p0, Lo/getRootAlpha;->extraCallback:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lo/getRootAlpha$onPostMessage;->onMessageChannelReady(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V

    .line 57
    invoke-virtual {p0}, Lo/getRootAlpha;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    invoke-super {p0}, Lo/getRootAlpha;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 59
    invoke-super {p0}, Lo/getRootAlpha;->finalize()V

    throw v0
.end method

.method public final onPostMessage()Lo/getRootAlpha;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lo/getRootAlpha;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lo/ParcelImpl;

    iget-object v1, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    iget-object v2, p0, Lo/getRootAlpha;->onPostMessage:Lo/getRootAlpha$onPostMessage;

    iget-object v3, p0, Lo/getRootAlpha;->extraCallback:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lo/ParcelImpl;-><init>(Lcom/facebook/common/references/SharedReference;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-object v0

    .line 1162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
