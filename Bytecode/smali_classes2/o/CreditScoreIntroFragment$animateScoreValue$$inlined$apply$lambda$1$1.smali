.class public final Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;
.super Lo/RedemptionViewJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

.field private ICustomTabsCallback$Stub:Lo/getSignInMethods;

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private final ICustomTabsService:Lo/BankAccountData;

.field private asBinder:Lo/setCurrentItem$default;

.field private asInterface:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

.field private getInterfaceDescriptor:Lo/TemplatePropertiesMachineJsonAdapter;

.field private final newSession:Landroid/content/Context;

.field private onMessageChannelReady:Lo/PendingUsers;

.field private onNavigationEvent:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Lo/Actionable;

.field private onRelationshipValidationResult:Lo/activateCredProtect;

.field private onTransact:Lo/StatementResponse$StatementDetails$CardLimits;

.field private final updateVisuals:Lo/StatementPeriod;

.field private final warmup:Lo/DataListJsonAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V
    .locals 0

    invoke-direct {p0}, Lo/RedemptionViewJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->newSession:Landroid/content/Context;

    iput-object p2, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object p3, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->ICustomTabsService:Lo/BankAccountData;

    iput-object p4, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->warmup:Lo/DataListJsonAdapter;

    new-instance p1, Lo/fromMediaItemList;

    invoke-direct {p1}, Lo/fromMediaItemList;-><init>()V

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->asInterface:Lo/fromMediaItemList;

    new-instance p1, Lo/fromMediaItemList;

    invoke-direct {p1}, Lo/fromMediaItemList;-><init>()V

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onNavigationEvent:Lo/fromMediaItemList;

    iput-object p5, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->updateVisuals:Lo/StatementPeriod;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getSignInMethods;Lo/setCurrentItem$default;)V
    .locals 0

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub:Lo/getSignInMethods;

    iput-object p2, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->asBinder:Lo/setCurrentItem$default;

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->asInterface:Lo/fromMediaItemList;

    invoke-virtual {v0, p1, p2}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {p2, p1, p3}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(Lo/Actionable;)V
    .locals 0

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onPostMessage:Lo/Actionable;

    return-void
.end method

.method public final extraCallback(Lo/PendingUsers;)V
    .locals 0

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/PendingUsers;

    return-void
.end method

.method public final onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    return-void
.end method

.method public final onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    return-void
.end method

.method public final onMessageChannelReady(Lo/activateCredProtect;)V
    .locals 0

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onRelationshipValidationResult:Lo/activateCredProtect;

    return-void
.end method

.method public final onNavigationEvent()Lo/PayoutClaimSlotMachineResponse;
    .locals 20

    move-object/from16 v0, p0

    new-instance v18, Lo/getApplication_external_id;

    move-object/from16 v1, v18

    iget-object v2, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->newSession:Landroid/content/Context;

    iget-object v3, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iget-object v4, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->ICustomTabsService:Lo/BankAccountData;

    iget-object v5, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->warmup:Lo/DataListJsonAdapter;

    iget-object v6, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/PendingUsers;

    iget-object v7, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->extraCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    iget-object v8, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onPostMessage:Lo/Actionable;

    iget-object v9, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    iget-object v10, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->asInterface:Lo/fromMediaItemList;

    iget-object v11, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onNavigationEvent:Lo/fromMediaItemList;

    iget-object v12, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onRelationshipValidationResult:Lo/activateCredProtect;

    iget-object v13, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TemplatePropertiesMachineJsonAdapter;

    iget-object v14, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->updateVisuals:Lo/StatementPeriod;

    iget-object v15, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub:Lo/getSignInMethods;

    move-object/from16 v19, v1

    iget-object v1, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->asBinder:Lo/setCurrentItem$default;

    move-object/from16 v16, v1

    iget-object v1, v0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onTransact:Lo/StatementResponse$StatementDetails$CardLimits;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lo/getApplication_external_id;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/PendingUsers;Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;Lo/Actionable;Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;Lo/fromMediaItemList;Lo/fromMediaItemList;Lo/activateCredProtect;Lo/TemplatePropertiesMachineJsonAdapter;Lo/StatementPeriod;Lo/getSignInMethods;Lo/setCurrentItem$default;Lo/StatementResponse$StatementDetails$CardLimits;)V

    return-object v18
.end method

.method public final onPostMessage(Lo/StatementResponse$StatementDetails$CardLimits;)V
    .locals 0

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->onTransact:Lo/StatementResponse$StatementDetails$CardLimits;

    return-void
.end method

.method public final onPostMessage(Lo/TemplatePropertiesMachineJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TemplatePropertiesMachineJsonAdapter;

    return-void
.end method
