.class public final Lo/recycleCachedViewAt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/attachAccessibilityDelegateOnBind;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/attachAccessibilityDelegateOnBind<",
        "TR;",
        "Landroidx/lifecycle/LiveData<",
        "Lo/getViewForPosition<",
        "+TR;+TE;>;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022 \u0012\u0004\u0012\u0002H\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00050\u00040\u00032\u00020\u0006B3\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n\u0012\u0014\u0008\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000c\u00a2\u0006\u0002\u0010\rJ*\u0010\u000e\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0018\u00010\u00042\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0014H\u0016R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/LiveDataNetworkAdapter;",
        "R",
        "E",
        "Lcom/dreamplug/network/internals/BaseCallAdapter;",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/network/helper/Response;",
        "Lcom/dreamplug/network/internals/AdapterExtras;",
        "responseType",
        "Ljava/lang/reflect/Type;",
        "errorConverter",
        "Lcom/dreamplug/network/internals/ErrorConverter;",
        "delegateAdapter",
        "Lcom/dreamplug/network/internals/call/CallRequestAdapter;",
        "(Ljava/lang/reflect/Type;Lcom/dreamplug/network/internals/ErrorConverter;Lcom/dreamplug/network/internals/call/CallRequestAdapter;)V",
        "adapt",
        "call",
        "Lretrofit2/Call;",
        "enableCache",
        "",
        "key",
        "",
        "setAuthCall",
        "isAuthorizationCall",
        "",
        "setSerializer",
        "serializerType",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/RecyclerView$RecyclerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RecyclerView$RecyclerListener<",
            "TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Type;Lo/RecyclerView$RecyclerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lo/RecyclerView$RecyclerListener<",
            "TR;TE;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "responseType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "delegateAdapter"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/recycleCachedViewAt;->onMessageChannelReady:Lo/RecyclerView$RecyclerListener;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Type;Lo/quickRecycleScrapView;)V
    .locals 1

    .line 18
    new-instance v0, Lo/RecyclerView$RecyclerListener;

    invoke-direct {v0, p1, p2}, Lo/RecyclerView$RecyclerListener;-><init>(Ljava/lang/reflect/Type;Lo/quickRecycleScrapView;)V

    invoke-direct {p0, p1, v0}, Lo/recycleCachedViewAt;-><init>(Ljava/lang/reflect/Type;Lo/RecyclerView$RecyclerListener;)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/fromQueryDefinition;)Ljava/lang/Object;
    .locals 1

    const-string v0, "call"

    .line 15
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2026
    iget-object v0, p0, Lo/recycleCachedViewAt;->onMessageChannelReady:Lo/RecyclerView$RecyclerListener;

    invoke-virtual {v0, p1}, Lo/RecyclerView$RecyclerListener;->onNavigationEvent(Lo/fromQueryDefinition;)Lo/clearScrap;

    move-result-object p1

    .line 2027
    new-instance v0, Lo/recycleCachedViewAt$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/recycleCachedViewAt$onNavigationEvent;-><init>(Lo/clearScrap;)V

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/reflect/Type;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/recycleCachedViewAt;->onMessageChannelReady:Lo/RecyclerView$RecyclerListener;

    .line 1031
    iget-object v0, v0, Lo/RecyclerView$RecyclerListener;->extraCallback:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final extraCallback(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/recycleCachedViewAt;->onMessageChannelReady:Lo/RecyclerView$RecyclerListener;

    .line 3023
    iput-boolean p1, v0, Lo/RecyclerView$RecyclerListener;->onPostMessage:Z

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "serializerType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lo/recycleCachedViewAt;->onMessageChannelReady:Lo/RecyclerView$RecyclerListener;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4015
    iput-object p1, v1, Lo/RecyclerView$RecyclerListener;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lo/recycleCachedViewAt;->onMessageChannelReady:Lo/RecyclerView$RecyclerListener;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3019
    iput-object p1, v1, Lo/RecyclerView$RecyclerListener;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method
