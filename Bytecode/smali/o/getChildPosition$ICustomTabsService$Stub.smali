.class final Lo/getChildPosition$ICustomTabsService$Stub;
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
.field private ICustomTabsCallback:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub$Proxy:J

.field private synthetic ICustomTabsService:Lo/getChildPosition;

.field private asBinder:I

.field private asInterface:J

.field private extraCallback:Ljava/lang/Object;

.field private synthetic extraCommand:Lo/findChildViewUnder$onNavigationEvent;

.field private getInterfaceDescriptor:J

.field private newSession:I

.field private onMessageChannelReady:Lo/isFromUser;

.field private onNavigationEvent:Ljava/lang/Object;

.field private onPostMessage:Ljava/lang/Object;

.field private onRelationshipValidationResult:Ljava/lang/Object;

.field private onTransact:I

.field private warmup:J


# direct methods
.method constructor <init>(Lo/getChildPosition;Lo/findChildViewUnder$onNavigationEvent;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    iput-object p2, p0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCommand:Lo/findChildViewUnder$onNavigationEvent;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1054
    sget-object v2, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 454
    iget v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->newSession:I

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v11, 0x1

    if-eqz v3, :cond_a

    if-eq v3, v11, :cond_8

    if-eq v3, v14, :cond_6

    if-eq v3, v13, :cond_4

    if-eq v3, v9, :cond_2

    if-ne v3, v8, :cond_1

    .line 13126
    instance-of v2, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v2, :cond_0

    goto/16 :goto_e

    :cond_0
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 554
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_2
    iget-wide v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->warmup:J

    iget-object v5, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v5, Lo/toDebugString$extraCallback;

    iget-wide v6, v0, Lo/getChildPosition$ICustomTabsService$Stub;->getInterfaceDescriptor:J

    iget-wide v12, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback$Stub$Proxy:J

    iget-wide v8, v0, Lo/getChildPosition$ICustomTabsService$Stub;->asInterface:J

    iget v14, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onTransact:I

    iget-object v15, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    iget-object v10, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onNavigationEvent:Ljava/lang/Object;

    check-cast v11, Lo/isFromUser;

    move-wide/from16 v16, v3

    .line 12126
    instance-of v3, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v3, :cond_3

    move-wide/from16 v3, v16

    goto/16 :goto_d

    :cond_3
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 454
    :cond_4
    iget-object v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->asBinder:I

    iget-object v5, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onRelationshipValidationResult:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Iterable;

    iget-object v6, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v6, Lo/toDebugString$extraCallback;

    iget-wide v7, v0, Lo/getChildPosition$ICustomTabsService$Stub;->getInterfaceDescriptor:J

    iget-wide v10, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback$Stub$Proxy:J

    iget-wide v14, v0, Lo/getChildPosition$ICustomTabsService$Stub;->asInterface:J

    iget v9, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onTransact:I

    iget-object v12, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    move-object/from16 v20, v3

    iget-object v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onNavigationEvent:Ljava/lang/Object;

    check-cast v3, Lo/isFromUser;

    move-object/from16 v21, v3

    .line 11126
    instance-of v3, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v3, :cond_5

    move-object v1, v6

    move-wide v6, v7

    move-object/from16 v3, v20

    move-object/from16 v32, v12

    move v12, v4

    move-object/from16 v33, v13

    move-object v13, v5

    move-wide v4, v10

    move-object/from16 v10, v33

    move-object/from16 v11, v21

    move-wide/from16 v34, v14

    move v14, v9

    move-object/from16 v15, v32

    move-wide/from16 v8, v34

    goto/16 :goto_c

    :cond_5
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 454
    :cond_6
    iget-wide v6, v0, Lo/getChildPosition$ICustomTabsService$Stub;->asInterface:J

    iget v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onTransact:I

    iget-object v8, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onNavigationEvent:Ljava/lang/Object;

    check-cast v10, Lo/isFromUser;

    .line 10126
    instance-of v11, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v11, :cond_7

    const-wide/16 v4, 0xfa

    goto/16 :goto_a

    :cond_7
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 454
    :cond_8
    iget v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onTransact:I

    iget-object v8, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onNavigationEvent:Ljava/lang/Object;

    check-cast v10, Lo/isFromUser;

    .line 9126
    instance-of v11, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v11, :cond_9

    const-wide/16 v4, 0xfa

    goto/16 :goto_9

    :cond_9
    check-cast v1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v1, v1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v1

    .line 1126
    :cond_a
    instance-of v3, v1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v3, :cond_20

    .line 454
    iget-object v1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onMessageChannelReady:Lo/isFromUser;

    .line 467
    iget-object v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    invoke-static {v3}, Lo/getChildPosition;->onMessageChannelReady(Lo/getChildPosition;)Lo/findViewHolderForItemId;

    move-result-object v3

    .line 2053
    iget-object v3, v3, Lo/findViewHolderForItemId;->asBinder:Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object v3, v3, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v8, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v3, v8, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x0

    .line 467
    :goto_0
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;

    if-eqz v3, :cond_15

    .line 3019
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz v3, :cond_15

    .line 467
    check-cast v3, Ljava/lang/Iterable;

    .line 691
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .line 700
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 699
    check-cast v10, Ljava/lang/String;

    .line 463
    iget-object v11, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    invoke-static {v11}, Lo/getChildPosition;->onMessageChannelReady(Lo/getChildPosition;)Lo/findViewHolderForItemId;

    move-result-object v11

    .line 3053
    iget-object v11, v11, Lo/findViewHolderForItemId;->asBinder:Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object v11, v11, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v12, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v11, v12, :cond_c

    goto :goto_2

    :cond_c
    const/4 v11, 0x0

    .line 463
    :goto_2
    check-cast v11, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;

    if-eqz v11, :cond_11

    .line 4021
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;

    if-eqz v11, :cond_11

    .line 4036
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;->onNavigationEvent:Ljava/util/List;

    if-eqz v11, :cond_11

    .line 463
    check-cast v11, Ljava/lang/Iterable;

    .line 701
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;

    .line 4058
    iget-object v13, v13, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;->onPostMessage:Ljava/lang/String;

    .line 464
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    const-string v9, "Locale.getDefault()"

    invoke-static {v15, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "null cannot be cast to non-null type java.lang.String"

    if-eqz v13, :cond_f

    invoke-virtual {v13, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v13, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_e

    invoke-virtual {v10, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_4

    :cond_d
    const/4 v14, 0x2

    goto :goto_3

    :cond_e
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v14}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/4 v12, 0x0

    .line 702
    :goto_4
    check-cast v12, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;

    goto :goto_5

    :cond_11
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_12

    .line 699
    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_12
    const/4 v14, 0x2

    goto/16 :goto_1

    .line 704
    :cond_13
    check-cast v8, Ljava/util/List;

    .line 467
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_14

    const/4 v3, 0x1

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_15

    move-object v9, v8

    goto :goto_7

    :cond_15
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_1e

    .line 471
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 6021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "Resources.getSystem()"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v8, 0x41a00000    # 20.0f

    const/4 v10, 0x1

    .line 6022
    invoke-static {v10, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 476
    iget-object v8, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v10, Lo/getSwitchMinWidth$onPostMessage;->slotMachineJackpotImages:I

    invoke-virtual {v8, v10}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const-string/jumbo v10, "slotMachineJackpotImages"

    invoke-static {v8, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 475
    iget-object v12, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v13, Lo/getSwitchMinWidth$onPostMessage;->slotMachine:I

    invoke-virtual {v12, v13}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lo/findViewHolderForAdapterPosition;

    .line 7000
    iget-object v12, v12, Lo/findViewHolderForAdapterPosition;->onPostMessage:Lo/isSameListener;

    invoke-interface {v12}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    add-int/2addr v12, v6

    const/4 v13, -0x2

    .line 474
    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x11

    .line 477
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 478
    sget-object v12, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 476
    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    move-object v8, v9

    check-cast v8, Ljava/lang/Iterable;

    .line 705
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;

    .line 481
    iget-object v12, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v14, 0x7f0e0183

    iget-object v15, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->slotMachineJackpotImages:I

    invoke-virtual {v15, v4}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v12, v14, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "view"

    .line 482
    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget-object v12, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v14, Lo/getSwitchMinWidth$onPostMessage;->slotMachine:I

    invoke-virtual {v12, v14}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lo/findViewHolderForAdapterPosition;

    .line 8000
    iget-object v12, v12, Lo/findViewHolderForAdapterPosition;->onPostMessage:Lo/isSameListener;

    invoke-interface {v12}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 482
    invoke-direct {v5, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f0b02aa

    .line 483
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v12, "view.findViewById<Simple\u2026weeView>(R.id.draweeView)"

    invoke-static {v5, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v5

    check-cast v24, Lo/setSpeed;

    .line 8056
    iget-object v5, v11, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;->ICustomTabsCallback:Ljava/lang/String;

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 483
    sget-object v28, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x36

    move-object/from16 v25, v5

    invoke-static/range {v24 .. v31}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 486
    iget-object v5, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v11, Lo/getSwitchMinWidth$onPostMessage;->slotMachine:I

    invoke-virtual {v5, v11}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/findViewHolderForAdapterPosition;

    .line 9000
    iget-object v5, v5, Lo/findViewHolderForAdapterPosition;->onPostMessage:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-float v5, v5

    .line 486
    div-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    add-float/2addr v5, v11

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    const/4 v5, 0x0

    .line 487
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 488
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v5, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v11, Lo/getSwitchMinWidth$onPostMessage;->slotMachineJackpotImages:I

    invoke-virtual {v5, v11}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 493
    :cond_16
    iget-object v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {v4, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "text1"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 494
    iget-object v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {v4, v8}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v11, 0x1

    .line 9022
    invoke-static {v11, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 494
    invoke-virtual {v4, v7}, Lo/createFullSpanItemFromEnd;->setTranslationY(F)V

    .line 495
    iget-object v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {v4, v7}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v7, "text2"

    invoke-static {v4, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 496
    iget-object v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {v4, v8}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x0

    .line 707
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {v4, v8}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    .line 709
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->slotMachineJackpotImages:I

    invoke-virtual {v4, v7}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {v4, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    .line 711
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iput-object v1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onNavigationEvent:Ljava/lang/Object;

    iput-object v9, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback:Ljava/lang/Object;

    iput-object v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/Object;

    iput v6, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onTransact:I

    const/4 v4, 0x1

    iput v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->newSession:I

    const-wide/16 v4, 0xfa

    invoke-static {v4, v5, v0}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_17

    return-object v2

    :cond_17
    move-object v10, v1

    move-object v8, v3

    move v3, v6

    .line 508
    :goto_9
    iget-object v1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {v1, v6}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-virtual {v1}, Lo/createFullSpanItemFromEnd;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 509
    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v6, 0x0

    .line 510
    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 511
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v6, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v6, 0x96

    .line 512
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 513
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-string/jumbo v6, "text1.animate()\n        \u2026Delay(fadeInDuration / 2)"

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onNavigationEvent:Ljava/lang/Object;

    iput-object v9, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback:Ljava/lang/Object;

    iput-object v8, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/Object;

    iput v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onTransact:I

    const-wide/16 v6, 0x12c

    iput-wide v6, v0, Lo/getChildPosition$ICustomTabsService$Stub;->asInterface:J

    const/4 v11, 0x2

    iput v11, v0, Lo/getChildPosition$ICustomTabsService$Stub;->newSession:I

    .line 514
    invoke-static {v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/view/ViewPropertyAnimator;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_18

    return-object v2

    :cond_18
    :goto_a
    const-wide/16 v11, 0x64

    .line 518
    new-instance v1, Lo/toDebugString$extraCallback;

    invoke-direct {v1}, Lo/toDebugString$extraCallback;-><init>()V

    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lo/toDebugString$extraCallback;->extraCallback:J

    .line 520
    move-object v13, v8

    check-cast v13, Ljava/lang/Iterable;

    .line 714
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v15, v8

    move-object/from16 v32, v14

    move v14, v3

    move-object/from16 v3, v32

    move-object/from16 v33, v10

    move-object v10, v9

    move-wide v8, v6

    move-wide v6, v11

    const/4 v12, 0x0

    move-object/from16 v11, v33

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v2

    add-int/lit8 v2, v12, 0x1

    if-ltz v12, :cond_1b

    .line 11032
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v20, Landroid/view/View;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    move-object/from16 p1, v3

    .line 521
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move/from16 v20, v2

    const/4 v2, 0x0

    .line 522
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 523
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 524
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 525
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move-wide/from16 v22, v6

    .line 526
    iget-wide v6, v1, Lo/toDebugString$extraCallback;->extraCallback:J

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 528
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-ne v12, v3, :cond_19

    const-string v3, "it"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onNavigationEvent:Ljava/lang/Object;

    iput-object v10, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback:Ljava/lang/Object;

    iput-object v15, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/Object;

    iput v14, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onTransact:I

    iput-wide v8, v0, Lo/getChildPosition$ICustomTabsService$Stub;->asInterface:J

    iput-wide v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback$Stub$Proxy:J

    move-wide/from16 v6, v22

    iput-wide v6, v0, Lo/getChildPosition$ICustomTabsService$Stub;->getInterfaceDescriptor:J

    iput-object v1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object v13, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onRelationshipValidationResult:Ljava/lang/Object;

    move/from16 v12, v20

    iput v12, v0, Lo/getChildPosition$ICustomTabsService$Stub;->asBinder:I

    move-object/from16 v3, p1

    iput-object v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v0, Lo/getChildPosition$ICustomTabsService$Stub;->newSession:I

    invoke-static {v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/view/ViewPropertyAnimator;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, v21

    if-ne v2, v3, :cond_1a

    return-object v3

    :cond_19
    move/from16 v12, v20

    move-object/from16 v3, v21

    move-wide/from16 v6, v22

    :cond_1a
    move-object v2, v3

    move-object/from16 v3, p1

    .line 529
    :goto_c
    sget-object v20, Lo/addWrites;->onPostMessage:Lo/addWrites;

    move-object/from16 p1, v2

    move-object/from16 v21, v3

    .line 530
    iget-wide v2, v1, Lo/toDebugString$extraCallback;->extraCallback:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lo/toDebugString$extraCallback;->extraCallback:J

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    goto/16 :goto_b

    .line 10441
    :cond_1b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1c
    move-object v3, v2

    .line 534
    iget-object v2, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v12, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {v2, v12}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-virtual {v2}, Lo/createFullSpanItemFromEnd;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v12, 0x3f800000    # 1.0f

    .line 535
    invoke-virtual {v2, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 536
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v12, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v12, 0xc8

    .line 537
    invoke-virtual {v2, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-string/jumbo v12, "text2.animate()\n        \u2026etDuration(text2Duration)"

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onNavigationEvent:Ljava/lang/Object;

    iput-object v10, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback:Ljava/lang/Object;

    iput-object v15, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/Object;

    iput v14, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onTransact:I

    iput-wide v8, v0, Lo/getChildPosition$ICustomTabsService$Stub;->asInterface:J

    iput-wide v4, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback$Stub$Proxy:J

    iput-wide v6, v0, Lo/getChildPosition$ICustomTabsService$Stub;->getInterfaceDescriptor:J

    iput-object v1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/lang/Object;

    const-wide/16 v12, 0xc8

    iput-wide v12, v0, Lo/getChildPosition$ICustomTabsService$Stub;->warmup:J

    const/4 v12, 0x4

    iput v12, v0, Lo/getChildPosition$ICustomTabsService$Stub;->newSession:I

    .line 538
    invoke-static {v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/view/ViewPropertyAnimator;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1d

    return-object v3

    :cond_1d
    move-object v2, v3

    move-wide v12, v4

    const-wide/16 v3, 0xc8

    move-object v5, v1

    .line 542
    :goto_d
    iget-object v1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    move-object/from16 v16, v2

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->slotMachineInstructionOverlay:I

    invoke-virtual {v1, v2}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 543
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    move-wide/from16 v18, v3

    const-wide/16 v2, 0x190

    .line 544
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    .line 545
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-string/jumbo v2, "slotMachineInstructionOv\u2026StartDelay(pauseDuration)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onNavigationEvent:Ljava/lang/Object;

    iput-object v10, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback:Ljava/lang/Object;

    iput-object v15, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onPostMessage:Ljava/lang/Object;

    iput v14, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onTransact:I

    iput-wide v8, v0, Lo/getChildPosition$ICustomTabsService$Stub;->asInterface:J

    iput-wide v12, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback$Stub$Proxy:J

    iput-wide v6, v0, Lo/getChildPosition$ICustomTabsService$Stub;->getInterfaceDescriptor:J

    iput-object v5, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/lang/Object;

    move-wide/from16 v2, v18

    iput-wide v2, v0, Lo/getChildPosition$ICustomTabsService$Stub;->warmup:J

    const/4 v2, 0x5

    iput v2, v0, Lo/getChildPosition$ICustomTabsService$Stub;->newSession:I

    .line 546
    invoke-static {v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/view/ViewPropertyAnimator;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v16

    if-ne v1, v2, :cond_1f

    return-object v2

    :cond_1e
    :goto_e
    move-object/from16 v0, p0

    .line 550
    :cond_1f
    iget-object v1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCommand:Lo/findChildViewUnder$onNavigationEvent;

    const/4 v2, 0x0

    .line 14021
    iput-boolean v2, v1, Lo/findChildViewUnder$onNavigationEvent;->onPostMessage:Z

    .line 551
    iget-object v1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->slotMachineInstructionOverlay:I

    invoke-virtual {v1, v2}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string/jumbo v2, "slotMachineInstructionOverlay"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 716
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->spinButton:I

    invoke-virtual {v1, v2}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/wasReturnedFromScrap;

    const-string/jumbo v2, "spinButton"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 553
    iget-object v0, v0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->spinButtonProgressBar:I

    invoke-virtual {v0, v1}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string/jumbo v1, "spinButtonProgressBar"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 718
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 554
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0

    .line 1126
    :cond_20
    move-object v0, v1

    check-cast v0, Lo/emptyWrite$ICustomTabsCallback;

    iget-object v0, v0, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw v0
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/getChildPosition$ICustomTabsService$Stub;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/getChildPosition$ICustomTabsService$Stub;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lo/getChildPosition$ICustomTabsService$Stub;

    iget-object v1, p0, Lo/getChildPosition$ICustomTabsService$Stub;->ICustomTabsService:Lo/getChildPosition;

    iget-object v2, p0, Lo/getChildPosition$ICustomTabsService$Stub;->extraCommand:Lo/findChildViewUnder$onNavigationEvent;

    invoke-direct {v0, v1, v2, p2}, Lo/getChildPosition$ICustomTabsService$Stub;-><init>(Lo/getChildPosition;Lo/findChildViewUnder$onNavigationEvent;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/getChildPosition$ICustomTabsService$Stub;->onMessageChannelReady:Lo/isFromUser;

    return-object v0
.end method
