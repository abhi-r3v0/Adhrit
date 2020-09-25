.class public final Lo/getTintListFromCache;
.super Lo/hasGapsToFix;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getTintListFromCache$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hasGapsToFix<",
        "Lo/createOrientationHelpers;",
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/adapter/InstrumentListAdapter;",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getItemViewType",
        "",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "Companion",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/hasGapsToFix;-><init>()V

    iput-object p1, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 2151
    iget-object v0, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager;

    .line 43
    instance-of v0, p1, Lo/addTintListToCache;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_0
    instance-of v0, p1, Lo/getTintMode;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 45
    :cond_1
    instance-of v0, p1, Lo/addDrawableToCache;

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 46
    :cond_2
    instance-of v0, p1, Lo/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 47
    :cond_3
    instance-of v0, p1, Lo/setAllowCollapse;

    if-eqz v0, :cond_4

    const/4 p1, 0x5

    return p1

    .line 48
    :cond_4
    instance-of v0, p1, Lo/createCacheKey;

    if-eqz v0, :cond_5

    const/4 p1, 0x6

    return p1

    .line 49
    :cond_5
    instance-of v0, p1, Lo/setTabSelected;

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    return p1

    .line 50
    :cond_6
    instance-of p1, p1, Lo/animateToTab;

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string v0, "parent"

    .line 7
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    .line 1036
    new-instance p2, Lo/performExpand;

    iget-object v0, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performExpand;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    goto :goto_0

    .line 1033
    :pswitch_0
    new-instance p2, Lo/createTintFilter;

    iget-object v0, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/createTintFilter;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    goto :goto_0

    .line 1030
    :pswitch_1
    new-instance p2, Lo/createTabLayout;

    iget-object v0, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/createTabLayout;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    goto :goto_0

    .line 1027
    :pswitch_2
    new-instance p2, Lo/loadDrawableFromDelegates;

    iget-object v0, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/loadDrawableFromDelegates;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    goto :goto_0

    .line 1024
    :pswitch_3
    new-instance p2, Lo/performExpand;

    iget-object v0, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performExpand;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    goto :goto_0

    .line 1021
    :pswitch_4
    new-instance p2, Lo/performCollapse;

    iget-object v0, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/performCollapse;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    goto :goto_0

    .line 1018
    :pswitch_5
    new-instance p2, Lo/checkVectorDrawableSetup;

    iget-object v0, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/checkVectorDrawableSetup;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    goto :goto_0

    .line 1015
    :pswitch_6
    new-instance p2, Lo/isVectorDrawable;

    iget-object v0, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/isVectorDrawable;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    goto :goto_0

    .line 1012
    :pswitch_7
    new-instance p2, Lo/addDelegate;

    iget-object v0, p0, Lo/getTintListFromCache;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/addDelegate;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    .line 7
    :goto_0
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
