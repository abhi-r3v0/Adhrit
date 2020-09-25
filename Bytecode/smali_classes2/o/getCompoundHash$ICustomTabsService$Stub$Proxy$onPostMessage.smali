.class final Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;
.super Lo/shouldIncludeCompoundHash$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getMinKey$asInterface;

.field private synthetic onNavigationEvent:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;


# direct methods
.method constructor <init>(Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;Lo/getMinKey$asInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1536
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->onNavigationEvent:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iput-object p2, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->extraCallback:Lo/getMinKey$asInterface;

    invoke-direct {p0}, Lo/shouldIncludeCompoundHash$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method final extraCallback(Lo/shouldIncludeCompoundHash;)V
    .locals 2

    .line 1559
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->onNavigationEvent:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object v0, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->onRelationshipValidationResult:Lo/getConnectionUrl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/getConnectionUrl;->onMessageChannelReady(Ljava/lang/Object;Z)V

    return-void
.end method

.method final onMessageChannelReady(Lo/openDatabase;)V
    .locals 1

    .line 1547
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->onNavigationEvent:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object v0, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0, p1}, Lo/getCompoundHash;->extraCallback(Lo/getCompoundHash;Lo/openDatabase;)V

    .line 1548
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->extraCallback:Lo/getMinKey$asInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1549
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->extraCallback:Lo/getMinKey$asInterface;

    invoke-interface {v0, p1}, Lo/getMinKey$asInterface;->onNavigationEvent(Lo/openDatabase;)V

    return-void

    .line 2511
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onMessageChannelReady(Lo/shouldIncludeCompoundHash;)V
    .locals 2

    .line 1554
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->onNavigationEvent:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object v0, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->onRelationshipValidationResult:Lo/getConnectionUrl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lo/getConnectionUrl;->onMessageChannelReady(Ljava/lang/Object;Z)V

    return-void
.end method

.method final onNavigationEvent(Lo/shouldIncludeCompoundHash;)V
    .locals 1

    .line 1540
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->onNavigationEvent:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object v0, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onNavigationEvent(Lo/getCompoundHash;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1541
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->onNavigationEvent:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object v0, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->AudioAttributesCompatParcelizer(Lo/getCompoundHash;)Lo/serializeObject;

    move-result-object v0

    .line 2121
    iget-object v0, v0, Lo/serializeObject;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lo/serializeObject;->onNavigationEvent(Ljava/util/Map;Lo/splitBytes;)V

    .line 1542
    iget-object p1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;->onNavigationEvent:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object p1, p1, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {p1}, Lo/getCompoundHash;->IconCompatParcelizer(Lo/getCompoundHash;)V

    return-void
.end method
