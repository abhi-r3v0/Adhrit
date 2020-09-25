.class public final Lo/dispatchAttachedToWindow$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAttachedToWindow;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "t",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "androidx/lifecycle/LiveDataKt$observe$wrappedObserver$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/dispatchAttachedToWindow;


# direct methods
.method public constructor <init>(Lo/dispatchAttachedToWindow;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 47
    move-object/from16 v1, p1

    check-cast v1, Lo/addWrite;

    .line 1027
    iget-object v1, v1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "digestPitView"

    const-string v3, "digestIconPlaceholder"

    const-string v4, "digestLabel"

    const-string v5, "digestIconThumbnail"

    const-string v6, "digestIcon"

    if-eqz v1, :cond_a

    .line 53
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->digestIcon:I

    invoke-virtual {v1, v7}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v9, v1, [Lo/addWrite;

    .line 56
    sget-object v10, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 2000
    sget-object v10, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v10}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/setActive;

    .line 2320
    iget-object v10, v10, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v11, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v10, v11, :cond_0

    goto :goto_0

    :cond_0
    move-object v10, v7

    .line 56
    :goto_0
    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v7

    .line 3043
    :goto_1
    new-instance v11, Lo/addWrite;

    const-string v12, "count"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v9, v8

    const/4 v10, 0x1

    .line 57
    iget-object v11, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v11}, Lo/dispatchAttachedToWindow;->onNavigationEvent(Lo/dispatchAttachedToWindow;)Lo/DiffUtil;

    invoke-static {}, Lo/DiffUtil;->ICustomTabsCallback()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 4043
    new-instance v12, Lo/addWrite;

    const-string/jumbo v13, "seen_count"

    invoke-direct {v12, v13, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v9, v10

    const-string v10, "pairs"

    .line 55
    invoke-static {v9, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v10, Ljava/util/Map;

    invoke-static {v10, v9}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "digest_icon_visible"

    .line 54
    invoke-static {v1, v10}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 61
    :cond_2
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->digestIconThumbnail:I

    invoke-virtual {v1, v9}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lo/setSpeed;->setVisibility(I)V

    .line 62
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->digestLabel:I

    invoke-virtual {v1, v9}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->digestIcon:I

    invoke-virtual {v1, v4}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 64
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->digestIconPlaceholder:I

    invoke-virtual {v1, v4}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getRemainingScrollVertical;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 65
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->digestPitView:I

    invoke-virtual {v1, v3}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v1}, Lo/dispatchAttachedToWindow;->onNavigationEvent(Lo/dispatchAttachedToWindow;)Lo/DiffUtil;

    invoke-static {}, Lo/DiffUtil;->asInterface()Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4104
    iget-object v9, v1, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 67
    iget-object v2, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->digestIconBg:I

    invoke-virtual {v2, v3}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    const-string v3, "digestIconBg"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v2

    check-cast v8, Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7e

    invoke-static/range {v8 .. v15}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 4105
    :cond_3
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 68
    iget-object v2, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->digestIconThumbnail:I

    invoke-virtual {v2, v3}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3e

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-static/range {v16 .. v23}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 70
    :cond_4
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v1}, Lo/dispatchAttachedToWindow;->onNavigationEvent(Lo/dispatchAttachedToWindow;)Lo/DiffUtil;

    invoke-static {}, Lo/DiffUtil;->ICustomTabsCallback$Stub()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->digestIcon:I

    invoke-virtual {v1, v2}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f120044

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_2

    .line 73
    :cond_5
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v1}, Lo/dispatchAttachedToWindow;->onNavigationEvent(Lo/dispatchAttachedToWindow;)Lo/DiffUtil;

    invoke-static {}, Lo/DiffUtil;->asBinder()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 74
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->digestIcon:I

    invoke-virtual {v1, v2}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f12000e

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_2

    .line 76
    :cond_6
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->digestIcon:I

    invoke-virtual {v1, v2}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f12000d

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 79
    :goto_2
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->digestIcon:I

    invoke-virtual {v1, v2}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 80
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v1}, Lo/dispatchAttachedToWindow;->onNavigationEvent(Lo/dispatchAttachedToWindow;)Lo/DiffUtil;

    move-result-object v2

    .line 4123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4124
    sget-object v4, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 5000
    sget-object v4, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setActive;

    .line 5320
    iget-object v4, v4, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v4, v5, :cond_7

    move-object v7, v4

    .line 4124
    :cond_7
    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_9

    .line 4125
    invoke-virtual {v2}, Lo/DiffUtil;->onTransact()I

    move-result v2

    const-string/jumbo v4, "stories"

    .line 4126
    invoke-static {v7, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v7

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-le v4, v2, :cond_9

    .line 4127
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 6024
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 6033
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v4, :cond_8

    const-string v5, "image_1"

    .line 4127
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getTargetScrollPosition;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4128
    :cond_8
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 7024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 7033
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    if-eqz v2, :cond_9

    const-string v4, "image_2"

    .line 4128
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4131
    :cond_9
    check-cast v3, Ljava/util/List;

    .line 80
    invoke-static {v1, v3}, Lo/dispatchAttachedToWindow;->onNavigationEvent(Lo/dispatchAttachedToWindow;Ljava/util/List;)V

    return-void

    .line 82
    :cond_a
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->digestIcon:I

    invoke-virtual {v1, v7}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 83
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->digestIcon:I

    invoke-virtual {v1, v7}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 84
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->digestIconThumbnail:I

    invoke-virtual {v1, v7}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lo/setSpeed;->setVisibility(I)V

    .line 85
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->digestLabel:I

    invoke-virtual {v1, v5}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->digestIconPlaceholder:I

    invoke-virtual {v1, v4}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getRemainingScrollVertical;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 87
    iget-object v1, v0, Lo/dispatchAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->digestPitView:I

    invoke-virtual {v1, v3}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
