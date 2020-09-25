.class final Lo/getDecoratedBottom$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDecoratedBottom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/toDebugString$ICustomTabsCallback;

.field final synthetic onMessageChannelReady:Lo/getDecoratedBottom;


# direct methods
.method constructor <init>(Lo/getDecoratedBottom;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    iput-object p2, p0, Lo/getDecoratedBottom$newSession;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 48
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    .line 1190
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object v2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Lo/updateDxDy$onMessageChannelReady;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lo/updateDxDy$onMessageChannelReady;->ICustomTabsCallback()V

    .line 1191
    :cond_0
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto/16 :goto_a

    .line 1192
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v5, "currency"

    const-string/jumbo v7, "reward_cred_value"

    const-string v8, "cred_balance"

    const/4 v9, 0x7

    const-string v12, "pairs"

    const-string v13, "navigation"

    const-string/jumbo v14, "source"

    const-string/jumbo v15, "reward_ID"

    const-string v16, "NA"

    const-string/jumbo v10, "skip"

    const-string/jumbo v4, "viewPager"

    const-string v6, "machineBackgroundLottie"

    const-string v11, "machineLottieView"

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_a

    :sswitch_0
    const-string v2, "redeeming"

    .line 1236
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-array v2, v9, [Lo/addWrite;

    .line 1238
    iget-object v6, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v6}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v6

    .line 16053
    iget-object v9, v6, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v9, :cond_2

    goto :goto_0

    .line 16056
    :cond_2
    iget-object v13, v6, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    .line 17043
    :goto_0
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v14, v13}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    .line 1239
    iget-object v6, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v6}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v6

    .line 17080
    iget-object v6, v6, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v6, :cond_3

    .line 18000
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/removeItemDecoration;

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 18043
    :goto_1
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v15, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    aput-object v9, v2, v6

    .line 1240
    sget-object v6, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v6}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 19043
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    aput-object v9, v2, v6

    .line 1241
    iget-object v6, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v6}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v6

    .line 19080
    iget-object v6, v6, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v6, :cond_4

    .line 20039
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v6, :cond_4

    .line 20082
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v6, :cond_4

    .line 20097
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onTransact:Ljava/lang/Double;

    if-eqz v6, :cond_4

    .line 1241
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    double-to-int v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object/from16 v6, v16

    .line 21043
    :goto_2
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v7, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x3

    aput-object v8, v2, v6

    .line 1243
    iget-object v6, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v6}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v6

    .line 21080
    iget-object v6, v6, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v6, :cond_5

    .line 22039
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v6, :cond_5

    .line 22082
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v6, :cond_5

    .line 22091
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    if-nez v6, :cond_6

    :cond_5
    move-object/from16 v6, v16

    .line 23043
    :cond_6
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v7, v2, v5

    .line 1245
    iget-object v5, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v5}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v5

    .line 23080
    iget-object v5, v5, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v5, :cond_7

    .line 24033
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    if-eqz v5, :cond_7

    .line 24156
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_7

    .line 25000
    iget-object v5, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 25043
    :goto_3
    new-instance v6, Lo/addWrite;

    const-string v7, "expires_in"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x5

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 1246
    iget-object v6, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v6}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v6

    .line 25078
    iget v6, v6, Lo/updateLayoutState;->ICustomTabsCallback$Stub$Proxy:I

    .line 1246
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 26043
    new-instance v7, Lo/addWrite;

    const-string v8, "mystery_rewards"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v5

    .line 1237
    invoke-static {v2, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26105
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x7

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v2, "reward_mystery_reward_dropped"

    .line 1237
    invoke-static {v2, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1249
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1250
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1251
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1252
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1253
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v5, 0x46

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 1254
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 1255
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1256
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v5, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v5}, Lo/getDecoratedBottom;->onMessageChannelReady(Lo/getDecoratedBottom;)Lo/getDecoratedBottom$onPostMessage;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1257
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1259
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v2, v3}, Lo/getDecoratedBottom;->onPostMessage(Lo/getDecoratedBottom;Z)V

    .line 1260
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {v2, v5}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setContentPadding;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1261
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->skip:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :sswitch_1
    const-string v2, "ideal"

    .line 1193
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1194
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    const/4 v9, 0x1

    invoke-static {v2, v9}, Lo/getDecoratedBottom;->onPostMessage(Lo/getDecoratedBottom;Z)V

    .line 1195
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setContentPadding;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1196
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1197
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1198
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1199
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1200
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 1201
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1202
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 v2, 0x7

    new-array v3, v2, [Lo/addWrite;

    .line 1205
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v2}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v2

    .line 2053
    iget-object v4, v2, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v4, :cond_8

    goto :goto_4

    .line 2056
    :cond_8
    iget-object v13, v2, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    .line 3043
    :goto_4
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v14, v13}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 1206
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v2}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v2

    .line 3080
    iget-object v2, v2, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v2, :cond_9

    .line 4000
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeItemDecoration;

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 4043
    :goto_5
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v15, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v4, v3, v2

    .line 1207
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v2}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 5043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v8, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v4, v3, v2

    .line 1208
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v2}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v2

    .line 5080
    iget-object v2, v2, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v2, :cond_a

    .line 6039
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v2, :cond_a

    .line 6082
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v2, :cond_a

    .line 6097
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onTransact:Ljava/lang/Double;

    if-eqz v2, :cond_a

    .line 1208
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    double-to-int v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object/from16 v2, v16

    .line 7043
    :goto_6
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v7, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v4, v3, v2

    .line 1210
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v2}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v2

    .line 7080
    iget-object v2, v2, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v2, :cond_b

    .line 8039
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v2, :cond_b

    .line 8082
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v2, :cond_b

    .line 8091
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_b
    move-object/from16 v2, v16

    .line 9043
    :cond_c
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v4, v3, v2

    .line 1212
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v2}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v2

    .line 9080
    iget-object v2, v2, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v2, :cond_d

    .line 10033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    if-eqz v2, :cond_d

    .line 10156
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_d

    .line 11000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    .line 11043
    :goto_7
    new-instance v4, Lo/addWrite;

    const-string v5, "expires_in"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    aput-object v4, v3, v2

    const/4 v2, 0x6

    .line 1213
    iget-object v4, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v4}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v4

    .line 11078
    iget v4, v4, Lo/updateLayoutState;->ICustomTabsCallback$Stub$Proxy:I

    .line 1213
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 12043
    new-instance v5, Lo/addWrite;

    const-string v6, "mystery_rewards"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v2

    .line 1204
    invoke-static {v3, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x7

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v3, "reward_mystery_reward_release"

    .line 1204
    invoke-static {v3, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1215
    sget-object v2, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 13000
    sget-object v2, Lo/onDestroyOptionsMenu;->onTransact:Lo/setTitleTextColor;

    sget-object v3, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1216
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->skip:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :sswitch_2
    const-string v2, "redeem_intent"

    .line 1219
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    new-array v3, v2, [Lo/addWrite;

    .line 1223
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v2}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v2

    .line 13080
    iget-object v2, v2, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v2, :cond_e

    .line 14000
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeItemDecoration;

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    .line 14043
    :goto_8
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v15, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v3, v2

    .line 1224
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v2}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v2

    .line 14053
    iget-object v4, v2, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v4, :cond_f

    goto :goto_9

    .line 14056
    :cond_f
    iget-object v13, v2, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    .line 15043
    :goto_9
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v14, v13}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 1222
    invoke-static {v3, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15105
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v3, "reward_mystery_reward_drag"

    .line 1222
    invoke-static {v3, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1225
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1226
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1227
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1228
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object v3, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v3, v4}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v4

    const-string v5, "lifecycle"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0xc8

    new-instance v7, Lo/getDecoratedBottom$newSession$5;

    invoke-direct {v7, v0}, Lo/getDecoratedBottom$newSession$5;-><init>(Lo/getDecoratedBottom$newSession;)V

    check-cast v7, Lo/getServerTime;

    invoke-static {v3, v4, v5, v6, v7}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    move-result-object v3

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    goto/16 :goto_a

    :sswitch_3
    const-string v2, "redeemed"

    .line 1278
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1279
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setContentPadding;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1282
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1283
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(Lo/getDecoratedBottom;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 1284
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 1285
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1286
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 1287
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1288
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->skip:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    new-instance v2, Lo/getDecoratedBottom$newSession$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/getDecoratedBottom$newSession$ICustomTabsCallback;-><init>(Lo/getDecoratedBottom$newSession;)V

    .line 1299
    iget-object v3, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v3, v4}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1300
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto/16 :goto_a

    :sswitch_4
    const-string v2, "failed"

    .line 1264
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1266
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1267
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1268
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1269
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1270
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1271
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1272
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {v2, v3}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setContentPadding;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1273
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    invoke-static {v2, v3}, Lo/getDecoratedBottom;->onPostMessage(Lo/getDecoratedBottom;Z)V

    .line 1275
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;I)V

    .line 1276
    iget-object v2, v0, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->skip:I

    invoke-virtual {v2, v4}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    :goto_a
    const-string/jumbo v2, "state"

    .line 1303
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo/getDecoratedBottom;->extraCallback()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c696bc3 -> :sswitch_4
        -0x2e8130c5 -> :sswitch_3
        -0x21804d61 -> :sswitch_2
        0x5f6a055 -> :sswitch_1
        0x5e5b28c6 -> :sswitch_0
    .end sparse-switch
.end method
