.class public final Lo/onSeekTargetStep;
.super Lo/getContentPaddingTop;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/multirewardmerchant/MosaicMultiRewardMerchantAdapter;",
        "Lcom/dreamplug/androidapp/ui/widget/ViewPagerAdapter;",
        "cards",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "dialog",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/multirewardmerchant/MosaicMultiRewardMerchantDialog;",
        "mosaicExtra",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/LifestyleCompassFragment$CompassExtra;",
        "(Ljava/util/List;Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/multirewardmerchant/MosaicMultiRewardMerchantDialog;Lcom/dreamplug/fabrik/ui/lifestyle/compass/LifestyleCompassFragment$CompassExtra;)V",
        "getCards",
        "()Ljava/util/List;",
        "getDialog",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/multirewardmerchant/MosaicMultiRewardMerchantDialog;",
        "getMosaicExtra",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/compass/LifestyleCompassFragment$CompassExtra;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getCount",
        "",
        "getView",
        "Landroid/view/View;",
        "position",
        "pager",
        "Landroidx/viewpager/widget/ViewPager;",
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
.field private final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/getSpeedPerPixel;

.field final onNavigationEvent:Lo/recycleViewsFromEnd$onNavigationEvent;

.field final onPostMessage:Lo/getMoveDuration;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/getMoveDuration;Lo/getSpeedPerPixel;Lo/recycleViewsFromEnd$onNavigationEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;",
            ">;",
            "Lo/getMoveDuration;",
            "Lo/getSpeedPerPixel;",
            "Lo/recycleViewsFromEnd$onNavigationEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "cards"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigator"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialog"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lo/getContentPaddingTop;-><init>()V

    iput-object p1, p0, Lo/onSeekTargetStep;->ICustomTabsCallback$Stub:Ljava/util/List;

    iput-object p2, p0, Lo/onSeekTargetStep;->onPostMessage:Lo/getMoveDuration;

    iput-object p3, p0, Lo/onSeekTargetStep;->onMessageChannelReady:Lo/getSpeedPerPixel;

    iput-object p4, p0, Lo/onSeekTargetStep;->onNavigationEvent:Lo/recycleViewsFromEnd$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(ILo/PlaybackStateCompat;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "pager"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast v1, Landroid/view/ViewGroup;

    const-string v2, "$this$inflate"

    .line 1010
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0e0237

    invoke-virtual {v2, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v2, v0, Lo/onSeekTargetStep;->ICustomTabsCallback$Stub:Ljava/util/List;

    move/from16 v4, p1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 37
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->rewardTitleTextView:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 38
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->rewardDescriptionTextView:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 39
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->backGround:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/setSpeed;

    .line 40
    sget v7, Lo/getSwitchMinWidth$onPostMessage;->cardView:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroidx/cardview/widget/CardView;

    const-string/jumbo v7, "rewardTitleTextView"

    .line 42
    invoke-static {v4, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    iget-object v7, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->asBinder:Ljava/lang/String;

    .line 42
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "rewardDescriptionTextView"

    .line 43
    invoke-static {v5, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    iget-object v7, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onRelationshipValidationResult:Ljava/lang/String;

    .line 43
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "backGround"

    .line 44
    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v7, v6, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v7, v7, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v14, 0x0

    if-eqz v7, :cond_e

    check-cast v7, Lo/setMaxFrame;

    .line 44
    check-cast v7, Lo/getComposition;

    const-string v8, "backGround.hierarchy"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->ICustomTabsCallback()Lo/setFailureListener$extraCallback;

    move-result-object v8

    if-eqz v8, :cond_d

    const/4 v9, 0x2

    .line 3369
    invoke-virtual {v7, v9}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v7

    .line 3370
    instance-of v9, v7, Lo/fromAssets;

    if-eqz v9, :cond_0

    .line 3371
    check-cast v7, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_0
    sget-object v9, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v7, v9}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v7

    .line 4094
    :goto_0
    iget-object v9, v7, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/16 v16, 0x1

    if-eq v9, v8, :cond_2

    if-eqz v9, :cond_1

    .line 5053
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_3

    .line 4098
    iput-object v8, v7, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object v14, v7, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {v7}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6026
    :cond_3
    iget-object v7, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v7, :cond_4

    .line 6346
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    move-object v8, v7

    goto :goto_3

    :cond_4
    move-object v8, v14

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x3e

    move-object v7, v6

    move-object v3, v14

    move/from16 v14, v17

    .line 45
    invoke-static/range {v7 .. v14}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 7116
    iget-object v6, v6, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 7216
    iget-object v6, v6, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v6, :cond_c

    check-cast v6, Lo/setMaxFrame;

    .line 46
    check-cast v6, Lo/getComposition;

    .line 9026
    iget-object v7, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v7, :cond_5

    .line 9349
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v7, :cond_5

    const/4 v8, 0x7

    .line 46
    invoke-static {v7, v3, v3, v3, v8}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto :goto_4

    :cond_5
    move-object v14, v3

    :goto_4
    const/4 v7, 0x0

    .line 9564
    invoke-virtual {v6, v7, v14}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 10026
    iget-object v6, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    const-string v7, "dark"

    if-eqz v6, :cond_6

    .line 10350
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onMessageChannelReady:Ljava/lang/String;

    if-nez v6, :cond_7

    :cond_6
    move-object v6, v7

    .line 11026
    :cond_7
    iget-object v8, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v8, :cond_9

    .line 11349
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v8, :cond_9

    .line 12039
    iget-object v8, v8, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v8, :cond_9

    const-string v9, "$this$getOrNull"

    .line 48
    invoke-static {v8, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$this$lastIndex"

    .line 12266
    invoke-static {v8, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13210
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_8

    const/4 v9, 0x0

    .line 12266
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    goto :goto_5

    :cond_8
    move-object v14, v3

    .line 48
    :goto_5
    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_6

    .line 49
    :cond_9
    invoke-static {v6, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    const/high16 v3, -0x1000000

    goto :goto_6

    :cond_a
    const/4 v3, -0x1

    .line 48
    :goto_6
    invoke-virtual {v15, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 51
    invoke-static {v6, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0600ff

    invoke-static {v3, v6}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    :cond_b
    new-instance v3, Lo/onSeekTargetStep$extraCallback;

    invoke-direct {v3, v0, v2}, Lo/onSeekTargetStep$extraCallback;-><init>(Lo/onSeekTargetStep;Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v1, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-object v1

    .line 8215
    :cond_c
    throw v3

    :cond_d
    move-object v3, v14

    .line 3215
    throw v3

    :cond_e
    move-object v3, v14

    .line 2215
    throw v3
.end method

.method public final extraCallback()I
    .locals 1

    .line 100
    iget-object v0, p0, Lo/onSeekTargetStep;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
