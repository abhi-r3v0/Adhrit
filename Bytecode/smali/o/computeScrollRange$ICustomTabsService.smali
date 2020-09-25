.class final Lo/computeScrollRange$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollRange;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Lo/toDebugString$ICustomTabsCallback;

.field final synthetic extraCallback:Lo/computeScrollRange;


# direct methods
.method constructor <init>(Lo/computeScrollRange;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    iput-object p2, p0, Lo/computeScrollRange$ICustomTabsService;->ICustomTabsCallback:Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 65
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    .line 1278
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->ICustomTabsCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object v2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Lo/updateDxDy$onMessageChannelReady;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lo/updateDxDy$onMessageChannelReady;->ICustomTabsCallback()V

    .line 1279
    :cond_0
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->ICustomTabsCallback:Lo/toDebugString$ICustomTabsCallback;

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto/16 :goto_9

    .line 1280
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v4, "expires_in"

    const-string v6, "currency"

    const-string/jumbo v8, "reward_cred_value"

    const-string v10, "cred_balance"

    const-string v12, "navigation"

    const-string/jumbo v13, "source"

    const/4 v14, 0x7

    const-string v3, "pairs"

    const-string/jumbo v15, "reward_ID"

    const-string v16, "NA"

    const-string/jumbo v5, "viewPager"

    const-string v7, "machineBackgroundLottie"

    const-string v11, "machineLottieView"

    const/4 v9, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v2, "redeeming"

    .line 1319
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-array v2, v14, [Lo/addWrite;

    .line 1321
    iget-object v7, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v7}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v7

    .line 15053
    iget-object v14, v7, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v14, :cond_2

    goto :goto_0

    .line 15056
    :cond_2
    iget-object v12, v7, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    .line 16043
    :goto_0
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v13, v12}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x0

    aput-object v7, v2, v12

    .line 1322
    iget-object v7, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v7}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v7

    .line 16080
    iget-object v7, v7, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v7, :cond_3

    .line 17000
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/removeItemDecoration;

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 17043
    :goto_1
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v15, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v9

    .line 1323
    sget-object v7, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v7}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 18043
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v10, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x2

    aput-object v12, v2, v7

    .line 1324
    iget-object v7, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v7}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v7

    .line 18080
    iget-object v7, v7, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v7, :cond_4

    .line 19039
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v7, :cond_4

    .line 19082
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v7, :cond_4

    .line 19097
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onTransact:Ljava/lang/Double;

    if-eqz v7, :cond_4

    .line 1324
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    double-to-int v7, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object/from16 v7, v16

    .line 20043
    :goto_2
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v8, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x3

    aput-object v10, v2, v7

    .line 1326
    iget-object v7, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v7}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v7

    .line 20080
    iget-object v7, v7, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v7, :cond_5

    .line 21039
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v7, :cond_5

    .line 21082
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v7, :cond_5

    .line 21091
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    if-nez v7, :cond_6

    :cond_5
    move-object/from16 v7, v16

    .line 22043
    :cond_6
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v8, v2, v6

    .line 1328
    iget-object v6, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v6}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v6

    .line 22080
    iget-object v6, v6, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v6, :cond_7

    .line 23033
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    if-eqz v6, :cond_7

    .line 23156
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_7

    .line 24000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 24043
    :goto_3
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v4, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x5

    aput-object v7, v2, v4

    const/4 v4, 0x6

    .line 1329
    iget-object v6, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v6}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v6

    .line 24078
    iget v6, v6, Lo/updateLayoutState;->ICustomTabsCallback$Stub$Proxy:I

    .line 1329
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 25043
    new-instance v7, Lo/addWrite;

    const-string v8, "mystery_rewards"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v4

    .line 1320
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25088
    new-instance v3, Ljava/util/LinkedHashMap;

    const/4 v4, 0x7

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v2, "reward_mystery_reward_dropped"

    .line 1320
    invoke-static {v2, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1332
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1333
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1334
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1335
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1336
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v3, 0x46

    invoke-virtual {v2, v9, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 1337
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 1338
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1339
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v3}, Lo/computeScrollRange;->onPostMessage(Lo/computeScrollRange;)Lo/computeScrollRange$ICustomTabsCallback;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1340
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1342
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lo/computeScrollRange;->ICustomTabsCallback(Lo/computeScrollRange;Z)V

    .line 1343
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {v2, v4}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setContentPadding;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_9

    :sswitch_1
    const-string v2, "ideal"

    .line 1281
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1282
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v2, v9}, Lo/computeScrollRange;->ICustomTabsCallback(Lo/computeScrollRange;Z)V

    .line 1283
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v14, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {v2, v14}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setContentPadding;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1284
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1285
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1286
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1287
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v5}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1288
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v5}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 1289
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v5}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1290
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v5}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 v2, 0x7

    new-array v5, v2, [Lo/addWrite;

    .line 1293
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v2}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v2

    .line 2053
    iget-object v7, v2, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v7, :cond_8

    goto :goto_4

    .line 2056
    :cond_8
    iget-object v12, v2, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    .line 3043
    :goto_4
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v13, v12}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    aput-object v2, v5, v7

    .line 1294
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v2}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

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
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v15, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v9

    .line 1295
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v2}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 5043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v10, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v7, v5, v2

    .line 1296
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v2}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

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

    .line 1296
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    double-to-int v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object/from16 v2, v16

    .line 7043
    :goto_6
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v8, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v7, v5, v2

    .line 1298
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v2}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

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
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v7, v5, v2

    .line 1300
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v2}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

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
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    aput-object v6, v5, v2

    const/4 v2, 0x6

    .line 1301
    iget-object v4, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v4}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v4

    .line 11078
    iget v4, v4, Lo/updateLayoutState;->ICustomTabsCallback$Stub$Proxy:I

    .line 1301
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 12043
    new-instance v6, Lo/addWrite;

    const-string v7, "mystery_rewards"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v2

    .line 1292
    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12088
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x7

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v3, "reward_mystery_reward_release"

    .line 1292
    invoke-static {v3, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_9

    :sswitch_2
    const-string v2, "redeem_intent"

    .line 1304
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-array v2, v9, [Lo/addWrite;

    .line 1307
    iget-object v4, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v4}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v4

    .line 13080
    iget-object v4, v4, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v4, :cond_e

    .line 14000
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/removeItemDecoration;

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    .line 14043
    :goto_8
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v15, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v5, v2, v4

    .line 1307
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v2, "reward_mystery_reward_drag"

    .line 1307
    invoke-static {v2, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1308
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1309
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1310
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1311
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->ICustomTabsCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object v3, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v3, v4}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v4

    const-string v5, "lifecycle"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0xc8

    new-instance v7, Lo/computeScrollRange$ICustomTabsService$1;

    invoke-direct {v7, v0}, Lo/computeScrollRange$ICustomTabsService$1;-><init>(Lo/computeScrollRange$ICustomTabsService;)V

    check-cast v7, Lo/getServerTime;

    invoke-static {v3, v4, v5, v6, v7}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    move-result-object v3

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    goto/16 :goto_9

    :sswitch_3
    const-string v2, "redeemed"

    .line 1359
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1360
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setContentPadding;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1363
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1364
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v3}, Lo/computeScrollRange;->extraCallback(Lo/computeScrollRange;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 1365
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 1366
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1367
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v3, 0x81

    invoke-virtual {v2, v9, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 1368
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1370
    new-instance v2, Lo/computeScrollRange$ICustomTabsService$onPostMessage;

    invoke-direct {v2, v0}, Lo/computeScrollRange$ICustomTabsService$onPostMessage;-><init>(Lo/computeScrollRange$ICustomTabsService;)V

    .line 1377
    iget-object v3, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v3, v4}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1378
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto/16 :goto_9

    :sswitch_4
    const-string v2, "failed"

    .line 1346
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1348
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 1349
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1350
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1351
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1352
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1353
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1354
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setContentPadding;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1355
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    invoke-static {v2, v9}, Lo/computeScrollRange;->ICustomTabsCallback(Lo/computeScrollRange;Z)V

    .line 1357
    iget-object v2, v0, Lo/computeScrollRange$ICustomTabsService;->extraCallback:Lo/computeScrollRange;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(Lo/computeScrollRange;I)V

    :cond_f
    :goto_9
    const-string/jumbo v2, "state"

    .line 1381
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo/computeScrollRange;->extraCallback()V

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
