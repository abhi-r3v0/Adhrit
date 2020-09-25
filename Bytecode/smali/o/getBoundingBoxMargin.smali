.class public final Lo/getBoundingBoxMargin;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/holder/KnowChildCardViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cardContainer",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "kotlin.jvm.PlatformType",
        "image",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "text1",
        "Lcom/dreamplug/widget/CredTextView;",
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
.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final onMessageChannelReady:Lo/onChildrenLoaded;

.field private final onNavigationEvent:Lo/setSpeed;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 9010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0193

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getBoundingBoxMargin;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getBoundingBoxMargin;->onNavigationEvent:Lo/setSpeed;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cardContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getBoundingBoxMargin;->onMessageChannelReady:Lo/onChildrenLoaded;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz v0, :cond_9

    .line 27
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 1027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;

    if-eqz p1, :cond_9

    .line 28
    iget-object v0, p0, Lo/getBoundingBoxMargin;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "text1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 1063
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->newSession:Lo/getTargetScrollPosition;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 30
    iget-object v3, p0, Lo/getBoundingBoxMargin;->onNavigationEvent:Lo/setSpeed;

    const-string v0, "image"

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2041
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Background;

    if-eqz v1, :cond_1

    .line 2112
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/Background;->onNavigationEvent:Ljava/lang/String;

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 30
    sget-object v7, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 31
    iget-object v1, p0, Lo/getBoundingBoxMargin;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    iget-object v0, v1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 2216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_8

    check-cast v0, Lo/setMaxFrame;

    .line 31
    check-cast v0, Lo/getComposition;

    const-string v1, "image.hierarchy"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onMessageChannelReady()Lo/setFailureListener$extraCallback;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v3, 0x2

    .line 4369
    invoke-virtual {v0, v3}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 4370
    instance-of v3, v0, Lo/fromAssets;

    if-eqz v3, :cond_2

    .line 4371
    check-cast v0, Lo/fromAssets;

    goto :goto_2

    .line 4373
    :cond_2
    sget-object v3, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v3}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 5094
    :goto_2
    iget-object v3, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v4, 0x1

    if-eq v3, v1, :cond_4

    if-eqz v3, :cond_3

    .line 6053
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_5

    .line 5098
    iput-object v1, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 5099
    iput-object v2, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 5100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 5101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 33
    :cond_5
    iget-object v0, p0, Lo/getBoundingBoxMargin;->onMessageChannelReady:Lo/onChildrenLoaded;

    const-string v1, "cardContainer"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7041
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Background;

    if-eqz p1, :cond_6

    .line 7110
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Background;->extraCallback:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_5

    :cond_6
    move-object p1, v2

    .line 8009
    :goto_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "Resources.getSystem()"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, 0x41600000    # 14.0f

    .line 8010
    invoke-static {v4, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {p1, v2, v1, v2, v3}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 4215
    :cond_7
    throw v2

    .line 3215
    :cond_8
    throw v2

    :cond_9
    return-void
.end method
