.class public abstract Lo/requireHost;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000cH\'J\u0014\u0010\r\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/assets/helper/persistance/AssetsDao;",
        "",
        "()V",
        "getAsset",
        "Lcom/dreamplug/fabrik/helper/assets/helper/persistance/BackgroundAssetsEntity;",
        "id",
        "",
        "getBackGround",
        "Lcom/dreamplug/fabrik/helper/assets/Background;",
        "insertAssetEntities",
        "",
        "backgroundsAssetEntities",
        "",
        "insertBackgrounds",
        "background",
        "app_release"
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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/setInitialSavedState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "background"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast p1, Ljava/lang/Iterable;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Lo/setInitialSavedState;

    .line 18
    sget-object v2, Lo/requireFragmentManager;->onPostMessage:Lo/requireFragmentManager$onNavigationEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    .line 1044
    :cond_0
    instance-of v2, v1, Lo/setInitialSavedState$extraCallback;

    if-eqz v2, :cond_1

    .line 1045
    new-instance v2, Lo/getActivity;

    .line 2006
    iget-object v3, v1, Lo/setInitialSavedState;->ICustomTabsCallback:Ljava/lang/String;

    .line 1045
    check-cast v1, Lo/setInitialSavedState$extraCallback;

    .line 2013
    iget v4, v1, Lo/setInitialSavedState$extraCallback;->onMessageChannelReady:I

    .line 1045
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3012
    iget-object v5, v1, Lo/setInitialSavedState$extraCallback;->extraCallback:Ljava/util/List;

    .line 4011
    iget-object v1, v1, Lo/setInitialSavedState$extraCallback;->onNavigationEvent:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1045
    invoke-direct {v2, v3, v4, v5, v1}, Lo/getActivity;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 1047
    :cond_1
    instance-of v2, v1, Lo/setInitialSavedState$onMessageChannelReady;

    if-eqz v2, :cond_3

    .line 1048
    new-instance v2, Lo/getActivity;

    .line 5006
    iget-object v3, v1, Lo/setInitialSavedState;->ICustomTabsCallback:Ljava/lang/String;

    .line 1048
    check-cast v1, Lo/setInitialSavedState$onMessageChannelReady;

    .line 5019
    iget v1, v1, Lo/setInitialSavedState$onMessageChannelReady;->onNavigationEvent:I

    .line 1048
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6019
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "java.util.Collections.singletonList(element)"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    invoke-direct {v2, v3, v1}, Lo/getActivity;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :goto_2
    if-nez v1, :cond_2

    .line 18
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1048
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 29
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 17
    invoke-virtual {p0, v0}, Lo/requireHost;->onMessageChannelReady(Ljava/util/List;)V

    return-void
.end method

.method public abstract onMessageChannelReady(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getActivity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/getActivity;
.end method
