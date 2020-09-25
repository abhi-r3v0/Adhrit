.class final Lo/getCompoundHash$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/resume$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsService"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getCompoundHash;


# direct methods
.method private constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 1732
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsService;->onPostMessage:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCompoundHash;B)V
    .locals 0

    .line 1732
    invoke-direct {p0, p1}, Lo/getCompoundHash$ICustomTabsService;-><init>(Lo/getCompoundHash;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 1750
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->ICustomTabsCallback$Stub(Lo/getCompoundHash;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->getRoot(Lo/getCompoundHash;)Z

    .line 1752
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->isConnected(Lo/getCompoundHash;)V

    .line 1756
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->IPostMessageService$Stub(Lo/getCompoundHash;)V

    .line 1757
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->IconCompatParcelizer(Lo/getCompoundHash;)V

    return-void

    .line 3511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Channel must have been shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent(Z)V
    .locals 2

    .line 1745
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService;->onPostMessage:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->onRelationshipValidationResult:Lo/getConnectionUrl;

    iget-object v1, p0, Lo/getCompoundHash$ICustomTabsService;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v1}, Lo/getCompoundHash;->onRelationshipValidationResult(Lo/getCompoundHash;)Lo/buildBalancedTree;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/getConnectionUrl;->onMessageChannelReady(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onPostMessage(Lo/emptyMap;)V
    .locals 1

    .line 1735
    iget-object p1, p0, Lo/getCompoundHash$ICustomTabsService;->onPostMessage:Lo/getCompoundHash;

    invoke-static {p1}, Lo/getCompoundHash;->ICustomTabsCallback$Stub(Lo/getCompoundHash;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2511
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Channel must have been shut down"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
