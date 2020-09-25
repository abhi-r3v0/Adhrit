.class public final Lo/getMoveThreshold;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \t*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n \t*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n \t*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/holder/IntroCardViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cardContainer",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "kotlin.jvm.PlatformType",
        "cta",
        "Lcom/dreamplug/ui/NeuButton;",
        "ctaLayout",
        "icon1",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "icon2",
        "icon3",
        "shadow1",
        "Landroid/view/View;",
        "text1",
        "Lcom/dreamplug/widget/CredTextView;",
        "text2",
        "text3",
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

.field private final ICustomTabsCallback$Stub:Landroid/view/View;

.field private final asInterface:Lo/setSpeed;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final getInterfaceDescriptor:Lo/setSpeed;

.field private final onMessageChannelReady:Lo/onChildrenLoaded;

.field private final onNavigationEvent:Lo/saveOldPosition;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;

.field private final onTransact:Lo/setSpeed;

.field private final warmup:Lo/onChildrenLoaded;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 13010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0192

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getMoveThreshold;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 39
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getMoveThreshold;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 40
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getMoveThreshold;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 41
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    iput-object p1, p0, Lo/getMoveThreshold;->onNavigationEvent:Lo/saveOldPosition;

    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getMoveThreshold;->onMessageChannelReady:Lo/onChildrenLoaded;

    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->icon1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getMoveThreshold;->asInterface:Lo/setSpeed;

    .line 44
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->shadow1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/getMoveThreshold;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 45
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->icon2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getMoveThreshold;->onTransact:Lo/setSpeed;

    .line 46
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->icon3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getMoveThreshold;->getInterfaceDescriptor:Lo/setSpeed;

    .line 47
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cardContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getMoveThreshold;->warmup:Lo/onChildrenLoaded;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    instance-of v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz v2, :cond_b

    .line 51
    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 1027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;

    if-eqz v1, :cond_b

    .line 1055
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;

    .line 52
    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->onPostMessage(Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string v11, "icon2"

    const-string/jumbo v12, "shadow1"

    const-string v3, "icon1"

    if-eqz v4, :cond_0

    .line 54
    iget-object v5, v0, Lo/getMoveThreshold;->asInterface:Lo/setSpeed;

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v13, 0x36

    move-object v3, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v13

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 55
    iget-object v3, v0, Lo/getMoveThreshold;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$visible"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v4, v0, Lo/getMoveThreshold;->asInterface:Lo/setSpeed;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    const-string v3, "$this$gone"

    invoke-static {v4, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    .line 2017
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v4, v0, Lo/getMoveThreshold;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-static {v4, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v3, v0, Lo/getMoveThreshold;->onTransact:Lo/setSpeed;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    .line 93
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_a

    check-cast v4, Lo/onChildrenLoaded$onPostMessage;

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 94
    move-object v5, v4

    check-cast v5, Lo/onChildrenLoaded$onPostMessage;

    .line 60
    invoke-virtual {v5, v2}, Lo/onChildrenLoaded$onPostMessage;->setMarginStart(I)V

    const v2, 0x7f0b019a

    .line 61
    iput v2, v5, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    .line 95
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :goto_0
    iget-object v12, v0, Lo/getMoveThreshold;->onTransact:Lo/setSpeed;

    invoke-static {v12, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3057
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3100
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;->onPostMessage:Ljava/lang/String;

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object v13, v3

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 65
    sget-object v16, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x36

    invoke-static/range {v12 .. v19}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 66
    iget-object v4, v0, Lo/getMoveThreshold;->getInterfaceDescriptor:Lo/setSpeed;

    const-string v2, "icon3"

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4061
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;

    if-eqz v2, :cond_2

    .line 4100
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/ImageCustom;->onPostMessage:Ljava/lang/String;

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 66
    sget-object v8, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x36

    invoke-static/range {v4 .. v11}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 68
    iget-object v2, v0, Lo/getMoveThreshold;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v4, "text1"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 5063
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->newSession:Lo/getTargetScrollPosition;

    if-eqz v4, :cond_3

    .line 6000
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_3
    move-object v4, v3

    .line 68
    :goto_3
    invoke-static {v2, v4}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 6065
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->ICustomTabsCallback$Stub$Proxy:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_4

    .line 70
    iget-object v4, v0, Lo/getMoveThreshold;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "text2"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const-string/jumbo v6, "text2.paint"

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 71
    iget-object v7, v0, Lo/getMoveThreshold;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v7, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 7000
    iget-object v10, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v10}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    iget-object v7, v0, Lo/getMoveThreshold;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v7, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v7, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    const/4 v6, 0x2

    new-array v12, v6, [I

    .line 72
    fill-array-data v12, :array_0

    new-array v13, v6, [F

    fill-array-data v13, :array_1

    .line 73
    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v15

    .line 70
    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v15, Landroid/graphics/Shader;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 74
    iget-object v4, v0, Lo/getMoveThreshold;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 74
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_4
    iget-object v2, v0, Lo/getMoveThreshold;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v4, "text3"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 8067
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    if-eqz v4, :cond_5

    .line 9000
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_5
    move-object v4, v3

    .line 76
    :goto_4
    invoke-static {v2, v4}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, v0, Lo/getMoveThreshold;->warmup:Lo/onChildrenLoaded;

    const-string v4, "cardContainer"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9041
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Background;

    if-eqz v4, :cond_6

    .line 9110
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/Background;->extraCallback:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_5

    :cond_6
    move-object v4, v3

    .line 10009
    :goto_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "Resources.getSystem()"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x1

    const v7, 0x414b3333    # 12.7f

    .line 10010
    invoke-static {v6, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 78
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v4, v3, v5, v3, v6}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v2, v0, Lo/getMoveThreshold;->onMessageChannelReady:Lo/onChildrenLoaded;

    const-string v4, "ctaLayout"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10049
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v4, :cond_7

    .line 11020
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onRelationshipValidationResult:Ljava/lang/Boolean;

    goto :goto_6

    :cond_7
    move-object v4, v3

    .line 80
    :goto_6
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    const v4, 0x3e4ccccd    # 0.2f

    :goto_7
    invoke-virtual {v2, v4}, Lo/onChildrenLoaded;->setAlpha(F)V

    .line 81
    iget-object v2, v0, Lo/getMoveThreshold;->onNavigationEvent:Lo/saveOldPosition;

    const-string v4, "cta"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 11049
    iget-object v5, v1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v5, :cond_9

    .line 12015
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_9

    .line 13000
    iget-object v3, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 81
    :cond_9
    invoke-static {v2, v3}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lo/getMoveThreshold;->onNavigationEvent:Lo/saveOldPosition;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Lo/getMoveThreshold$ICustomTabsCallback;

    invoke-direct {v3, v1, v0}, Lo/getMoveThreshold$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;Lo/getMoveThreshold;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v2, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 93
    :cond_a
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    return-void

    :array_0
    .array-data 4
        -0xcf83a6
        -0x8f4967
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
