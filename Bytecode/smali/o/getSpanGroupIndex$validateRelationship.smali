.class final Lo/getSpanGroupIndex$validateRelationship;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/onChildDrawOver;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/dreamplug/fabrik/ui/lending/model/TenureScreenData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$validateRelationship;->extraCallback:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 79
    check-cast p1, Lo/onChildDrawOver;

    if-eqz p1, :cond_4

    .line 1344
    iget-object v0, p0, Lo/getSpanGroupIndex$validateRelationship;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v0

    .line 3072
    iget-object v0, v0, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1344
    :goto_0
    check-cast v0, Lo/onAnchorReady;

    sget-object v1, Lo/onAnchorReady$onNavigationEvent;->extraCallback:Lo/onAnchorReady$onNavigationEvent;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1345
    iget-object v0, p0, Lo/getSpanGroupIndex$validateRelationship;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v0, p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;Lo/onChildDrawOver;)V

    .line 1346
    iget-object p1, p0, Lo/getSpanGroupIndex$validateRelationship;->extraCallback:Lo/getSpanGroupIndex;

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v3

    .line 4078
    iget-object v3, v3, Lo/getSpanIndex;->notify:Ljava/util/List;

    .line 1346
    check-cast v3, Ljava/lang/Iterable;

    .line 2143
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lo/postDispatchSwipe;

    .line 5030
    iget-object v5, v5, Lo/postDispatchSwipe;->asBinder:Ljava/lang/Boolean;

    .line 1346
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    const/4 v3, 0x0

    .line 2144
    check-cast v4, Lo/postDispatchSwipe;

    if-eqz v4, :cond_3

    .line 6029
    iget-object v2, v4, Lo/postDispatchSwipe;->onNavigationEvent:Ljava/lang/String;

    .line 6043
    :cond_3
    new-instance v4, Lo/addWrite;

    const-string v5, "recommended_tenure"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    const/4 v2, 0x1

    .line 1347
    iget-object v3, p0, Lo/getSpanGroupIndex$validateRelationship;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v3}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v3

    .line 6079
    iget-object v3, v3, Lo/getSpanIndex;->getDefaultImpl:Ljava/util/ArrayList;

    .line 1347
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7043
    new-instance v4, Lo/addWrite;

    const-string v5, "cards_count"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 1346
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "stash_tenure_screen_load"

    .line 1346
    invoke-virtual {p1, v0, v2}, Lo/getSpanGroupIndex;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1348
    iget-object p1, p0, Lo/getSpanGroupIndex$validateRelationship;->extraCallback:Lo/getSpanGroupIndex;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/getSpanGroupIndex;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    :cond_4
    return-void
.end method
