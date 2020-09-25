.class public final Lo/getLayoutDirection;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/adapter/paymentV2/dataListTemplatePs1/NBAPaymentLifestyleListItemHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "image",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "merchant",
        "Landroid/widget/TextView;",
        "title",
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
.field final ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Lo/setSpeed;

.field private final onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
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

    const v1, 0x7f0e016c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/getLayoutDirection;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b056a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/getLayoutDirection;->onMessageChannelReady:Landroid/widget/TextView;

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b08b5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/getLayoutDirection;->onPostMessage:Landroid/widget/TextView;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0450

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getLayoutDirection;->onNavigationEvent:Lo/setSpeed;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v2, v1, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;

    if-eqz v2, :cond_e

    .line 27
    move-object v2, v1

    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;

    .line 1084
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/DataItemBackground;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "image"

    const/4 v8, 0x0

    if-eqz v3, :cond_5

    .line 1094
    iget-object v10, v3, Lcom/dreamplug/fabrik/ui/nba/helper/DataItemBackground;->onPostMessage:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 28
    iget-object v9, v0, Lo/getLayoutDirection;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v9, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    invoke-static/range {v9 .. v16}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 29
    iget-object v3, v0, Lo/getLayoutDirection;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v3, v3, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v3, v3, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v3, :cond_4

    check-cast v3, Lo/setMaxFrame;

    .line 29
    check-cast v3, Lo/getComposition;

    const-string v9, "image.hierarchy"

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->ICustomTabsCallback()Lo/setFailureListener$extraCallback;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 3369
    invoke-virtual {v3, v4}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v3

    .line 3370
    instance-of v10, v3, Lo/fromAssets;

    if-eqz v10, :cond_0

    .line 3371
    check-cast v3, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_0
    sget-object v10, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v3, v10}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v3

    .line 4094
    :goto_0
    iget-object v10, v3, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v10, v9, :cond_2

    if-eqz v10, :cond_1

    .line 5053
    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_5

    .line 4098
    iput-object v9, v3, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object v8, v3, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {v3}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    .line 3215
    :cond_3
    throw v8

    .line 2215
    :cond_4
    throw v8

    .line 31
    :cond_5
    :goto_3
    iget-object v3, v0, Lo/getLayoutDirection;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5116
    iget-object v3, v3, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 5216
    iget-object v3, v3, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v3, :cond_d

    check-cast v3, Lo/setMaxFrame;

    .line 31
    check-cast v3, Lo/getComposition;

    .line 7084
    iget-object v7, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/DataItemBackground;

    if-eqz v7, :cond_6

    .line 7097
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/nba/helper/DataItemBackground;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_4

    :cond_6
    move-object v7, v8

    :goto_4
    const/4 v9, 0x7

    .line 31
    invoke-static {v7, v8, v8, v8, v9}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 7564
    invoke-virtual {v3, v6, v7}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 8085
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onMessageChannelReady:Lo/getTargetScrollPosition;

    const-string v7, "merchant"

    if-eqz v3, :cond_7

    .line 33
    iget-object v9, v0, Lo/getLayoutDirection;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {v9, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_7
    iget-object v3, v0, Lo/getLayoutDirection;->onPostMessage:Landroid/widget/TextView;

    const-string/jumbo v9, "title"

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9086
    iget-object v9, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_8

    .line 10000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_8
    move-object v9, v8

    .line 34
    :goto_5
    invoke-static {v3, v9}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 35
    iget-object v3, v0, Lo/getLayoutDirection;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

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
    move-object v2, v8

    :goto_6
    if-eqz v2, :cond_a

    .line 35
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const/4 v6, 0x1

    :cond_b
    if-eqz v6, :cond_c

    goto :goto_7

    :cond_c
    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 36
    iget-object v2, v0, Lo/getLayoutDirection;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    const-string v3, "land"

    .line 11066
    invoke-interface {v2, v3, v1, v8}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 37
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lo/getLayoutDirection$ICustomTabsCallback;

    invoke-direct {v3, v0, v1}, Lo/getLayoutDirection$ICustomTabsCallback;-><init>(Lo/getLayoutDirection;Lo/StaggeredGridLayoutManager;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v2, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_8

    .line 6215
    :cond_d
    throw v8

    :cond_e
    :goto_8
    return-void
.end method
