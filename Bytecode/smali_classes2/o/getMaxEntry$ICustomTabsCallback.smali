.class final Lo/getMaxEntry$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isPersistenceEnabled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getMaxEntry;

.field private extraCallback:Lo/getPredecessorKey;

.field private onMessageChannelReady:[B

.field private final onNavigationEvent:Lo/restoreAuth;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/getMaxEntry;Lo/getPredecessorKey;Lo/restoreAuth;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lo/getMaxEntry$ICustomTabsCallback;->ICustomTabsCallback:Lo/getMaxEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 486
    check-cast p2, Lo/getPredecessorKey;

    iput-object p2, p0, Lo/getMaxEntry$ICustomTabsCallback;->extraCallback:Lo/getPredecessorKey;

    if-eqz p3, :cond_0

    .line 487
    check-cast p3, Lo/restoreAuth;

    iput-object p3, p0, Lo/getMaxEntry$ICustomTabsCallback;->onNavigationEvent:Lo/restoreAuth;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "statsTraceCtx"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "headers"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lo/getMaxEntry$ICustomTabsCallback;->onPostMessage:Z

    .line 526
    iget-object v1, p0, Lo/getMaxEntry$ICustomTabsCallback;->onMessageChannelReady:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lo/getMaxEntry$ICustomTabsCallback;->ICustomTabsCallback:Lo/getMaxEntry;

    invoke-virtual {v0}, Lo/getMaxEntry;->onNavigationEvent()Lo/getMaxEntry$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getMaxEntry$ICustomTabsCallback;->extraCallback:Lo/getPredecessorKey;

    iget-object v2, p0, Lo/getMaxEntry$ICustomTabsCallback;->onMessageChannelReady:[B

    invoke-interface {v0, v1, v2}, Lo/getMaxEntry$onMessageChannelReady;->extraCallback(Lo/getPredecessorKey;[B)V

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lo/getMaxEntry$ICustomTabsCallback;->onMessageChannelReady:[B

    .line 530
    iput-object v0, p0, Lo/getMaxEntry$ICustomTabsCallback;->extraCallback:Lo/getPredecessorKey;

    return-void

    .line 4511
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lack of request message. GET request is only supported for unary requests"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback(Lo/pruneTreeRecursive;)Lo/isPersistenceEnabled;
    .locals 0

    return-object p0
.end method

.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Ljava/io/InputStream;)V
    .locals 3

    .line 493
    iget-object v0, p0, Lo/getMaxEntry$ICustomTabsCallback;->onMessageChannelReady:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 495
    :try_start_0
    invoke-static {p1}, Lo/getReport;->onNavigationEvent(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lo/getMaxEntry$ICustomTabsCallback;->onMessageChannelReady:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    iget-object v0, p0, Lo/getMaxEntry$ICustomTabsCallback;->onNavigationEvent:Lo/restoreAuth;

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lo/restoreAuth;->onPostMessage(J)V

    return-void

    :catch_0
    move-exception p1

    .line 497
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3511
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "writePayload should not be called multiple times"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(I)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Z)Lo/isPersistenceEnabled;
    .locals 0

    return-object p0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 519
    iget-boolean v0, p0, Lo/getMaxEntry$ICustomTabsCallback;->onPostMessage:Z

    return v0
.end method
