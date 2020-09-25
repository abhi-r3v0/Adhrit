.class public final Lo/setAllowEnterTransitionOverlap;
.super Lo/WithHint;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAllowEnterTransitionOverlap$extraCallback;,
        Lo/setAllowEnterTransitionOverlap$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0016\u001a\u00020\u000e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u001a2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\n\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/CardFilterSelectDialog;",
        "Lcom/dreamplug/androidapp/ui/widget/CredBottomSheetDialog;",
        "()V",
        "adapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/cm/CardFilterSelectDialog$Extra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/cm/CardFilterSelectDialog$Extra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "invokeClick",
        "Lkotlin/Function1;",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
        "",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "router",
        "Lcom/dreamplug/fabrik/ui/cm/CardManagementCtaManager;",
        "getRouter",
        "()Lcom/dreamplug/fabrik/ui/cm/CardManagementCtaManager;",
        "router$delegate",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "Companion",
        "Extra",
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
.field public static final onPostMessage:Lo/setAllowEnterTransitionOverlap$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private asBinder:Ljava/util/HashMap;

.field private final asInterface:Lo/hasGapsToFix$onMessageChannelReady;

.field private extraCallback:Lo/repositionToWrapContentIfNecessary;

.field private onMessageChannelReady:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "-",
            "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setAllowEnterTransitionOverlap$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setAllowEnterTransitionOverlap$onPostMessage;-><init>(B)V

    sput-object v0, Lo/setAllowEnterTransitionOverlap;->onPostMessage:Lo/setAllowEnterTransitionOverlap$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lo/WithHint;-><init>()V

    .line 28
    new-instance v0, Lo/setAllowEnterTransitionOverlap$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAllowEnterTransitionOverlap$onMessageChannelReady;-><init>(Lo/setAllowEnterTransitionOverlap;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 28
    iput-object v2, p0, Lo/setAllowEnterTransitionOverlap;->ICustomTabsCallback:Lo/isSameListener;

    .line 30
    sget-object v0, Lo/setAllowEnterTransitionOverlap$ICustomTabsCallback;->onMessageChannelReady:Lo/setAllowEnterTransitionOverlap$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 30
    iput-object v1, p0, Lo/setAllowEnterTransitionOverlap;->onNavigationEvent:Lo/isSameListener;

    .line 64
    new-instance v0, Lo/setAllowEnterTransitionOverlap$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/setAllowEnterTransitionOverlap$onNavigationEvent;-><init>(Lo/setAllowEnterTransitionOverlap;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/setAllowEnterTransitionOverlap;->asInterface:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/setAllowEnterTransitionOverlap;)Lo/getDimensionPixelOffset;
    .locals 0

    .line 9000
    iget-object p0, p0, Lo/setAllowEnterTransitionOverlap;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getDimensionPixelOffset;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/setAllowEnterTransitionOverlap;)Lo/onDisconnectSetValue;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/setAllowEnterTransitionOverlap;->onMessageChannelReady:Lo/onDisconnectSetValue;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/setAllowEnterTransitionOverlap;Lo/onDisconnectSetValue;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/setAllowEnterTransitionOverlap;->onMessageChannelReady:Lo/onDisconnectSetValue;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/setAllowEnterTransitionOverlap;->asBinder:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setAllowEnterTransitionOverlap;->asBinder:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/setAllowEnterTransitionOverlap;->asBinder:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/setAllowEnterTransitionOverlap;->asBinder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lo/WithHint;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 37
    new-instance v0, Lo/performCreateView;

    iget-object v1, p0, Lo/setAllowEnterTransitionOverlap;->asInterface:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {v0, v1}, Lo/performCreateView;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v0, Lo/checkForGaps;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance v0, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 38
    iput-object v0, p0, Lo/setAllowEnterTransitionOverlap;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e0235

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/WithHint;->onDestroyView()V

    .line 10000
    iget-object v0, p0, Lo/setAllowEnterTransitionOverlap;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/setAllowEnterTransitionOverlap;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2}, Lo/WithHint;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 2000
    iget-object p2, p0, Lo/setAllowEnterTransitionOverlap;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/setAllowEnterTransitionOverlap$extraCallback;

    if-eqz p2, :cond_2

    .line 2075
    iget-object p2, p2, Lo/setAllowEnterTransitionOverlap$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz p2, :cond_2

    .line 3016
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->extraCallback:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 49
    check-cast p2, Ljava/lang/Iterable;

    .line 87
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 3027
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3051
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_1

    .line 51
    new-instance v2, Lo/onResumeFragments;

    invoke-direct {v2, v1}, Lo/onResumeFragments;-><init>(Lo/getTargetScrollPosition;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4027
    :cond_1
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 4076
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 53
    check-cast v0, Ljava/lang/Iterable;

    .line 88
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5027
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 5091
    iget-boolean v7, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->validateRelationship:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x6f

    .line 54
    invoke-static/range {v2 .. v10}, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/cm/models/Template;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLjava/lang/String;Ljava/lang/String;I)Lcom/dreamplug/fabrik/ui/cm/models/Template;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_2
    iget-object p2, p0, Lo/setAllowEnterTransitionOverlap;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    const-string v0, "adapter"

    if-nez p2, :cond_3

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7000
    iget-object p2, p2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/checkSpanForGap;

    .line 6038
    invoke-virtual {p2, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 59
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p1}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/dreamplug/androidapp/ui/widget/recyclerview/layoutmanager/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/dreamplug/androidapp/ui/widget/recyclerview/layoutmanager/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p1}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/setAllowEnterTransitionOverlap;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    if-nez p2, :cond_4

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
