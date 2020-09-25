.class public final Lo/getSharedElementReturnTransition;
.super Lo/WithHint;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSharedElementReturnTransition$onNavigationEvent;,
        Lo/getSharedElementReturnTransition$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001a2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0008\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/CMBottomSheetDialog;",
        "Lcom/dreamplug/androidapp/ui/widget/CredBottomSheetDialog;",
        "()V",
        "adapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "getAdapter",
        "()Lcom/dreamplug/utils/list/VerticalAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/cm/CMBottomSheetDialog$Extra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/cm/CMBottomSheetDialog$Extra;",
        "extra$delegate",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "router",
        "Lcom/dreamplug/fabrik/ui/cm/CardManagementCtaManager;",
        "getRouter",
        "()Lcom/dreamplug/fabrik/ui/cm/CardManagementCtaManager;",
        "router$delegate",
        "onCreate",
        "",
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
.field public static final onMessageChannelReady:Lo/getSharedElementReturnTransition$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private asBinder:Ljava/util/HashMap;

.field private final extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onNavigationEvent:Lo/isSameListener;

.field private final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getSharedElementReturnTransition$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getSharedElementReturnTransition$onPostMessage;-><init>(B)V

    sput-object v0, Lo/getSharedElementReturnTransition;->onMessageChannelReady:Lo/getSharedElementReturnTransition$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lo/WithHint;-><init>()V

    .line 35
    new-instance v0, Lo/getSharedElementReturnTransition$extraCallback;

    invoke-direct {v0, p0}, Lo/getSharedElementReturnTransition$extraCallback;-><init>(Lo/getSharedElementReturnTransition;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 35
    iput-object v2, p0, Lo/getSharedElementReturnTransition;->onPostMessage:Lo/isSameListener;

    .line 40
    sget-object v0, Lo/getSharedElementReturnTransition$onTransact;->ICustomTabsCallback:Lo/getSharedElementReturnTransition$onTransact;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 40
    iput-object v2, p0, Lo/getSharedElementReturnTransition;->onNavigationEvent:Lo/isSameListener;

    .line 43
    new-instance v0, Lo/getSharedElementReturnTransition$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getSharedElementReturnTransition$ICustomTabsCallback;-><init>(Lo/getSharedElementReturnTransition;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 43
    iput-object v1, p0, Lo/getSharedElementReturnTransition;->ICustomTabsCallback:Lo/isSameListener;

    .line 100
    new-instance v0, Lo/getSharedElementReturnTransition$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/getSharedElementReturnTransition$onMessageChannelReady;-><init>(Lo/getSharedElementReturnTransition;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/getSharedElementReturnTransition;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getSharedElementReturnTransition;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 33
    iget-object p0, p0, Lo/getSharedElementReturnTransition;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/getSharedElementReturnTransition;)Lo/getDimensionPixelOffset;
    .locals 0

    .line 21000
    iget-object p0, p0, Lo/getSharedElementReturnTransition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getDimensionPixelOffset;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getSharedElementReturnTransition;->asBinder:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getSharedElementReturnTransition;->asBinder:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getSharedElementReturnTransition;->asBinder:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/getSharedElementReturnTransition;->asBinder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Lo/WithHint;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CMBottomSheetDialog"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e0068

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/WithHint;->onDestroyView()V

    .line 22000
    iget-object v0, p0, Lo/getSharedElementReturnTransition;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/getSharedElementReturnTransition;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    const-string/jumbo v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super/range {p0 .. p2}, Lo/WithHint;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2000
    iget-object v1, v0, Lo/getSharedElementReturnTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getSharedElementReturnTransition$onNavigationEvent;

    if-eqz v1, :cond_f

    .line 2148
    iget-object v1, v1, Lo/getSharedElementReturnTransition$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz v1, :cond_f

    .line 61
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->actionsList:I

    invoke-virtual {v0, v2}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "actionsList"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v3, v0, Lo/getSharedElementReturnTransition;->onPostMessage:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/repositionToWrapContentIfNecessary;

    .line 61
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 3014
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3016
    :cond_0
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->extraCallback:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 68
    check-cast v3, Ljava/lang/Iterable;

    .line 162
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 3023
    iget-object v7, v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onPostMessage:Ljava/lang/String;

    const-string v8, "header_1"

    .line 69
    invoke-static {v7, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3027
    iget-object v7, v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3051
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v7, :cond_3

    .line 4000
    iget-object v7, v7, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    .line 69
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-ne v7, v4, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3f

    const-string v14, "bottomsheet"

    move-object v7, v6

    .line 70
    invoke-static/range {v7 .. v15}, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/cm/models/Template;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLjava/lang/String;Ljava/lang/String;I)Lcom/dreamplug/fabrik/ui/cm/models/Template;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4023
    :cond_3
    iget-object v7, v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onPostMessage:Ljava/lang/String;

    .line 71
    invoke-static {v7, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3f

    const-string v14, "bottomsheet"

    move-object v7, v6

    .line 72
    invoke-static/range {v7 .. v15}, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/cm/models/Template;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLjava/lang/String;Ljava/lang/String;I)Lcom/dreamplug/fabrik/ui/cm/models/Template;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4027
    :cond_4
    :goto_1
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 4076
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 74
    check-cast v6, Ljava/lang/Iterable;

    .line 163
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3f

    const-string v15, "bottomsheet"

    .line 75
    invoke-static/range {v8 .. v16}, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/cm/models/Template;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;Lcom/dreamplug/fabrik/ui/control/CardDetails;ZLjava/lang/String;Ljava/lang/String;I)Lcom/dreamplug/fabrik/ui/cm/models/Template;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5018
    :cond_5
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Template;

    const/4 v3, 0x2

    const/4 v6, 0x0

    if-eqz v1, :cond_d

    .line 80
    sget v7, Lo/getSwitchMinWidth$onPostMessage;->footerLayout:I

    invoke-virtual {v0, v7}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "footerLayout"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "$this$visible"

    invoke-static {v7, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6009
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 81
    sget v7, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {v0, v7}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lo/createFullSpanItemFromEnd;

    const-string v9, "cta"

    invoke-static {v7, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    .line 6027
    iget-object v10, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 6071
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz v10, :cond_6

    .line 6173
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v10, :cond_6

    .line 7014
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v10, :cond_6

    .line 8000
    iget-object v10, v10, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v10}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_6
    move-object v10, v6

    .line 81
    :goto_3
    invoke-static {v7, v10}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 82
    sget v7, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {v0, v7}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lo/createFullSpanItemFromEnd;

    invoke-static {v7, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    new-instance v9, Lo/getSharedElementReturnTransition$asInterface;

    invoke-direct {v9, v1, v0}, Lo/getSharedElementReturnTransition$asInterface;-><init>(Lcom/dreamplug/fabrik/ui/cm/models/Template;Lo/getSharedElementReturnTransition;)V

    check-cast v9, Lo/onDisconnectSetValue;

    invoke-static {v7, v9}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 8027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 8061
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    if-eqz v1, :cond_d

    .line 8184
    iget-object v10, v1, Lcom/dreamplug/fabrik/ui/cm/models/Image;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 87
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {v0, v1}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    const-string v7, "image"

    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9009
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {v0, v1}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9116
    iget-object v1, v1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 9216
    iget-object v1, v1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v1, :cond_c

    check-cast v1, Lo/setMaxFrame;

    .line 88
    check-cast v1, Lo/getComposition;

    const-string v8, "image.hierarchy"

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->extraCallback()Lo/setFailureListener$extraCallback;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 11369
    invoke-virtual {v1, v3}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v1

    .line 11370
    instance-of v9, v1, Lo/fromAssets;

    if-eqz v9, :cond_7

    .line 11371
    check-cast v1, Lo/fromAssets;

    goto :goto_4

    .line 11373
    :cond_7
    sget-object v9, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v1, v9}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v1

    .line 12094
    :goto_4
    iget-object v9, v1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v9, v8, :cond_9

    if-eqz v9, :cond_8

    .line 13053
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-nez v9, :cond_a

    .line 12098
    iput-object v8, v1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 12099
    iput-object v6, v1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 12100
    invoke-virtual {v1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 12101
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 89
    :cond_a
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {v0, v1}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lo/setSpeed;

    invoke-static {v9, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    invoke-static/range {v9 .. v16}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_7

    .line 11215
    :cond_b
    throw v6

    .line 10215
    :cond_c
    throw v6

    .line 93
    :cond_d
    :goto_7
    invoke-static {v2}, Lo/extraCallback;->onNavigationEvent(Ljava/util/List;)Lo/addWrite;

    move-result-object v1

    .line 14000
    iget-object v2, v0, Lo/getSharedElementReturnTransition;->onPostMessage:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/repositionToWrapContentIfNecessary;

    .line 14027
    iget-object v7, v1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 94
    check-cast v7, Ljava/util/List;

    const-string/jumbo v8, "value"

    invoke-static {v7, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15000
    iget-object v2, v2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/checkSpanForGap;

    .line 14038
    invoke-virtual {v2, v7}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 15028
    iget-object v1, v1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 95
    check-cast v1, Ljava/util/List;

    new-array v2, v3, [Lo/addWrite;

    .line 15043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "templates_list"

    invoke-direct {v7, v8, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v5

    .line 16000
    iget-object v1, v0, Lo/getSharedElementReturnTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getSharedElementReturnTransition$onNavigationEvent;

    if-eqz v1, :cond_e

    .line 16148
    iget-object v6, v1, Lo/getSharedElementReturnTransition$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 17043
    :cond_e
    new-instance v1, Lo/addWrite;

    const-string v5, "context_name"

    invoke-direct {v1, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v4

    const-string v1, "pairs"

    .line 96
    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "cm_card_bs1_screen_load"

    .line 96
    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_f
    return-void
.end method
