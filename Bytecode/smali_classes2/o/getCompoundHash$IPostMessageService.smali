.class final Lo/getCompoundHash$IPostMessageService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IPostMessageService"
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/colorFlip;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic onMessageChannelReady:Lo/getCompoundHash;

.field final onNavigationEvent:Ljava/lang/Object;

.field onPostMessage:Lo/emptyMap;


# direct methods
.method private constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lo/getCompoundHash$IPostMessageService;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getCompoundHash$IPostMessageService;->onNavigationEvent:Ljava/lang/Object;

    .line 1021
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/getCompoundHash$IPostMessageService;->ICustomTabsCallback:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lo/getCompoundHash;B)V
    .locals 0

    .line 1016
    invoke-direct {p0, p1}, Lo/getCompoundHash$IPostMessageService;-><init>(Lo/getCompoundHash;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady(Lo/emptyMap;)V
    .locals 2

    .line 1029
    iget-object v0, p0, Lo/getCompoundHash$IPostMessageService;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 1030
    :try_start_0
    iget-object v1, p0, Lo/getCompoundHash$IPostMessageService;->onPostMessage:Lo/emptyMap;

    if-eqz v1, :cond_0

    .line 1031
    monitor-exit v0

    return-void

    .line 1033
    :cond_0
    iput-object p1, p0, Lo/getCompoundHash$IPostMessageService;->onPostMessage:Lo/emptyMap;

    .line 1037
    iget-object v1, p0, Lo/getCompoundHash$IPostMessageService;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 1040
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1043
    iget-object v0, p0, Lo/getCompoundHash$IPostMessageService;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onRelationshipValidationResult(Lo/getCompoundHash;)Lo/buildBalancedTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/buildBalancedTree;->ICustomTabsCallback(Lo/emptyMap;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1040
    monitor-exit v0

    throw p1
.end method

.method final onNavigationEvent(Lo/cancelSentTransactions;)Lo/emptyMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/cancelSentTransactions<",
            "*>;)",
            "Lo/emptyMap;"
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lo/getCompoundHash$IPostMessageService;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_0
    iget-object v1, p0, Lo/getCompoundHash$IPostMessageService;->onPostMessage:Lo/emptyMap;

    if-eqz v1, :cond_0

    .line 1069
    iget-object p1, p0, Lo/getCompoundHash$IPostMessageService;->onPostMessage:Lo/emptyMap;

    monitor-exit v0

    return-object p1

    .line 1071
    :cond_0
    iget-object v1, p0, Lo/getCompoundHash$IPostMessageService;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1072
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1073
    monitor-exit v0

    throw p1
.end method
