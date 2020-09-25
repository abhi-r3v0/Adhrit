.class final Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

.field private synthetic extraCallback:Lo/shouldIncludeCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;Lo/shouldIncludeCompoundHash;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$2;->ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iput-object p2, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$2;->extraCallback:Lo/shouldIncludeCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1592
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$2;->ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object v0, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->AudioAttributesCompatParcelizer(Lo/getCompoundHash;)Lo/serializeObject;

    move-result-object v0

    iget-object v1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$2;->extraCallback:Lo/shouldIncludeCompoundHash;

    .line 2087
    iget-object v0, v0, Lo/serializeObject;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Lo/serializeObject;->onMessageChannelReady(Ljava/util/Map;Lo/splitBytes;)V

    .line 1593
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$2;->ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object v0, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onNavigationEvent(Lo/getCompoundHash;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$2;->extraCallback:Lo/shouldIncludeCompoundHash;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
