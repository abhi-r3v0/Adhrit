.class public final Lo/RecyclerView$RecyclerListener;
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
        "Lo/clearScrap<",
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00040\u0003B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\"\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000bH\u0016R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/call/CallRequestAdapter;",
        "R",
        "E",
        "Lcom/dreamplug/network/internals/BaseCallAdapter;",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "responseType",
        "Ljava/lang/reflect/Type;",
        "errorConverter",
        "Lcom/dreamplug/network/internals/ErrorConverter;",
        "(Ljava/lang/reflect/Type;Lcom/dreamplug/network/internals/ErrorConverter;)V",
        "cacheKey",
        "",
        "isAuthorizationCall",
        "",
        "serializerType",
        "adapt",
        "call",
        "Lretrofit2/Call;",
        "enableCache",
        "",
        "key",
        "setAuthCall",
        "setSerializer",
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
.field public ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/reflect/Type;

.field private final onMessageChannelReady:Lo/quickRecycleScrapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/quickRecycleScrapView<",
            "TE;>;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lo/quickRecycleScrapView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lo/quickRecycleScrapView<",
            "TE;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "responseType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RecyclerView$RecyclerListener;->extraCallback:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lo/RecyclerView$RecyclerListener;->onMessageChannelReady:Lo/quickRecycleScrapView;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/fromQueryDefinition;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lo/RecyclerView$RecyclerListener;->onNavigationEvent(Lo/fromQueryDefinition;)Lo/clearScrap;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback()Ljava/lang/reflect/Type;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/RecyclerView$RecyclerListener;->extraCallback:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final extraCallback(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lo/RecyclerView$RecyclerListener;->onPostMessage:Z

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "serializerType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lo/RecyclerView$RecyclerListener;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final onNavigationEvent(Lo/fromQueryDefinition;)Lo/clearScrap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fromQueryDefinition<",
            "TR;>;)",
            "Lo/clearScrap<",
            "TR;TE;>;"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lo/RecyclerView$SavedState;

    iget-object v3, p0, Lo/RecyclerView$RecyclerListener;->onMessageChannelReady:Lo/quickRecycleScrapView;

    iget-object v4, p0, Lo/RecyclerView$RecyclerListener;->onNavigationEvent:Ljava/lang/String;

    iget-object v5, p0, Lo/RecyclerView$RecyclerListener;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string/jumbo v1, "serializerType"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    iget-boolean v6, p0, Lo/RecyclerView$RecyclerListener;->onPostMessage:Z

    iget-object v7, p0, Lo/RecyclerView$RecyclerListener;->extraCallback:Ljava/lang/reflect/Type;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lo/RecyclerView$SavedState;-><init>(Lo/fromQueryDefinition;Lo/quickRecycleScrapView;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/reflect/Type;)V

    check-cast v0, Lo/clearScrap;

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lo/RecyclerView$RecyclerListener;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method
