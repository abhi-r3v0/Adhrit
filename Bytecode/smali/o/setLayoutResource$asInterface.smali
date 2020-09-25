.class final Lo/setLayoutResource$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutResource;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/RatingBar;",
        "kotlin.jvm.PlatformType",
        "rating",
        "",
        "<anonymous parameter 2>",
        "",
        "onRatingChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/setLayoutResource;


# direct methods
.method constructor <init>(Lo/setLayoutResource;)V
    .locals 0

    iput-object p1, p0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "ratingBar"

    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-nez v4, :cond_0

    .line 146
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->ratingBar:I

    invoke-virtual {v1, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    return-void

    :cond_0
    float-to-double v4, v1

    .line 149
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    cmpg-double v8, v6, v4

    if-eqz v8, :cond_1

    .line 151
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->ratingBar:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    double-to-float v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    return-void

    :cond_1
    cmpg-float v4, v1, v2

    if-nez v4, :cond_3

    .line 156
    iget-object v4, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->ratingBar:I

    invoke-virtual {v4, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const v5, 0x7f0601d9

    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/AppCompatRatingBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v4, v1, v4

    if-nez v4, :cond_5

    .line 157
    iget-object v4, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->ratingBar:I

    invoke-virtual {v4, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    const v5, 0x7f0601da

    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/AppCompatRatingBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    :cond_5
    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v4, v1, v4

    if-nez v4, :cond_7

    .line 158
    iget-object v4, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->ratingBar:I

    invoke-virtual {v4, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    const v5, 0x7f0601db

    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/AppCompatRatingBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_7
    const/high16 v4, 0x40800000    # 4.0f

    cmpg-float v4, v1, v4

    if-nez v4, :cond_9

    .line 159
    iget-object v4, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->ratingBar:I

    invoke-virtual {v4, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    const v5, 0x7f0601dc

    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/AppCompatRatingBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_9
    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v4, v1, v4

    if-nez v4, :cond_b

    .line 160
    iget-object v4, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->ratingBar:I

    invoke-virtual {v4, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    const v5, 0x7f0601dd

    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/AppCompatRatingBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 163
    :cond_b
    :goto_0
    iget-object v3, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-static {v3}, Lo/setLayoutResource;->extraCallback(Lo/setLayoutResource;)Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;

    move-result-object v3

    .line 2021
    iget-object v3, v3, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onPostMessage:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_10

    .line 163
    check-cast v3, Ljava/lang/Iterable;

    .line 428
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/dreamplug/androidapp/ui/rating/RatingTags;

    .line 2035
    iget-object v8, v8, Lcom/dreamplug/androidapp/ui/rating/RatingTags;->onNavigationEvent:Ljava/lang/Integer;

    float-to-int v9, v1

    if-nez v8, :cond_d

    goto :goto_1

    .line 163
    :cond_d
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    goto :goto_2

    :cond_e
    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_c

    goto :goto_3

    :cond_f
    move-object v7, v5

    .line 429
    :goto_3
    check-cast v7, Lcom/dreamplug/androidapp/ui/rating/RatingTags;

    goto :goto_4

    :cond_10
    move-object v7, v5

    .line 164
    :goto_4
    iget-object v3, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->supportCta:I

    invoke-virtual {v3, v8}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string/jumbo v8, "supportCta"

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    if-eqz v7, :cond_11

    .line 2039
    iget-object v8, v7, Lcom/dreamplug/androidapp/ui/rating/RatingTags;->onPostMessage:Ljava/lang/Boolean;

    goto :goto_5

    :cond_11
    move-object v8, v5

    .line 164
    :goto_5
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v4

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    goto :goto_6

    :cond_12
    const/16 v8, 0x8

    .line 430
    :goto_6
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v3, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->ratingFeedback:I

    invoke-virtual {v3, v8}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/createFullSpanItemFromEnd;

    const-string v8, "ratingFeedback"

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    if-eqz v7, :cond_13

    .line 2043
    iget-object v8, v7, Lcom/dreamplug/androidapp/ui/rating/RatingTags;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v8, :cond_13

    .line 3000
    iget-object v5, v8, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 165
    :cond_13
    invoke-static {v3, v5}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    const-string v3, "ctaBlock"

    const-string v5, "ctaPlaceholder"

    const-string v8, "recyclerView"

    const-string v12, "imageContainer"

    const-string v13, "improvementText"

    const-string v14, "extraDetailsText"

    const/4 v2, 0x4

    const-string v10, "dummy"

    if-eqz v7, :cond_18

    .line 167
    new-instance v11, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v11}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 168
    iget-object v9, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v15, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout:I

    invoke-virtual {v9, v15}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lo/onChildrenLoaded;

    invoke-virtual {v11, v9}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 169
    iget-object v9, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v15, Lo/getSwitchMinWidth$onPostMessage;->ctaPlaceholder:I

    invoke-virtual {v9, v15}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Space;

    invoke-static {v9, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v5

    .line 3528
    invoke-virtual {v11, v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v5

    iput v6, v5, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 170
    iget-object v5, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->ctaBlock:I

    invoke-virtual {v5, v9}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/onChildrenLoaded;

    invoke-static {v5, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 171
    new-instance v3, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-direct {v3}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;-><init>()V

    float-to-int v1, v1

    const-string v5, "lifecycle"

    if-ge v1, v2, :cond_17

    .line 4041
    iget-object v1, v7, Lcom/dreamplug/androidapp/ui/rating/RatingTags;->extraCallback:Ljava/util/List;

    if-nez v1, :cond_14

    .line 4070
    sget-object v1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v1, Ljava/util/List;

    .line 173
    :cond_14
    check-cast v1, Ljava/lang/Iterable;

    .line 432
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dreamplug/androidapp/ui/rating/RatingTag;

    .line 5058
    iput-boolean v6, v9, Lcom/dreamplug/androidapp/ui/rating/RatingTag;->onNavigationEvent:Z

    goto :goto_7

    .line 176
    :cond_15
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-static {v1}, Lo/setLayoutResource;->onPostMessage(Lo/setLayoutResource;)Lo/setLayoutInflater;

    move-result-object v1

    .line 6041
    iget-object v7, v7, Lcom/dreamplug/androidapp/ui/rating/RatingTags;->extraCallback:Ljava/util/List;

    if-nez v7, :cond_16

    .line 6070
    sget-object v7, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v7, Ljava/util/List;

    :cond_16
    const-string/jumbo v9, "value"

    .line 176
    invoke-static {v7, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8000
    iget-object v1, v1, Lo/getPreventCornerOverlap;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 7029
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    .line 177
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v1, v7}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 8528
    invoke-virtual {v11, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v1

    iput v6, v1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 178
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->improvementText:I

    invoke-virtual {v1, v7}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 9528
    invoke-virtual {v11, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v1

    iput v6, v1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 179
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->extraDetailsText:I

    invoke-virtual {v1, v7}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 10528
    invoke-virtual {v11, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v1

    iput v6, v1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 180
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->dummy:I

    invoke-virtual {v1, v6}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v11, v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    .line 181
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->dummy:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v6, "Resources.getSystem()"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v6, 0x41200000    # 10.0f

    .line 11010
    invoke-static {v4, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x3

    .line 181
    invoke-virtual {v11, v1, v4, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 182
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->dummy:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->imageContainer:I

    invoke-virtual {v2, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/getNextSpan;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, 0x3

    invoke-virtual {v11, v1, v4, v2, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 183
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->extraDetailsText:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    iget-object v2, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0xc8

    new-instance v6, Lo/setLayoutResource$asInterface$2;

    invoke-direct {v6, v0}, Lo/setLayoutResource$asInterface$2;-><init>(Lo/setLayoutResource$asInterface;)V

    check-cast v6, Lo/getServerTime;

    invoke-static {v1, v2, v4, v5, v6}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 186
    new-instance v1, Lo/setLayoutResource$asInterface$3;

    invoke-direct {v1}, Lo/setLayoutResource$asInterface$3;-><init>()V

    check-cast v1, Lo/fromQueueItem$onMessageChannelReady;

    invoke-virtual {v3, v1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    move-result-object v1

    const-string/jumbo v2, "transition.addListener(o\u2026{}\n                    })"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 201
    :cond_17
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->extraDetailsText:I

    invoke-virtual {v1, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    iget-object v4, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v4

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x190

    new-instance v7, Lo/setLayoutResource$asInterface$5;

    invoke-direct {v7, v0}, Lo/setLayoutResource$asInterface$5;-><init>(Lo/setLayoutResource$asInterface;)V

    check-cast v7, Lo/getServerTime;

    invoke-static {v1, v4, v5, v6, v7}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 204
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->dummy:I

    invoke-virtual {v1, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v4, 0x3

    invoke-virtual {v11, v1, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    .line 205
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->dummy:I

    invoke-virtual {v1, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->imageContainer:I

    invoke-virtual {v4, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/getNextSpan;

    invoke-static {v4, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v11, v1, v2, v4, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 206
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 11528
    invoke-virtual {v11, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v1

    const/16 v2, 0x8

    iput v2, v1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 207
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->improvementText:I

    invoke-virtual {v1, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 12528
    invoke-virtual {v11, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v1

    iput v2, v1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 208
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->extraDetailsText:I

    invoke-virtual {v1, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 13528
    invoke-virtual {v11, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v1

    iput v2, v1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    :goto_8
    const-wide/16 v1, 0x12c

    .line 210
    invoke-virtual {v3, v1, v2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onMessageChannelReady(J)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 211
    new-instance v1, Lo/sendQueueTitle;

    invoke-direct {v1}, Lo/sendQueueTitle;-><init>()V

    .line 212
    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v4}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;

    .line 213
    check-cast v1, Lo/fromQueueItem;

    invoke-virtual {v3, v1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 214
    new-instance v1, Lo/sendMetadata;

    invoke-direct {v1}, Lo/sendMetadata;-><init>()V

    check-cast v1, Lo/fromQueueItem;

    invoke-virtual {v3, v1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 215
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    check-cast v3, Lo/fromQueueItem;

    invoke-static {v1, v3}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 216
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-virtual {v11, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    return-void

    .line 218
    :cond_18
    new-instance v1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-direct {v1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;-><init>()V

    const-wide/16 v6, 0x12c

    .line 219
    invoke-virtual {v1, v6, v7}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onMessageChannelReady(J)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 220
    new-instance v6, Lo/sendQueueTitle;

    invoke-direct {v6}, Lo/sendQueueTitle;-><init>()V

    .line 221
    new-instance v7, Landroid/view/animation/AnticipateOvershootInterpolator;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v9}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    check-cast v7, Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;

    .line 222
    check-cast v6, Lo/fromQueueItem;

    invoke-virtual {v1, v6}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 223
    new-instance v6, Lo/sendMetadata;

    invoke-direct {v6}, Lo/sendMetadata;-><init>()V

    check-cast v6, Lo/fromQueueItem;

    invoke-virtual {v1, v6}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 224
    new-instance v6, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v6}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 225
    iget-object v7, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout:I

    invoke-virtual {v7, v9}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lo/onChildrenLoaded;

    invoke-virtual {v6, v7}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 226
    iget-object v7, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->dummy:I

    invoke-virtual {v7, v9}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v9, 0x3

    invoke-virtual {v6, v7, v9}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    .line 227
    iget-object v7, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->dummy:I

    invoke-virtual {v7, v9}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    iget-object v9, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v10, Lo/getSwitchMinWidth$onPostMessage;->imageContainer:I

    invoke-virtual {v9, v10}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lo/getNextSpan;

    invoke-static {v9, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v6, v7, v2, v9, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 228
    iget-object v2, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->improvementText:I

    invoke-virtual {v2, v7}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 14528
    invoke-virtual {v6, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const/16 v7, 0x8

    iput v7, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 229
    iget-object v2, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v2, v9}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 15528
    invoke-virtual {v6, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v7, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 230
    iget-object v2, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->improvementText:I

    invoke-virtual {v2, v8}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 16528
    invoke-virtual {v6, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v7, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 231
    iget-object v2, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->extraDetailsText:I

    invoke-virtual {v2, v8}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v2, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 17528
    invoke-virtual {v6, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v7, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 232
    iget-object v2, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->ctaPlaceholder:I

    invoke-virtual {v2, v7}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Space;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 18528
    invoke-virtual {v6, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const/4 v4, 0x0

    iput v4, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 233
    iget-object v2, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->ctaBlock:I

    invoke-virtual {v2, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v2, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout:I

    invoke-virtual {v2, v3}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    check-cast v1, Lo/fromQueueItem;

    invoke-static {v2, v1}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 235
    iget-object v1, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->constraintLayout:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-virtual {v6, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    return-void
.end method
