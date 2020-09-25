.class public abstract Lo/performAccessibilityAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0016\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0007H\'J\u0008\u0010\u0008\u001a\u00020\u0004H\'J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\'J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0007H\'J\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\u000bH\'J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\'J\u0018\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\u000bH\'J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0016\u0010\u0011\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0007H\u0017J\u0018\u0010\u0012\u001a\u00020\u00042\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0007H\u0017J\u0018\u0010\u0014\u001a\u00020\u00042\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0007H\'\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/batcher/database/RequestDao;",
        "",
        "()V",
        "delete",
        "",
        "request",
        "Lcom/dreamplug/batcher/database/Request;",
        "",
        "deleteAll",
        "deleteForUrl",
        "url",
        "",
        "getAllUrls",
        "getImmediateRequests",
        "getRequestCountForUrl",
        "",
        "getRequestForUrl",
        "insert",
        "markRequestNotImmediate",
        "requests",
        "update",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;"
        }
    .end annotation
.end method

.method public ICustomTabsCallback(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    check-cast p1, Ljava/lang/Iterable;

    .line 55
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sendAccessibilityEvent;

    .line 16
    invoke-virtual {p0, v0}, Lo/performAccessibilityAction;->onPostMessage(Lo/sendAccessibilityEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract extraCallback(Ljava/lang/String;)I
.end method

.method public abstract extraCallback()V
.end method

.method public extraCallback(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 46
    check-cast p1, Ljava/lang/Iterable;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 57
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 59
    check-cast v1, Lo/sendAccessibilityEvent;

    const/4 v2, 0x0

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 2000
    iget-object v4, v1, Lo/sendAccessibilityEvent;->onMessageChannelReady:Ljava/lang/Integer;

    iget-object v5, v1, Lo/sendAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v6, v1, Lo/sendAccessibilityEvent;->extraCallback:Ljava/lang/String;

    iget-object v7, v1, Lo/sendAccessibilityEvent;->onPostMessage:Ljava/lang/String;

    iget-object v8, v1, Lo/sendAccessibilityEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object v9, v1, Lo/sendAccessibilityEvent;->asBinder:Ljava/lang/Integer;

    iget-object v11, v1, Lo/sendAccessibilityEvent;->onRelationshipValidationResult:Ljava/lang/Long;

    iget-object v12, v1, Lo/sendAccessibilityEvent;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 3000
    new-instance v1, Lo/sendAccessibilityEvent;

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lo/sendAccessibilityEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 47
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_1
    check-cast v0, Ljava/util/List;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 46
    :goto_2
    invoke-virtual {p0, v0}, Lo/performAccessibilityAction;->onPostMessage(Ljava/util/List;)V

    return-void
.end method

.method public abstract onNavigationEvent()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/sendAccessibilityEvent;)V
.end method
