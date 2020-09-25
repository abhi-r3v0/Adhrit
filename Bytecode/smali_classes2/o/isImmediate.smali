.class public final Lo/isImmediate;
.super Lo/getDataList;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getDataList;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/WinMachineCardJsonAdapter;

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private asBinder:F

.field private asInterface:I

.field private final extraCallback:Landroid/content/Context;

.field private newSession:I

.field private onMessageChannelReady:Landroid/util/DisplayMetrics;

.field private final onNavigationEvent:Landroid/view/WindowManager;

.field private final onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method public constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Landroid/content/Context;Lo/WinMachineCardJsonAdapter;)V
    .locals 1

    invoke-direct {p0, p1}, Lo/getDataList;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    const/4 v0, -0x1

    iput v0, p0, Lo/isImmediate;->onRelationshipValidationResult:I

    iput v0, p0, Lo/isImmediate;->onTransact:I

    iput v0, p0, Lo/isImmediate;->ICustomTabsCallback$Stub:I

    iput v0, p0, Lo/isImmediate;->newSession:I

    iput v0, p0, Lo/isImmediate;->ICustomTabsService:I

    iput v0, p0, Lo/isImmediate;->ICustomTabsCallback$Stub$Proxy:I

    iput-object p1, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/isImmediate;->extraCallback:Landroid/content/Context;

    iput-object p3, p0, Lo/isImmediate;->ICustomTabsCallback:Lo/WinMachineCardJsonAdapter;

    const-string p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lo/isImmediate;->onNavigationEvent:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(II)V
    .locals 3

    iget-object v0, p0, Lo/isImmediate;->extraCallback:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object v2, p0, Lo/isImmediate;->extraCallback:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    :cond_0
    iget-object v0, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v0, p0, Lo/isImmediate;->extraCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lo/isImmediate;->ICustomTabsService:I

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v0, p0, Lo/isImmediate;->extraCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lo/isImmediate;->ICustomTabsCallback$Stub$Proxy:I

    :cond_2
    sub-int v0, p2, v1

    iget v1, p0, Lo/isImmediate;->ICustomTabsService:I

    iget v2, p0, Lo/isImmediate;->ICustomTabsCallback$Stub$Proxy:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lo/getDataList;->ICustomTabsCallback(IIII)V

    iget-object v0, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/SizeFilter;->onPostMessage(II)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lo/isImmediate;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lo/isImmediate;->onNavigationEvent:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lo/isImmediate;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lo/isImmediate;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lo/isImmediate;->asBinder:F

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lo/isImmediate;->asInterface:I

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object p1, p0, Lo/isImmediate;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lo/isImmediate;->onRelationshipValidationResult:I

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object p1, p0, Lo/isImmediate;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lo/isImmediate;->onTransact:I

    iget-object p1, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {p1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/app/Activity;)[I

    move-result-object p1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v1, p0, Lo/isImmediate;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lo/isImmediate;->ICustomTabsCallback$Stub:I

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v1, p0, Lo/isImmediate;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p0, Lo/isImmediate;->onRelationshipValidationResult:I

    iput p1, p0, Lo/isImmediate;->ICustomTabsCallback$Stub:I

    iget p1, p0, Lo/isImmediate;->onTransact:I

    :goto_1
    iput p1, p0, Lo/isImmediate;->newSession:I

    iget-object p1, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lo/isImmediate;->onRelationshipValidationResult:I

    iput p1, p0, Lo/isImmediate;->ICustomTabsService:I

    iget p1, p0, Lo/isImmediate;->onTransact:I

    iput p1, p0, Lo/isImmediate;->ICustomTabsCallback$Stub$Proxy:I

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1, v0, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->measure(II)V

    :goto_2
    iget v2, p0, Lo/isImmediate;->onRelationshipValidationResult:I

    iget v3, p0, Lo/isImmediate;->onTransact:I

    iget v4, p0, Lo/isImmediate;->ICustomTabsCallback$Stub:I

    iget v5, p0, Lo/isImmediate;->newSession:I

    iget v6, p0, Lo/isImmediate;->asBinder:F

    iget v7, p0, Lo/isImmediate;->asInterface:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lo/getDataList;->onNavigationEvent(IIIIFI)V

    new-instance p1, Lo/BatcherDataBase_Impl;

    invoke-direct {p1}, Lo/BatcherDataBase_Impl;-><init>()V

    iget-object v1, p0, Lo/isImmediate;->ICustomTabsCallback:Lo/WinMachineCardJsonAdapter;

    invoke-virtual {v1}, Lo/WinMachineCardJsonAdapter;->extraCallback()Z

    move-result v1

    invoke-virtual {p1, v1}, Lo/BatcherDataBase_Impl;->onNavigationEvent(Z)Lo/BatcherDataBase_Impl;

    move-result-object p1

    iget-object v1, p0, Lo/isImmediate;->ICustomTabsCallback:Lo/WinMachineCardJsonAdapter;

    invoke-virtual {v1}, Lo/WinMachineCardJsonAdapter;->ICustomTabsCallback()Z

    move-result v1

    invoke-virtual {p1, v1}, Lo/BatcherDataBase_Impl;->extraCallback(Z)Lo/BatcherDataBase_Impl;

    move-result-object p1

    iget-object v1, p0, Lo/isImmediate;->ICustomTabsCallback:Lo/WinMachineCardJsonAdapter;

    invoke-virtual {v1}, Lo/WinMachineCardJsonAdapter;->onNavigationEvent()Z

    move-result v1

    invoke-virtual {p1, v1}, Lo/BatcherDataBase_Impl;->onPostMessage(Z)Lo/BatcherDataBase_Impl;

    move-result-object p1

    iget-object v1, p0, Lo/isImmediate;->ICustomTabsCallback:Lo/WinMachineCardJsonAdapter;

    invoke-virtual {v1}, Lo/WinMachineCardJsonAdapter;->onPostMessage()Z

    move-result v1

    invoke-virtual {p1, v1}, Lo/BatcherDataBase_Impl;->onMessageChannelReady(Z)Lo/BatcherDataBase_Impl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/BatcherDataBase_Impl;->ICustomTabsCallback(Z)Lo/BatcherDataBase_Impl;

    move-result-object p1

    new-instance v1, Lo/BatcherDataBase;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lo/BatcherDataBase;-><init>(Lo/BatcherDataBase_Impl;Lo/AuthRefreshJobWorker;)V

    iget-object p1, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {v1}, Lo/BatcherDataBase;->onPostMessage()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onDeviceFeaturesReceived"

    invoke-interface {p1, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    iget-object v2, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getLocationOnScreen([I)V

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v2, p0, Lo/isImmediate;->extraCallback:Landroid/content/Context;

    aget v0, v1, v0

    invoke-static {v2, v0}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v2, p0, Lo/isImmediate;->extraCallback:Landroid/content/Context;

    aget p2, v1, p2

    invoke-static {v2, p2}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lo/isImmediate;->onNavigationEvent(II)V

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lo/isImmediate;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object p1

    iget-object p1, p1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/getDataList;->extraCallback(Ljava/lang/String;)V

    return-void
.end method
