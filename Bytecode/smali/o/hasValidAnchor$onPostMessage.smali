.class final Lo/hasValidAnchor$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasValidAnchor;-><init>()V
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
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "mosaicList",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;",
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
.field final synthetic ICustomTabsCallback:Lo/hasValidAnchor;


# direct methods
.method constructor <init>(Lo/hasValidAnchor;)V
    .locals 0

    iput-object p1, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 10

    .line 32
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    .line 1047
    iget-object v0, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    invoke-static {v0}, Lo/hasValidAnchor;->extraCallback(Lo/hasValidAnchor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1049
    iget-object v2, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->mosaicView:I

    invoke-virtual {v2, v3}, Lo/hasValidAnchor;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onCreateActionView;

    const-string v3, "mosaicView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1052
    iget-object v2, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v2, v3}, Lo/hasValidAnchor;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onDestroyView;

    invoke-static {v2}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    goto :goto_1

    .line 1054
    :cond_2
    iget-object v2, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v2, v3}, Lo/hasValidAnchor;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onDestroyView;

    invoke-virtual {v2}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1056
    :goto_1
    iget-object v2, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    invoke-static {v2}, Lo/hasValidAnchor;->extraCallback(Lo/hasValidAnchor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 1057
    iget-object v2, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    invoke-static {v2}, Lo/hasValidAnchor;->extraCallback(Lo/hasValidAnchor;)Ljava/util/ArrayList;

    move-result-object v2

    check-cast p1, Ljava/lang/Iterable;

    .line 1208
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "$this$collectionSizeOrDefault"

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    instance-of v4, p1, Ljava/util/Collection;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    goto :goto_2

    :cond_3
    const/16 v4, 0xa

    .line 1208
    :goto_2
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1210
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_6

    .line 1211
    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 1059
    iget-object v7, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    invoke-static {v7}, Lo/hasValidAnchor;->ICustomTabsCallback(Lo/hasValidAnchor;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1060
    new-instance v7, Lo/invalidateAnchor;

    invoke-direct {v7, v1}, Lo/invalidateAnchor;-><init>(B)V

    .line 1061
    iget-object v8, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    invoke-static {v8}, Lo/hasValidAnchor;->ICustomTabsCallback(Lo/hasValidAnchor;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 1064
    :cond_4
    iget-object v7, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    invoke-static {v7}, Lo/hasValidAnchor;->ICustomTabsCallback(Lo/hasValidAnchor;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    check-cast v7, Lo/invalidateAnchor;

    .line 1066
    :goto_4
    new-instance v8, Lo/LinearLayoutManager$SavedState;

    sget-object v9, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    invoke-direct {v8, v5, v7, v4}, Lo/LinearLayoutManager$SavedState;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;Lo/invalidateAnchor;I)V

    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_3

    .line 2441
    :cond_6
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1212
    :cond_7
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    .line 1057
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1068
    iget-object p1, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    invoke-static {p1}, Lo/hasValidAnchor;->onNavigationEvent(Lo/hasValidAnchor;)Lo/validateChildOrder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-eqz v0, :cond_8

    .line 1070
    iget-object p1, p0, Lo/hasValidAnchor$onPostMessage;->ICustomTabsCallback:Lo/hasValidAnchor;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->mosaicView:I

    invoke-virtual {p1, v0}, Lo/hasValidAnchor;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onCreateActionView;

    new-instance v0, Lo/hasValidAnchor$onPostMessage$3;

    invoke-direct {v0, p0}, Lo/hasValidAnchor$onPostMessage$3;-><init>(Lo/hasValidAnchor$onPostMessage;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method
