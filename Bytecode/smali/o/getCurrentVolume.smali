.class public final Lo/getCurrentVolume;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onChooseActivity;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a1\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0010\u0008\n\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0087\u0008\u001aJ\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0007\u001aA\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u000e\u0008\n\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00062\u0010\u0008\n\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0087\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "activityViewModels",
        "Lkotlin/Lazy;",
        "VM",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/fragment/app/Fragment;",
        "factoryProducer",
        "Lkotlin/Function0;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "createViewModelLazy",
        "viewModelClass",
        "Lkotlin/reflect/KClass;",
        "storeProducer",
        "Landroidx/lifecycle/ViewModelStore;",
        "viewModels",
        "ownerProducer",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "fragment-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final onPostMessage(Landroidx/fragment/app/Fragment;Lo/viewExistsForQuery;Lo/getServerTime;Lo/getServerTime;)Lo/isSameListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Lo/setQueue;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lo/viewExistsForQuery<",
            "TVM;>;",
            "Lo/getServerTime<",
            "+",
            "Lo/setRatingType;",
            ">;",
            "Lo/getServerTime<",
            "+",
            "Lo/setMetadata$onNavigationEvent;",
            ">;)",
            "Lo/isSameListener<",
            "TVM;>;"
        }
    .end annotation

    const-string p3, "$this$createViewModelLazy"

    invoke-static {p0, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "viewModelClass"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "storeProducer"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance p3, Lo/getCurrentVolume$ICustomTabsCallback;

    invoke-direct {p3, p0}, Lo/getCurrentVolume$ICustomTabsCallback;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast p3, Lo/getServerTime;

    .line 95
    new-instance p0, Lo/getMediaSession;

    invoke-direct {p0, p1, p2, p3}, Lo/getMediaSession;-><init>(Lo/viewExistsForQuery;Lo/getServerTime;Lo/getServerTime;)V

    check-cast p0, Lo/isSameListener;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityChooserView;",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;)V"
        }
    .end annotation

    .line 2477
    iget-object v0, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v0

    .line 2485
    iget-object v1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2008
    invoke-virtual {p1}, Lo/ActivityChooserView;->getInterfaceDescriptor()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3288
    iget v1, p1, Lo/ActivityChooserView;->asInterface:I

    .line 1014
    div-int/2addr v0, v1

    .line 1017
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/databinding/ViewDataBinding$4;

    .line 4015
    iget-object v2, v2, Landroidx/databinding/ViewDataBinding$4;->extraCallback:Landroid/graphics/Rect;

    .line 1021
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 4485
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1024
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 5485
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v4

    sub-int/2addr v3, v4

    .line 6485
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v4

    .line 1026
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 1027
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 1030
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1034
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    .line 1036
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    return-void
.end method
