.class public final Lo/computeScrollOffset;
.super Lo/zzc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/computeScrollOffset$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0012\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00142\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullTncDialog;",
        "Lcom/dreamplug/androidapp/ui/widget/FullScreenDialogFragment;",
        "()V",
        "listItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "rewardData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "getRewardData",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "setRewardData",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;)V",
        "tncVerticalAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onBackPressed",
        "onCreate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/computeScrollOffset$ICustomTabsCallback;


# instance fields
.field private ICustomTabsCallback:Ljava/util/HashMap;

.field private onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

.field private final onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

.field public onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/computeScrollOffset$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/computeScrollOffset$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/computeScrollOffset;->extraCallback:Lo/computeScrollOffset$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lo/zzc;-><init>()V

    .line 44
    new-instance v0, Lo/computeScrollOffset$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/computeScrollOffset$onMessageChannelReady;-><init>(Lo/computeScrollOffset;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/computeScrollOffset;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lo/zzc;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1400f8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-super {p0, p1}, Lo/zzc;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 38
    new-instance v0, Lo/resolveIsInfinite;

    iget-object v1, p0, Lo/computeScrollOffset;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {v0, v1}, Lo/resolveIsInfinite;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v0, Lo/checkForGaps;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Lo/performGetLayoutInflater;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lo/performGetLayoutInflater;-><init>(B)V

    check-cast v0, Lo/checkForGaps;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    new-instance v0, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v0, p1, v2}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 40
    iput-object v0, p0, Lo/computeScrollOffset;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00b7

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/zzc;->onDestroyView()V

    .line 8000
    iget-object v0, p0, Lo/computeScrollOffset;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/computeScrollOffset;->ICustomTabsCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/computeScrollOffset;->ICustomTabsCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/computeScrollOffset;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/computeScrollOffset;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final synthetic onRelationshipValidationResult()Lo/addWrites;
    .locals 1

    .line 7120
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    .line 27
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

.method public final onTransact()V
    .locals 1

    iget-object v0, p0, Lo/computeScrollOffset;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2}, Lo/zzc;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->back:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    const-string p2, "back"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/computeScrollOffset$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/computeScrollOffset$onNavigationEvent;-><init>(Lo/computeScrollOffset;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 76
    iget-object p1, p0, Lo/computeScrollOffset;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz p1, :cond_8

    .line 77
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->machineTncRecyclerView:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "machineTncRecyclerView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/computeScrollOffset;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    const-string/jumbo v0, "tncVerticalAdapter"

    if-nez p2, :cond_0

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    iget-object p1, p0, Lo/computeScrollOffset;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3039
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 80
    :goto_0
    sget-object v1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v1

    .line 3320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    move-object p2, v1

    .line 80
    :cond_2
    check-cast p2, Landroid/view/WindowInsets;

    if-eqz p2, :cond_3

    .line 81
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    :cond_3
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 82
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p2

    move v4, p2

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 84
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    .line 86
    new-instance v2, Lo/onCreateView;

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "Resources.getSystem()"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v11, 0x1

    .line 4010
    invoke-static {v11, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const-string/jumbo v6, "top_space"

    move-object v5, v2

    .line 86
    invoke-direct/range {v5 .. v10}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_5

    .line 4082
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v2, :cond_5

    .line 4094
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onPostMessage:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 88
    check-cast v2, Ljava/lang/Iterable;

    .line 124
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;

    .line 89
    new-instance v5, Lo/clearOnScrollListeners;

    const/4 v6, 0x4

    invoke-direct {v5, v3, v11, v1, v6}, Lo/clearOnScrollListeners;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;ZZI)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 5082
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz p1, :cond_6

    .line 5095
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 92
    new-instance v1, Lo/considerReleasingGlowsOnScroll;

    invoke-direct {v1, p1}, Lo/considerReleasingGlowsOnScroll;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_6
    new-instance p1, Lo/onCreateView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const-string v3, "bottom_space"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p1, p0, Lo/computeScrollOffset;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    if-nez p1, :cond_7

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_7
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 6038
    invoke-virtual {p1, p2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_8
    return-void
.end method
