.class public final Lo/getAbsoluteMovementFlags;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/holder/BalanceCardViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cta",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "footerView",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "icon1",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "icon2",
        "shadow1",
        "Landroid/view/View;",
        "text1",
        "text2",
        "text3",
        "topView",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final ICustomTabsCallback$Stub:Lo/setSpeed;

.field private final asInterface:Lo/onChildrenLoaded;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final getInterfaceDescriptor:Lo/onChildrenLoaded;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field private final onNavigationEvent:Landroid/view/View;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;

.field private final onTransact:Lo/setSpeed;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 16010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0187

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getAbsoluteMovementFlags;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getAbsoluteMovementFlags;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getAbsoluteMovementFlags;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getAbsoluteMovementFlags;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->shadow1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/getAbsoluteMovementFlags;->onNavigationEvent:Landroid/view/View;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->icon1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getAbsoluteMovementFlags;->ICustomTabsCallback$Stub:Lo/setSpeed;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->icon2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getAbsoluteMovementFlags;->onTransact:Lo/setSpeed;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->topView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getAbsoluteMovementFlags;->asInterface:Lo/onChildrenLoaded;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->footerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getAbsoluteMovementFlags;->getInterfaceDescriptor:Lo/onChildrenLoaded;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz v2, :cond_a

    .line 37
    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 1027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;

    if-eqz v1, :cond_a

    .line 1055
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;

    .line 39
    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->onPostMessage(Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string/jumbo v11, "shadow1"

    const-string v3, "icon1"

    const-string v12, "$this$gone"

    const/16 v13, 0x8

    if-eqz v4, :cond_0

    .line 41
    iget-object v5, v0, Lo/getAbsoluteMovementFlags;->ICustomTabsCallback$Stub:Lo/setSpeed;

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v14, 0x36

    move-object v3, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v14

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 42
    iget-object v3, v0, Lo/getAbsoluteMovementFlags;->onNavigationEvent:Landroid/view/View;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$visible"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v4, v0, Lo/getAbsoluteMovementFlags;->ICustomTabsCallback$Stub:Lo/setSpeed;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-static {v4, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v3, v0, Lo/getAbsoluteMovementFlags;->onNavigationEvent:Landroid/view/View;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :goto_0
    iget-object v14, v0, Lo/getAbsoluteMovementFlags;->onTransact:Lo/setSpeed;

    const-string v3, "icon2"

    invoke-static {v14, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3057
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3100
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;->onPostMessage:Ljava/lang/String;

    move-object v15, v3

    goto :goto_1

    :cond_1
    move-object v15, v4

    :goto_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 48
    sget-object v18, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x36

    invoke-static/range {v14 .. v21}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 50
    iget-object v3, v0, Lo/getAbsoluteMovementFlags;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "text1"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 4063
    iget-object v5, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->newSession:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_2

    .line 5000
    iget-object v5, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v5, v4

    .line 50
    :goto_2
    invoke-static {v3, v5}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 51
    iget-object v3, v0, Lo/getAbsoluteMovementFlags;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "text2"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 5065
    iget-object v5, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->ICustomTabsCallback$Stub$Proxy:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_3

    .line 6000
    iget-object v5, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_3
    move-object v5, v4

    .line 51
    :goto_3
    invoke-static {v3, v5}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 52
    iget-object v3, v0, Lo/getAbsoluteMovementFlags;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "text3"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 6067
    iget-object v5, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_4

    .line 7000
    iget-object v5, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_4
    move-object v5, v4

    .line 52
    :goto_4
    invoke-static {v3, v5}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 7049
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    const-string v5, "Resources.getSystem()"

    const-string v6, "cta"

    const/4 v7, 0x1

    if-eqz v3, :cond_7

    .line 55
    iget-object v8, v0, Lo/getAbsoluteMovementFlags;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v8, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8020
    iget-object v9, v3, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onRelationshipValidationResult:Ljava/lang/Boolean;

    .line 55
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v10}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_5
    const v9, 0x3f19999a    # 0.6f

    :goto_5
    invoke-virtual {v8, v9}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 56
    iget-object v8, v0, Lo/getAbsoluteMovementFlags;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v8, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v8

    check-cast v14, Landroid/view/View;

    .line 9009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/high16 v9, 0x41c00000    # 24.0f

    .line 9010
    invoke-static {v7, v9, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x7c

    const-string v15, "#11141c"

    .line 56
    invoke-static/range {v14 .. v21}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 57
    iget-object v8, v0, Lo/getAbsoluteMovementFlags;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v8, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    .line 9015
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_6

    .line 10000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_6
    move-object v3, v4

    .line 57
    :goto_6
    invoke-static {v8, v3}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 58
    :cond_7
    iget-object v3, v0, Lo/getAbsoluteMovementFlags;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10017
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :goto_7
    iget-object v3, v0, Lo/getAbsoluteMovementFlags;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance v6, Lo/getAbsoluteMovementFlags$ICustomTabsCallback;

    invoke-direct {v6, v1, v0}, Lo/getAbsoluteMovementFlags$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;Lo/getAbsoluteMovementFlags;)V

    check-cast v6, Lo/onDisconnectSetValue;

    invoke-static {v3, v6}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    new-array v3, v13, [F

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v8, 0x41600000    # 14.0f

    .line 11010
    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    aput v6, v3, v2

    .line 12009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 12010
    invoke-static {v7, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    aput v2, v3, v7

    const/4 v2, 0x2

    .line 13009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 13010
    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    aput v6, v3, v2

    .line 14009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 14010
    invoke-static {v7, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/4 v5, 0x3

    aput v2, v3, v5

    const/4 v2, 0x4

    const/4 v6, 0x0

    aput v6, v3, v2

    const/4 v2, 0x5

    aput v6, v3, v2

    const/4 v2, 0x6

    aput v6, v3, v2

    const/4 v2, 0x7

    aput v6, v3, v2

    .line 67
    iget-object v2, v0, Lo/getAbsoluteMovementFlags;->asInterface:Lo/onChildrenLoaded;

    const-string/jumbo v6, "topView"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14041
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Background;

    if-eqz v6, :cond_8

    .line 14110
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lending/model/Background;->extraCallback:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_8

    :cond_8
    move-object v6, v4

    .line 67
    :goto_8
    invoke-static {v6, v4, v4, v3, v5}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v2, v0, Lo/getAbsoluteMovementFlags;->getInterfaceDescriptor:Lo/onChildrenLoaded;

    const-string v6, "footerView"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15043
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Background;

    if-eqz v1, :cond_9

    .line 15110
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/Background;->extraCallback:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_9

    :cond_9
    move-object v1, v4

    .line 68
    :goto_9
    invoke-static {v3}, Lo/isStopped;->extraCallback([F)[F

    move-result-object v3

    invoke-static {v1, v4, v4, v3, v5}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method
