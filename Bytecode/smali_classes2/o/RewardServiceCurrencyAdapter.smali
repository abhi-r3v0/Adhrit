.class public final Lo/RewardServiceCurrencyAdapter;
.super Lo/getDataList;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

.field private final ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private final asBinder:Ljava/lang/Object;

.field private asInterface:I

.field private extraCallback:I

.field private extraCommand:Landroid/widget/PopupWindow;

.field private final getInterfaceDescriptor:Landroid/app/Activity;

.field private mayLaunchUrl:Lo/isCompressed;

.field private newSession:Landroid/widget/LinearLayout;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:I

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private requestPostMessageChannel:Landroid/widget/RelativeLayout;

.field private updateVisuals:Landroid/view/ViewGroup;

.field private warmup:Lo/SizeFilterJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback;->extraCallback([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/isCompressed;)V
    .locals 2

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lo/getDataList;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lo/RewardServiceCurrencyAdapter;->onNavigationEvent:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/RewardServiceCurrencyAdapter;->onMessageChannelReady:Z

    const/4 v0, 0x0

    iput v0, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    iput v0, p0, Lo/RewardServiceCurrencyAdapter;->onPostMessage:I

    const/4 v1, -0x1

    iput v1, p0, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    iput v0, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    iput v0, p0, Lo/RewardServiceCurrencyAdapter;->onRelationshipValidationResult:I

    iput v1, p0, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/RewardServiceCurrencyAdapter;->asBinder:Ljava/lang/Object;

    iput-object p1, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    iput-object p2, p0, Lo/RewardServiceCurrencyAdapter;->mayLaunchUrl:Lo/isCompressed;

    return-void
.end method

.method private final onNavigationEvent(II)V
    .locals 2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int/2addr p2, v0

    iget v0, p0, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    iget v1, p0, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lo/getDataList;->onNavigationEvent(IIII)V

    return-void
.end method

.method private final onNavigationEvent()[I
    .locals 12

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v1

    iget-object v2, p0, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/app/Activity;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    const/4 v6, 0x2

    const/16 v7, 0x32

    if-lt v5, v7, :cond_c

    if-le v5, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v8, p0, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    if-lt v8, v7, :cond_b

    if-le v8, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v8, v0, :cond_2

    if-ne v5, v3, :cond_2

    const-string v0, "Cannot resize to a full-screen ad."

    goto/16 :goto_6

    :cond_2
    iget-boolean v0, p0, Lo/RewardServiceCurrencyAdapter;->onMessageChannelReady:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lo/RewardServiceCurrencyAdapter;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "top-center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v8, "bottom-center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_2
    const-string v8, "bottom-right"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_3
    const-string v8, "bottom-left"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v8, "top-left"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_5
    const-string v8, "center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x2

    :cond_3
    :goto_0
    if-eqz v5, :cond_9

    if-eq v5, v4, :cond_8

    if-eq v5, v6, :cond_7

    if-eq v5, v11, :cond_6

    iget v0, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_4

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v5

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v7

    goto :goto_2

    :cond_4
    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v5

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v7

    goto :goto_1

    :cond_5
    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v5

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_1

    :cond_6
    iget v0, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v5

    :goto_1
    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->onPostMessage:I

    iget v8, p0, Lo/RewardServiceCurrencyAdapter;->onRelationshipValidationResult:I

    add-int/2addr v5, v8

    iget v8, p0, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v7

    goto :goto_3

    :cond_7
    iget v0, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v5

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->onPostMessage:I

    iget v8, p0, Lo/RewardServiceCurrencyAdapter;->onRelationshipValidationResult:I

    add-int/2addr v5, v8

    iget v8, p0, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    div-int/2addr v8, v6

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    goto :goto_3

    :cond_8
    iget v0, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v5

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_2

    :cond_9
    iget v0, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v5

    :goto_2
    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->onPostMessage:I

    iget v8, p0, Lo/RewardServiceCurrencyAdapter;->onRelationshipValidationResult:I

    add-int/2addr v5, v8

    :goto_3
    if-ltz v0, :cond_d

    add-int/2addr v0, v7

    if-gt v0, v3, :cond_d

    aget v0, v1, v2

    if-lt v5, v0, :cond_d

    add-int/2addr v5, v7

    aget v0, v1, v4

    if-le v5, v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    :goto_4
    const-string v0, "Height is too small or too large."

    goto :goto_6

    :cond_c
    :goto_5
    const-string v0, "Width is too small or too large."

    :goto_6
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_d
    :goto_7
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    iget-boolean v0, p0, Lo/RewardServiceCurrencyAdapter;->onMessageChannelReady:Z

    if-eqz v0, :cond_f

    new-array v0, v6, [I

    iget v1, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    iget v3, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    add-int/2addr v1, v3

    aput v1, v0, v2

    iget v1, p0, Lo/RewardServiceCurrencyAdapter;->onPostMessage:I

    iget v2, p0, Lo/RewardServiceCurrencyAdapter;->onRelationshipValidationResult:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    return-object v0

    :cond_f
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v1

    iget-object v3, p0, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/app/Activity;)[I

    move-result-object v1

    aget v0, v0, v2

    iget v3, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    add-int/2addr v3, v5

    iget v5, p0, Lo/RewardServiceCurrencyAdapter;->onPostMessage:I

    iget v7, p0, Lo/RewardServiceCurrencyAdapter;->onRelationshipValidationResult:I

    add-int/2addr v5, v7

    if-gez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_9

    :cond_10
    iget v7, p0, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    add-int v8, v3, v7

    if-le v8, v0, :cond_11

    sub-int v3, v0, v7

    :cond_11
    :goto_9
    aget v0, v1, v2

    if-ge v5, v0, :cond_12

    aget v5, v1, v2

    goto :goto_a

    :cond_12
    iget v0, p0, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    add-int v7, v5, v0

    aget v8, v1, v4

    if-le v7, v8, :cond_13

    aget v1, v1, v4

    sub-int v5, v1, v0

    :cond_13
    :goto_a
    new-array v0, v6, [I

    aput v3, v0, v2

    aput v5, v0, v4

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final extraCallback(IIZ)V
    .locals 6

    iget-object v0, p0, Lo/RewardServiceCurrencyAdapter;->asBinder:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    iput p2, p0, Lo/RewardServiceCurrencyAdapter;->onPostMessage:I

    iget-object p1, p0, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lo/RewardServiceCurrencyAdapter;->onNavigationEvent()[I

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p3, p0, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v1, v3}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v3, p0, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    aget v4, p1, p2

    invoke-static {v3, v4}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {p3, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    aget p3, p1, v2

    aget p1, p1, p2

    invoke-direct {p0, p3, p1}, Lo/RewardServiceCurrencyAdapter;->onNavigationEvent(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lo/RewardServiceCurrencyAdapter;->onPostMessage(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback()Z
    .locals 2

    iget-object v0, p0, Lo/RewardServiceCurrencyAdapter;->asBinder:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(II)V
    .locals 0

    iput p1, p0, Lo/RewardServiceCurrencyAdapter;->extraCallback:I

    iput p2, p0, Lo/RewardServiceCurrencyAdapter;->onPostMessage:I

    return-void
.end method

.method public final onPostMessage(Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lo/RewardServiceCurrencyAdapter;->asBinder:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    if-nez v3, :cond_0

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Webview is not yet available, size is not set."

    invoke-virtual {v1, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1
    iget-object v3, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v1, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2
    iget-object v3, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "Cannot resize an expanded banner."

    invoke-virtual {v1, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_3
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    :cond_4
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    :cond_5
    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub:I

    :cond_6
    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lo/RewardServiceCurrencyAdapter;->onRelationshipValidationResult:I

    :cond_7
    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lo/RewardServiceCurrencyAdapter;->onMessageChannelReady:Z

    :cond_8
    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iput-object v0, v1, Lo/RewardServiceCurrencyAdapter;->onNavigationEvent:Ljava/lang/String;

    :cond_9
    iget v0, v1, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_a

    iget v0, v1, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_b

    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-virtual {v1, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_b
    iget-object v0, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_c

    goto/16 :goto_8

    :cond_c
    invoke-direct/range {p0 .. p0}, Lo/RewardServiceCurrencyAdapter;->onNavigationEvent()[I

    move-result-object v5

    if-nez v5, :cond_d

    const-string v0, "Resize location out of screen or close button is not visible."

    invoke-virtual {v1, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_d
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v6, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    iget v7, v1, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    invoke-static {v6, v7}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v6

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v7, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    iget v8, v1, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    invoke-static {v7, v8}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v8}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_1a

    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1a

    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v10}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, v1, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    if-nez v9, :cond_e

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v1, Lo/RewardServiceCurrencyAdapter;->updateVisuals:Landroid/view/ViewGroup;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v8}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v8}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v8

    iput-object v8, v1, Lo/RewardServiceCurrencyAdapter;->warmup:Lo/SizeFilterJsonAdapter;

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->updateVisuals:Landroid/view/ViewGroup;

    iget-object v9, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_e
    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_1
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lo/RewardServiceCurrencyAdapter;->requestPostMessageChannel:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->requestPostMessageChannel:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->requestPostMessageChannel:Landroid/widget/RelativeLayout;

    invoke-static {v8, v6, v7, v4}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v8

    iput-object v8, v1, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    iget-boolean v9, v1, Lo/RewardServiceCurrencyAdapter;->onMessageChannelReady:Z

    if-nez v9, :cond_f

    const/4 v9, 0x1

    goto :goto_2

    :cond_f
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->requestPostMessageChannel:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v9}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lo/RewardServiceCurrencyAdapter;->newSession:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v9, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    const/16 v11, 0x32

    invoke-static {v9, v11}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v9

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v12, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    invoke-static {v12, v11}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v8, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v9, v1, Lo/RewardServiceCurrencyAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    sparse-switch v11, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v11, "top-center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v10, 0x1

    goto :goto_3

    :sswitch_1
    const-string v11, "bottom-center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v10, 0x4

    goto :goto_3

    :sswitch_2
    const-string v11, "bottom-right"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v10, 0x5

    goto :goto_3

    :sswitch_3
    const-string v11, "bottom-left"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v10, 0x3

    goto :goto_3

    :sswitch_4
    const-string v11, "top-left"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v10, 0x0

    goto :goto_3

    :sswitch_5
    const-string v11, "center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v10, 0x2

    :cond_10
    :goto_3
    const/16 v9, 0x9

    const/16 v11, 0xa

    if-eqz v10, :cond_16

    const/16 v4, 0xe

    if-eq v10, v3, :cond_15

    if-eq v10, v15, :cond_14

    const/16 v15, 0xc

    if-eq v10, v14, :cond_13

    if-eq v10, v13, :cond_12

    const/16 v4, 0xb

    if-eq v10, v12, :cond_11

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_4
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :cond_11
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    :cond_12
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    :cond_13
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_5
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :cond_14
    const/16 v4, 0xd

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :cond_15
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    :cond_16
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_5

    :goto_6
    iget-object v4, v1, Lo/RewardServiceCurrencyAdapter;->newSession:Landroid/widget/LinearLayout;

    new-instance v9, Lo/PointsServiceCurrencyAdapter;

    invoke-direct {v9, v1}, Lo/PointsServiceCurrencyAdapter;-><init>(Lo/RewardServiceCurrencyAdapter;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lo/RewardServiceCurrencyAdapter;->newSession:Landroid/widget/LinearLayout;

    const-string v9, "Close button"

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lo/RewardServiceCurrencyAdapter;->requestPostMessageChannel:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lo/RewardServiceCurrencyAdapter;->newSession:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v1, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    const/4 v9, 0x0

    aget v10, v5, v9

    invoke-static {v8, v10}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v8

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v9, v1, Lo/RewardServiceCurrencyAdapter;->getInterfaceDescriptor:Landroid/app/Activity;

    aget v10, v5, v3

    invoke-static {v9, v10}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    aget v0, v5, v10

    aget v4, v5, v3

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->mayLaunchUrl:Lo/isCompressed;

    if-eqz v8, :cond_17

    iget-object v8, v1, Lo/RewardServiceCurrencyAdapter;->mayLaunchUrl:Lo/isCompressed;

    iget v9, v1, Lo/RewardServiceCurrencyAdapter;->asInterface:I

    iget v10, v1, Lo/RewardServiceCurrencyAdapter;->onTransact:I

    invoke-interface {v8, v0, v4, v9, v10}, Lo/isCompressed;->onPostMessage(IIII)V

    :cond_17
    iget-object v0, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v6, v7}, Lo/SizeFilterJsonAdapter;->onNavigationEvent(II)Lo/SizeFilterJsonAdapter;

    move-result-object v4

    invoke-interface {v0, v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/SizeFilterJsonAdapter;)V

    const/4 v0, 0x0

    aget v0, v5, v0

    aget v3, v5, v3

    invoke-direct {v1, v0, v3}, Lo/RewardServiceCurrencyAdapter;->onNavigationEvent(II)V

    const-string v0, "resized"

    invoke-virtual {v1, v0}, Lo/getDataList;->onNavigationEvent(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Cannot show popup window: "

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v1, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    iget-object v0, v1, Lo/RewardServiceCurrencyAdapter;->requestPostMessageChannel:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lo/RewardServiceCurrencyAdapter;->updateVisuals:Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    iget-object v0, v1, Lo/RewardServiceCurrencyAdapter;->updateVisuals:Landroid/view/ViewGroup;

    iget-object v3, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lo/RewardServiceCurrencyAdapter;->updateVisuals:Landroid/view/ViewGroup;

    iget-object v3, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v3, v1, Lo/RewardServiceCurrencyAdapter;->warmup:Lo/SizeFilterJsonAdapter;

    invoke-interface {v0, v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/SizeFilterJsonAdapter;)V

    :cond_19
    monitor-exit v2

    return-void

    :cond_1a
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v1, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1b
    :goto_8
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v1, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPostMessage(Z)V
    .locals 3

    iget-object v0, p0, Lo/RewardServiceCurrencyAdapter;->asBinder:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->requestPostMessageChannel:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->updateVisuals:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->updateVisuals:Landroid/view/ViewGroup;

    iget-object v2, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->updateVisuals:Landroid/view/ViewGroup;

    iget-object v2, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lo/RewardServiceCurrencyAdapter;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v2, p0, Lo/RewardServiceCurrencyAdapter;->warmup:Lo/SizeFilterJsonAdapter;

    invoke-interface {v1, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/SizeFilterJsonAdapter;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lo/getDataList;->onNavigationEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lo/RewardServiceCurrencyAdapter;->mayLaunchUrl:Lo/isCompressed;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/RewardServiceCurrencyAdapter;->mayLaunchUrl:Lo/isCompressed;

    invoke-interface {p1}, Lo/isCompressed;->AudioAttributesImplBaseParcelizer()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lo/RewardServiceCurrencyAdapter;->extraCommand:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lo/RewardServiceCurrencyAdapter;->requestPostMessageChannel:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lo/RewardServiceCurrencyAdapter;->updateVisuals:Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/RewardServiceCurrencyAdapter;->newSession:Landroid/widget/LinearLayout;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
