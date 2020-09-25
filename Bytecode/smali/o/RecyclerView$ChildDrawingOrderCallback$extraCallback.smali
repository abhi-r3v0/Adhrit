.class public final Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$ChildDrawingOrderCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/RecyclerView$ChildDrawingOrderCallback;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/RecyclerView$ChildDrawingOrderCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->extraCallback:Lo/RecyclerView$ChildDrawingOrderCallback;

    iput-object p2, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 111
    iget-object v0, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->extraCallback:Lo/RecyclerView$ChildDrawingOrderCallback;

    iget-object v1, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 1025
    iput-object v1, v0, Lo/RecyclerView$ChildDrawingOrderCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->extraCallback:Lo/RecyclerView$ChildDrawingOrderCallback;

    iget-object v1, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 2025
    iput-object v1, v0, Lo/RecyclerView$ChildDrawingOrderCallback;->onTransact:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->extraCallback:Lo/RecyclerView$ChildDrawingOrderCallback;

    .line 3025
    iget-object v0, v0, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    const/4 v1, 0x0

    const v2, 0x800005

    .line 113
    invoke-virtual {v0, v1, v2}, Lo/isSessionReady;->setDrawerLockMode(II)V

    .line 114
    iget-object v0, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->extraCallback:Lo/RecyclerView$ChildDrawingOrderCallback;

    .line 4025
    iget-object v0, v0, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    .line 114
    invoke-virtual {v0}, Lo/isSessionReady;->extraCallback()V

    .line 115
    iget-object v0, p0, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;->extraCallback:Lo/RecyclerView$ChildDrawingOrderCallback;

    const/4 v2, 0x4

    new-array v3, v2, [Lo/addWrite;

    .line 5087
    iget-object v4, v0, Lo/RecyclerView$ChildDrawingOrderCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "section"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v1

    .line 5088
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1301d9

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 7043
    new-instance v4, Lo/addWrite;

    const-string v5, "icon_text"

    invoke-direct {v4, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v4, v3, v1

    .line 5089
    iget-object v1, v0, Lo/RecyclerView$ChildDrawingOrderCallback;->onTransact:Ljava/lang/String;

    .line 8043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "trigger_section"

    invoke-direct {v4, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v4, v3, v1

    .line 5092
    iget-object v0, v0, Lo/RecyclerView$ChildDrawingOrderCallback;->onMessageChannelReady:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .line 5128
    new-instance v1, Ljava/util/ArrayList;

    const-string v4, "$this$collectionSizeOrDefault"

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9039
    instance-of v4, v0, Ljava/util/Collection;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    .line 5128
    :goto_0
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 5129
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5130
    check-cast v4, Lo/isFullSpan;

    .line 10010
    iget-object v4, v4, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    .line 5091
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5131
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 5092
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x3

    .line 10043
    new-instance v4, Lo/addWrite;

    const-string v5, "option_list"

    invoke-direct {v4, v5, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v1

    const-string v0, "pairs"

    .line 5086
    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "fab_details_screen_load"

    .line 5084
    invoke-static {v1, v0}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
