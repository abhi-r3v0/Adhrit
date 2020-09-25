.class public final Lo/addViewInt;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u000b*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u000b*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/adapter/paymentV2/dataListTemplatePs2/NBAPaymentLifestylePs5ListItemHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "width",
        "",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;I)V",
        "backgroundCard",
        "Landroidx/cardview/widget/CardView;",
        "kotlin.jvm.PlatformType",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "image",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "merchant",
        "Landroid/widget/TextView;",
        "title",
        "getWidth",
        "()I",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final ICustomTabsCallback$Stub:I

.field private final extraCallback:Landroidx/cardview/widget/CardView;

.field final onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onNavigationEvent:Lo/setSpeed;

.field private final onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;I)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 12010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e016d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/addViewInt;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    iput p3, p0, Lo/addViewInt;->ICustomTabsCallback$Stub:I

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b056a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/addViewInt;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b08b5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/addViewInt;->onPostMessage:Landroid/widget/TextView;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0450

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/addViewInt;->onNavigationEvent:Lo/setSpeed;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->backgroundCard:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lo/addViewInt;->extraCallback:Landroidx/cardview/widget/CardView;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v2, v1, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;

    if-eqz v2, :cond_e

    .line 29
    iget-object v2, v0, Lo/addViewInt;->extraCallback:Landroidx/cardview/widget/CardView;

    const-string v3, "backgroundCard"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 30
    iget v4, v0, Lo/addViewInt;->ICustomTabsCallback$Stub:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    iget v4, v0, Lo/addViewInt;->ICustomTabsCallback$Stub:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    iget-object v4, v0, Lo/addViewInt;->extraCallback:Landroidx/cardview/widget/CardView;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 35
    iget v4, v0, Lo/addViewInt;->ICustomTabsCallback$Stub:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    move-object v2, v1

    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;

    .line 1084
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/DataItemBackground;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "image"

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    .line 1094
    iget-object v11, v4, Lcom/dreamplug/fabrik/ui/nba/helper/DataItemBackground;->onPostMessage:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 39
    iget-object v10, v0, Lo/addViewInt;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v10, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    invoke-static/range {v10 .. v17}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 40
    iget-object v4, v0, Lo/addViewInt;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v4, v4, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v4, v4, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v4, :cond_4

    check-cast v4, Lo/setMaxFrame;

    .line 40
    check-cast v4, Lo/getComposition;

    const-string v10, "image.hierarchy"

    invoke-static {v4, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->ICustomTabsCallback()Lo/setFailureListener$extraCallback;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 3369
    invoke-virtual {v4, v5}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v4

    .line 3370
    instance-of v11, v4, Lo/fromAssets;

    if-eqz v11, :cond_0

    .line 3371
    check-cast v4, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_0
    sget-object v11, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v4, v11}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v4

    .line 4094
    :goto_0
    iget-object v11, v4, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v11, v10, :cond_2

    if-eqz v11, :cond_1

    .line 5053
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v11, 0x1

    :goto_2
    if-nez v11, :cond_5

    .line 4098
    iput-object v10, v4, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object v9, v4, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {v4}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    .line 3215
    :cond_3
    throw v9

    .line 2215
    :cond_4
    throw v9

    .line 42
    :cond_5
    :goto_3
    iget-object v4, v0, Lo/addViewInt;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5116
    iget-object v4, v4, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 5216
    iget-object v4, v4, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v4, :cond_d

    check-cast v4, Lo/setMaxFrame;

    .line 42
    check-cast v4, Lo/getComposition;

    .line 7084
    iget-object v8, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/DataItemBackground;

    if-eqz v8, :cond_6

    .line 7097
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/nba/helper/DataItemBackground;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_4

    :cond_6
    move-object v8, v9

    :goto_4
    const/4 v10, 0x7

    .line 42
    invoke-static {v8, v9, v9, v9, v10}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 7564
    invoke-virtual {v4, v7, v8}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 8085
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onMessageChannelReady:Lo/getTargetScrollPosition;

    const-string v8, "merchant"

    if-eqz v4, :cond_7

    .line 43
    iget-object v10, v0, Lo/addViewInt;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v10, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9000
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_7
    iget-object v4, v0, Lo/addViewInt;->onPostMessage:Landroid/widget/TextView;

    const-string/jumbo v10, "title"

    invoke-static {v4, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9086
    iget-object v10, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v10, :cond_8

    .line 10000
    iget-object v10, v10, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v10}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_8
    move-object v10, v9

    .line 44
    :goto_5
    invoke-static {v4, v10}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 45
    iget-object v4, v0, Lo/addViewInt;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10086
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_9

    .line 11000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_9
    move-object v2, v9

    :goto_6
    if-eqz v2, :cond_a

    .line 45
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const/4 v7, 0x1

    :cond_b
    if-eqz v7, :cond_c

    goto :goto_7

    :cond_c
    const/4 v5, 0x1

    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 46
    iget-object v2, v0, Lo/addViewInt;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    const-string v4, "land"

    .line 11066
    invoke-interface {v2, v4, v1, v9}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 47
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lo/addViewInt$onMessageChannelReady;

    invoke-direct {v3, v0, v1}, Lo/addViewInt$onMessageChannelReady;-><init>(Lo/addViewInt;Lo/StaggeredGridLayoutManager;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v2, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_8

    .line 6215
    :cond_d
    throw v9

    :cond_e
    :goto_8
    return-void
.end method
