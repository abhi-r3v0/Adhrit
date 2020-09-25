.class final Lo/getChildPosition$IPostMessageService$Stub;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postEvents;",
        "Lo/nextTransactionOrder<",
        "Lo/isFromUser;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrites;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private synthetic asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

.field private extraCallback:Ljava/lang/Object;

.field private onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:Lo/isFromUser;

.field private synthetic onPostMessage:Lo/getChildPosition;


# direct methods
.method constructor <init>(Lo/getChildPosition;Lo/findChildViewUnder$onRelationshipValidationResult;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    iput-object p2, p0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1054
    sget-object v2, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 375
    iget v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->ICustomTabsCallback:I

    const-string/jumbo v4, "response"

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string/jumbo v9, "successLottieView"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_a

    if-eq v3, v11, :cond_8

    if-eq v3, v8, :cond_6

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    .line 24126
    instance-of v2, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v2, :cond_0

    goto/16 :goto_10

    :cond_0
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 452
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23126
    :cond_2
    instance-of v2, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v2, :cond_3

    goto/16 :goto_10

    :cond_3
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 375
    :cond_4
    iget-object v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->extraCallback:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v8, v0, Lo/getChildPosition$IPostMessageService$Stub;->onMessageChannelReady:Ljava/lang/Object;

    check-cast v8, Lo/isFromUser;

    .line 21126
    instance-of v13, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v13, :cond_5

    goto/16 :goto_d

    :cond_5
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 375
    :cond_6
    iget-object v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->extraCallback:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v13, v0, Lo/getChildPosition$IPostMessageService$Stub;->onMessageChannelReady:Ljava/lang/Object;

    check-cast v13, Lo/isFromUser;

    .line 8126
    instance-of v14, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v14, :cond_7

    goto/16 :goto_4

    :cond_7
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 375
    :cond_8
    iget-object v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->onMessageChannelReady:Ljava/lang/Object;

    check-cast v3, Lo/isFromUser;

    .line 2126
    instance-of v13, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v13, :cond_9

    goto :goto_0

    :cond_9
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 1126
    :cond_a
    instance-of v3, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v3, :cond_27

    .line 375
    iget-object v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->onNavigationEvent:Lo/isFromUser;

    .line 378
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v13, Lo/getSwitchMinWidth$onPostMessage;->successLottieView:I

    invoke-virtual {v1, v13}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 379
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v13, Lo/getSwitchMinWidth$onPostMessage;->slotMachine:I

    invoke-virtual {v1, v13}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/findViewHolderForAdapterPosition;

    iput-object v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->onMessageChannelReady:Ljava/lang/Object;

    iput v11, v0, Lo/getChildPosition$IPostMessageService$Stub;->ICustomTabsCallback:I

    invoke-virtual {v1, v0}, Lo/findViewHolderForAdapterPosition;->onNavigationEvent(Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_b

    return-object v2

    .line 385
    :cond_b
    :goto_0
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    invoke-static {v1}, Lo/getChildPosition;->onMessageChannelReady(Lo/getChildPosition;)Lo/findViewHolderForItemId;

    move-result-object v1

    .line 3053
    iget-object v1, v1, Lo/findViewHolderForItemId;->asBinder:Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v13, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v13, :cond_c

    goto :goto_1

    :cond_c
    move-object v1, v12

    :goto_1
    if-nez v1, :cond_d

    .line 385
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_d
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;

    .line 4021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;

    .line 4038
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;->onPostMessage:Ljava/util/List;

    if-eqz v1, :cond_10

    .line 385
    check-cast v1, Ljava/lang/Iterable;

    .line 691
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;

    .line 4067
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;->onPostMessage:Ljava/lang/String;

    .line 384
    iget-object v15, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 5033
    iget-object v15, v15, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 5116
    iget-object v15, v15, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onTransact:Ljava/lang/String;

    .line 384
    invoke-static {v14, v15}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_2

    :cond_f
    move-object v13, v12

    .line 692
    :goto_2
    check-cast v13, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;

    if-eqz v13, :cond_10

    .line 6065
    iget-object v1, v13, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;->onNavigationEvent:Ljava/lang/String;

    goto :goto_3

    :cond_10
    move-object v1, v12

    .line 387
    :goto_3
    iget-object v13, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v14, Lo/getSwitchMinWidth$onPostMessage;->slotMachine:I

    invoke-virtual {v13, v14}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lo/findViewHolderForAdapterPosition;

    iget-object v14, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 7033
    iget-object v14, v14, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 7108
    iget-object v14, v14, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asInterface:Ljava/util/List;

    .line 387
    iget-object v15, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 8033
    iget-boolean v15, v15, Lo/findChildViewUnder$onRelationshipValidationResult;->extraCallback:Z

    .line 387
    iput-object v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->onMessageChannelReady:Ljava/lang/Object;

    iput-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->extraCallback:Ljava/lang/Object;

    iput v8, v0, Lo/getChildPosition$IPostMessageService$Stub;->ICustomTabsCallback:I

    invoke-virtual {v13, v14, v15, v0}, Lo/findViewHolderForAdapterPosition;->extraCallback(Ljava/util/List;ZLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_11

    return-object v2

    :cond_11
    move-object v13, v3

    move-object v3, v1

    .line 388
    :goto_4
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 9033
    iput-boolean v10, v1, Lo/findChildViewUnder$onRelationshipValidationResult;->extraCallback:Z

    .line 390
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    invoke-static {v1}, Lo/getChildPosition;->onMessageChannelReady(Lo/getChildPosition;)Lo/findViewHolderForItemId;

    move-result-object v1

    iget-object v14, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 10033
    iget-object v14, v14, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 390
    invoke-static {v14, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10231
    iget-object v15, v1, Lo/findViewHolderForItemId;->ICustomTabsService:Lo/MediaControllerCompatApi24$TransportControls;

    .line 10320
    iget-object v15, v15, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 10321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v15, v5, :cond_12

    goto :goto_5

    :cond_12
    move-object v15, v12

    .line 10231
    :goto_5
    check-cast v15, Ljava/lang/Long;

    if-eqz v15, :cond_18

    .line 11104
    iget-object v5, v14, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->extraCallback:Ljava/lang/String;

    if-nez v5, :cond_13

    goto :goto_6

    .line 10232
    :cond_13
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v11, 0x305b04

    if-eq v6, v11, :cond_15

    const v11, 0x5a72402

    if-eq v6, v11, :cond_14

    goto :goto_6

    :cond_14
    const-string v6, "coins"

    .line 10233
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 12102
    iget-object v5, v14, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;

    if-eqz v5, :cond_16

    .line 12135
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;->onMessageChannelReady:Ljava/lang/Double;

    goto :goto_7

    :cond_15
    const-string v6, "gems"

    .line 10234
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 13102
    iget-object v5, v14, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;

    if-eqz v5, :cond_16

    .line 13137
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;->extraCallback:Ljava/lang/Double;

    goto :goto_7

    :cond_16
    :goto_6
    move-object v5, v12

    .line 10238
    :goto_7
    iget-object v1, v1, Lo/findViewHolderForItemId;->ICustomTabsService:Lo/MediaControllerCompatApi24$TransportControls;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    double-to-int v5, v5

    goto :goto_8

    :cond_17
    const/4 v5, 0x0

    :goto_8
    int-to-long v5, v5

    add-long/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 10241
    sget-object v1, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v1}, Lo/onPanelClosed;->onNavigationEvent()Lo/setActive;

    .line 392
    :cond_18
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successImage:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    const-string/jumbo v5, "successImage"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 14033
    iget-object v6, v6, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 14098
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v6, :cond_19

    .line 15076
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;

    if-eqz v6, :cond_19

    .line 15096
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onPostMessage:Ljava/lang/String;

    move-object/from16 v17, v6

    goto :goto_9

    :cond_19
    move-object/from16 v17, v12

    :goto_9
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 392
    sget-object v20, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x36

    move-object/from16 v16, v1

    invoke-static/range {v16 .. v23}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 393
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->successImage:I

    invoke-virtual {v1, v6}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 16033
    iget-object v5, v5, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 16098
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v5, :cond_1a

    .line 17078
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v5, :cond_1a

    const/4 v6, 0x7

    .line 393
    invoke-static {v5, v12, v12, v12, v6}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_a

    :cond_1a
    move-object v5, v12

    :goto_a
    invoke-virtual {v1, v5}, Lo/setSpeed;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 394
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successHeader:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "successHeader"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 18033
    iget-object v5, v5, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 18100
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_1b

    .line 19000
    iget-object v5, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_b

    :cond_1b
    move-object v5, v12

    .line 394
    :goto_b
    invoke-static {v1, v5}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 395
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successSubHeader:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "successSubHeader"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iget-object v6, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 19033
    iget-object v6, v6, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 19118
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_1c

    .line 20000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_c

    :cond_1c
    move-object v6, v12

    .line 395
    :goto_c
    invoke-static {v1, v6}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 20033
    iget-object v1, v1, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 20118
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_1d

    .line 397
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->successSubHeader:I

    invoke-virtual {v1, v6}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-static {v1, v5}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;[I)V

    .line 400
    :cond_1d
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successOverlay:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    const-string/jumbo v5, "successOverlay"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 693
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 21034
    iget-boolean v1, v1, Lo/findChildViewUnder$onRelationshipValidationResult;->ICustomTabsCallback:Z

    if-eqz v1, :cond_25

    .line 404
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->successOverlay:I

    invoke-virtual {v1, v6}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lo/onChildrenLoaded;->setAlpha(F)V

    .line 405
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->successTextLayout:I

    invoke-virtual {v1, v6}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 406
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 407
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 408
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const-wide/16 v5, 0xfa

    .line 411
    iput-object v13, v0, Lo/getChildPosition$IPostMessageService$Stub;->onMessageChannelReady:Ljava/lang/Object;

    iput-object v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->extraCallback:Ljava/lang/Object;

    iput v7, v0, Lo/getChildPosition$IPostMessageService$Stub;->ICustomTabsCallback:I

    invoke-static {v5, v6, v0}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_1e

    return-object v2

    :cond_1e
    move-object v8, v13

    .line 414
    :goto_d
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successOverlay:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-virtual {v1}, Lo/onChildrenLoaded;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 415
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v13, 0x258

    .line 416
    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-string/jumbo v6, "successOverlay.animate()\u2026       .setDuration(600L)"

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v6, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 418
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->successTextLayout:I

    invoke-virtual {v1, v6}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 419
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 420
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 421
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x190

    .line 422
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    .line 423
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-string/jumbo v5, "successTextLayout.animat\u2026     .setStartDelay(200L)"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    const/high16 v6, 0x40200000    # 2.5f

    invoke-direct {v5, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 426
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 22033
    iget-object v1, v1, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 22121
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onRelationshipValidationResult:Ljava/lang/String;

    const-string v5, "lose"

    invoke-static {v1, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_24

    .line 427
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->slotMachine:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/findViewHolderForAdapterPosition;

    .line 22266
    iget-object v5, v1, Lo/findViewHolderForAdapterPosition;->onMessageChannelReady:Ljava/lang/Integer;

    if-eqz v5, :cond_1f

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v17

    .line 22267
    iget-object v1, v1, Lo/findViewHolderForAdapterPosition;->onNavigationEvent:Landroid/media/SoundPool;

    const v18, 0x3e4ccccd    # 0.2f

    const v19, 0x3e4ccccd    # 0.2f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v22}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 429
    :cond_1f
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successLottieView:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 695
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 431
    move-object v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_20

    goto :goto_e

    :cond_20
    const/4 v1, 0x0

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v1, 0x1

    :goto_f
    if-nez v1, :cond_22

    .line 432
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successLottieView:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 433
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successLottieView:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 434
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successLottieView:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v8, v0, Lo/getChildPosition$IPostMessageService$Stub;->onMessageChannelReady:Ljava/lang/Object;

    iput-object v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->extraCallback:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->ICustomTabsCallback:I

    invoke-static {v1, v0}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_23

    return-object v2

    .line 436
    :cond_22
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successLottieView:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    const v5, 0x7f120050

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 437
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successLottieView:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 438
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successLottieView:I

    invoke-virtual {v1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v8, v0, Lo/getChildPosition$IPostMessageService$Stub;->onMessageChannelReady:Ljava/lang/Object;

    iput-object v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->extraCallback:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v0, Lo/getChildPosition$IPostMessageService$Stub;->ICustomTabsCallback:I

    invoke-static {v1, v0}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_23

    return-object v2

    .line 441
    :cond_23
    :goto_10
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->successLottieView:I

    invoke-virtual {v1, v2}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 697
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_24
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 25034
    iput-boolean v10, v1, Lo/findChildViewUnder$onRelationshipValidationResult;->ICustomTabsCallback:Z

    .line 447
    :cond_25
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->spinButton:I

    invoke-virtual {v1, v2}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/wasReturnedFromScrap;

    const-string/jumbo v2, "spinButton"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 448
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->spinButtonProgressBar:I

    invoke-virtual {v1, v2}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const-string/jumbo v2, "spinButtonProgressBar"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 699
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    invoke-static {v1}, Lo/getChildPosition;->ICustomTabsCallback(Lo/getChildPosition;)Lo/evictionCount;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lo/evictionCount;->onPostMessage()V

    .line 451
    :cond_26
    iget-object v1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    invoke-static {v1}, Lo/getChildPosition;->onMessageChannelReady(Lo/getChildPosition;)Lo/findViewHolderForItemId;

    move-result-object v1

    iget-object v2, v0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    .line 26033
    iget-object v2, v2, Lo/findChildViewUnder$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 451
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26248
    invoke-static {v1}, Lo/extraCallback;->ICustomTabsCallback(Lo/setQueue;)Lo/isFromUser;

    move-result-object v3

    new-instance v4, Lo/findViewHolderForItemId$onRelationshipValidationResult;

    invoke-direct {v4, v1, v2, v12}, Lo/findViewHolderForItemId$onRelationshipValidationResult;-><init>(Lo/findViewHolderForItemId;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;Lo/setSessionPersistenceKey;)V

    check-cast v4, Lo/nextTransactionOrder;

    .line 27001
    invoke-static {v3, v12, v12, v4, v7}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    move-result-object v2

    .line 26248
    iput-object v2, v1, Lo/findViewHolderForItemId;->extraCallback:Lo/assertValidTrackedQuery;

    .line 452
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1

    .line 1126
    :cond_27
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    nop

    :array_0
    .array-data 4
        -0x257695
        -0x4ca4c5
    .end array-data
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/getChildPosition$IPostMessageService$Stub;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/getChildPosition$IPostMessageService$Stub;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/getChildPosition$IPostMessageService$Stub;

    iget-object v1, p0, Lo/getChildPosition$IPostMessageService$Stub;->onPostMessage:Lo/getChildPosition;

    iget-object v2, p0, Lo/getChildPosition$IPostMessageService$Stub;->asBinder:Lo/findChildViewUnder$onRelationshipValidationResult;

    invoke-direct {v0, v1, v2, p2}, Lo/getChildPosition$IPostMessageService$Stub;-><init>(Lo/getChildPosition;Lo/findChildViewUnder$onRelationshipValidationResult;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/getChildPosition$IPostMessageService$Stub;->onNavigationEvent:Lo/isFromUser;

    return-object v0
.end method
