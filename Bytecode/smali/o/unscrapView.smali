.class public final Lo/unscrapView;
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
        "Lo/tryBindViewHolderByDeadline<",
        "TR;TE;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00040\u00032\u00020\u0005B5\u0008\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\t\u0012\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\"\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fH\u0016J\u0011\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0096\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0011\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0096\u0001J\u0011\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0013H\u0096\u0001R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/NetworkCallAdapter;",
        "R",
        "E",
        "Lcom/dreamplug/network/internals/BaseCallAdapter;",
        "Lcom/dreamplug/network/helper/NetworkCall;",
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
.field private final onPostMessage:Lo/RecyclerView$RecyclerListener;
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/unscrapView;->onPostMessage:Lo/RecyclerView$RecyclerListener;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Type;Lo/quickRecycleScrapView;)V
    .locals 1

    .line 16
    new-instance v0, Lo/RecyclerView$RecyclerListener;

    invoke-direct {v0, p1, p2}, Lo/RecyclerView$RecyclerListener;-><init>(Ljava/lang/reflect/Type;Lo/quickRecycleScrapView;)V

    invoke-direct {p0, p1, v0}, Lo/unscrapView;-><init>(Ljava/lang/reflect/Type;Lo/RecyclerView$RecyclerListener;)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/fromQueryDefinition;)Ljava/lang/Object;
    .locals 1

    const-string v0, "call"

    .line 12
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lo/unscrapView;->onPostMessage:Lo/RecyclerView$RecyclerListener;

    invoke-virtual {v0, p1}, Lo/RecyclerView$RecyclerListener;->onNavigationEvent(Lo/fromQueryDefinition;)Lo/clearScrap;

    move-result-object p1

    .line 2025
    sget-object v0, Lo/copyFrom;->onNavigationEvent:Lo/copyFrom;

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Ljava/util/concurrent/Executor;)V

    .line 2026
    new-instance v0, Lo/tryBindViewHolderByDeadline;

    invoke-direct {v0, p1}, Lo/tryBindViewHolderByDeadline;-><init>(Lo/clearScrap;)V

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/reflect/Type;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/unscrapView;->onPostMessage:Lo/RecyclerView$RecyclerListener;

    .line 1031
    iget-object v0, v0, Lo/RecyclerView$RecyclerListener;->extraCallback:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final extraCallback(Z)V
    .locals 1

    iget-object v0, p0, Lo/unscrapView;->onPostMessage:Lo/RecyclerView$RecyclerListener;

    .line 3023
    iput-boolean p1, v0, Lo/RecyclerView$RecyclerListener;->onPostMessage:Z

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "serializerType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/unscrapView;->onPostMessage:Lo/RecyclerView$RecyclerListener;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4015
    iput-object p1, v1, Lo/RecyclerView$RecyclerListener;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/unscrapView;->onPostMessage:Lo/RecyclerView$RecyclerListener;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3019
    iput-object p1, v1, Lo/RecyclerView$RecyclerListener;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method
