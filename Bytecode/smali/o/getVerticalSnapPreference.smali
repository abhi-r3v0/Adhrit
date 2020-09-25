.class public final Lo/getVerticalSnapPreference;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \t*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \t*\u0004\u0018\u00010\u00150\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/adapter/WishlistedRewardViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "view",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "backgroundCard",
        "Landroidx/cardview/widget/CardView;",
        "kotlin.jvm.PlatformType",
        "backgroundImage",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "imageOverlay",
        "Landroid/view/View;",
        "logo",
        "merchant",
        "Landroid/widget/TextView;",
        "title",
        "tvExpired",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final ICustomTabsCallback$Stub:Landroid/view/View;

.field private final asInterface:Lo/createFullSpanItemFromEnd;

.field private final extraCallback:Lo/setSpeed;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Lo/setSpeed;

.field final onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 19010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/getVerticalSnapPreference;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getVerticalSnapPreference;->extraCallback:Lo/setSpeed;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getVerticalSnapPreference;->onNavigationEvent:Lo/setSpeed;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchant:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/getVerticalSnapPreference;->onMessageChannelReady:Landroid/widget/TextView;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/getVerticalSnapPreference;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->imageOverlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/getVerticalSnapPreference;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->tv_expired:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getVerticalSnapPreference;->asInterface:Lo/createFullSpanItemFromEnd;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->backgroundCard:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;

    if-eqz v2, :cond_12

    .line 33
    move-object v2, v1

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;

    .line 1027
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->ICustomTabsCallback:Ljava/lang/String;

    .line 34
    iget-object v3, v0, Lo/getVerticalSnapPreference;->extraCallback:Lo/setSpeed;

    const-string v11, "logo"

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 35
    iget-object v3, v0, Lo/getVerticalSnapPreference;->extraCallback:Lo/setSpeed;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v3, v3, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v3, v3, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    check-cast v3, Lo/setMaxFrame;

    .line 35
    check-cast v3, Lo/getComposition;

    const-string v5, "logo.hierarchy"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->ICustomTabsCallback()Lo/setFailureListener$extraCallback;

    move-result-object v5

    if-eqz v5, :cond_10

    const/4 v6, 0x2

    .line 3369
    invoke-virtual {v3, v6}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v3

    .line 3370
    instance-of v7, v3, Lo/fromAssets;

    if-eqz v7, :cond_0

    .line 3371
    check-cast v3, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_0
    sget-object v7, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v3, v7}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v3

    .line 4094
    :goto_0
    iget-object v7, v3, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v7, v5, :cond_2

    if-eqz v7, :cond_1

    .line 5053
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-nez v7, :cond_3

    .line 4098
    iput-object v5, v3, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object v4, v3, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {v3}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6025
    :cond_3
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/BackGround;

    if-eqz v3, :cond_4

    .line 6055
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/BackGround;->extraCallback:Ljava/lang/String;

    move-object v11, v3

    goto :goto_3

    :cond_4
    move-object v11, v4

    .line 39
    :goto_3
    iget-object v10, v0, Lo/getVerticalSnapPreference;->onNavigationEvent:Lo/setSpeed;

    const-string v3, "backgroundImage"

    invoke-static {v10, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x36

    invoke-static/range {v10 .. v17}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 40
    iget-object v5, v0, Lo/getVerticalSnapPreference;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6116
    iget-object v5, v5, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 6216
    iget-object v5, v5, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v5, :cond_f

    check-cast v5, Lo/setMaxFrame;

    .line 40
    check-cast v5, Lo/getComposition;

    .line 8025
    iget-object v7, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/BackGround;

    if-eqz v7, :cond_5

    .line 8058
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/BackGround;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_4

    :cond_5
    move-object v7, v4

    :goto_4
    const/4 v10, 0x7

    .line 40
    invoke-static {v7, v4, v4, v4, v10}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 8564
    invoke-virtual {v5, v9, v7}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v5, v0, Lo/getVerticalSnapPreference;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9116
    iget-object v3, v5, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 9216
    iget-object v3, v3, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v3, :cond_e

    check-cast v3, Lo/setMaxFrame;

    .line 41
    check-cast v3, Lo/getComposition;

    const-string v5, "backgroundImage.hierarchy"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->ICustomTabsCallback()Lo/setFailureListener$extraCallback;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 11369
    invoke-virtual {v3, v6}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v3

    .line 11370
    instance-of v6, v3, Lo/fromAssets;

    if-eqz v6, :cond_6

    .line 11371
    check-cast v3, Lo/fromAssets;

    goto :goto_5

    .line 11373
    :cond_6
    sget-object v6, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v3, v6}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v3

    .line 12094
    :goto_5
    iget-object v6, v3, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v6, v5, :cond_8

    if-eqz v6, :cond_7

    .line 13053
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v6, 0x1

    :goto_7
    if-nez v6, :cond_9

    .line 12098
    iput-object v5, v3, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 12099
    iput-object v4, v3, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 12100
    invoke-virtual {v3}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 12101
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 43
    :cond_9
    iget-object v3, v0, Lo/getVerticalSnapPreference;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v5, "merchant"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14029
    iget-object v5, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->onRelationshipValidationResult:Ljava/lang/String;

    .line 43
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v3, v0, Lo/getVerticalSnapPreference;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string/jumbo v5, "title"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14031
    iget-object v5, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->asBinder:Ljava/lang/String;

    .line 44
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14038
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/State;

    if-eqz v3, :cond_a

    .line 14051
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/State;->extraCallback:Ljava/lang/String;

    :cond_a
    const-string v3, "active"

    .line 46
    invoke-static {v4, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v8

    const-string v4, "imageOverlay"

    const-string/jumbo v5, "tvExpired"

    if-eqz v3, :cond_c

    .line 47
    iget-object v3, v0, Lo/getVerticalSnapPreference;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$visible"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15009
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v3, v0, Lo/getVerticalSnapPreference;->asInterface:Lo/createFullSpanItemFromEnd;

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16009
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v3, v0, Lo/getVerticalSnapPreference;->asInterface:Lo/createFullSpanItemFromEnd;

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16038
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/State;

    if-eqz v2, :cond_b

    .line 16047
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/State;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_b

    goto :goto_8

    .line 49
    :cond_b
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f1302bd

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 51
    :cond_c
    iget-object v2, v0, Lo/getVerticalSnapPreference;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$gone"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 17017
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v2, v0, Lo/getVerticalSnapPreference;->asInterface:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18017
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :goto_9
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lo/getVerticalSnapPreference$onPostMessage;

    invoke-direct {v3, v0, v1}, Lo/getVerticalSnapPreference$onPostMessage;-><init>(Lo/getVerticalSnapPreference;Lo/StaggeredGridLayoutManager;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    .line 11215
    :cond_d
    throw v4

    .line 10215
    :cond_e
    throw v4

    .line 7215
    :cond_f
    throw v4

    .line 3215
    :cond_10
    throw v4

    .line 2215
    :cond_11
    throw v4

    :cond_12
    :goto_a
    return-void
.end method
