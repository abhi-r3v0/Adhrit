.class public final Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/ConfigJsonAdapter;

.field public final ICustomTabsCallback$Stub:Lo/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;

.field public final ICustomTabsService:Lo/AutoDebitInstrumentSetupRequestBody_RegistrationDetailJsonAdapter;

.field public final asBinder:Lo/EligiblePaymentInstrumentJsonAdapter;

.field public final asInterface:Lo/setMinCropResultSize;

.field public final extraCallback:Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

.field public final getInterfaceDescriptor:Z

.field public final onMessageChannelReady:Lo/WinPullDownResponseJsonAdapter;

.field public final onNavigationEvent:Lo/getEndUrls;

.field public final onPostMessage:Lo/RedeemAssociateRequestModelJsonAdapter;

.field public final onRelationshipValidationResult:Lo/setScoreListener;

.field public final onTransact:Lo/EligiblePaymentInstrument;


# direct methods
.method private constructor <init>(Lo/getEndUrls;Lo/RedeemAssociateRequestModelJsonAdapter;Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;Lo/WinPullDownResponseJsonAdapter;Lo/ConfigJsonAdapter;Lo/setScoreListener;Lo/EligiblePaymentInstrumentJsonAdapter;Lo/EligiblePaymentInstrument;Lo/setMinCropResultSize;Lo/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;ZLo/AutoDebitInstrumentSetupRequestBody_RegistrationDetailJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getEndUrls;

    iput-object p2, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/RedeemAssociateRequestModelJsonAdapter;

    iput-object p3, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    iput-object p4, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/WinPullDownResponseJsonAdapter;

    iput-object p5, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ConfigJsonAdapter;

    iput-object p6, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/setScoreListener;

    iput-object p7, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asBinder:Lo/EligiblePaymentInstrumentJsonAdapter;

    iput-object p8, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onTransact:Lo/EligiblePaymentInstrument;

    iput-object p9, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->asInterface:Lo/setMinCropResultSize;

    iput-object p10, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->getInterfaceDescriptor:Z

    iput-object p12, p0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsService:Lo/AutoDebitInstrumentSetupRequestBody_RegistrationDetailJsonAdapter;

    return-void
.end method

.method public static onNavigationEvent(Landroid/content/Context;)Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;
    .locals 14

    invoke-static {}, Lo/getParcel;->INotificationSideChannel()Lo/NotificationSeenAckRequestBodyJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/NotificationSeenAckRequestBodyJsonAdapter;->onPostMessage(Landroid/content/Context;)V

    new-instance v13, Lo/Nb;

    invoke-direct {v13, p0}, Lo/Nb;-><init>(Landroid/content/Context;)V

    new-instance v0, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    new-instance v3, Lo/RedeemRequestModelJsonAdapter;

    invoke-direct {v3}, Lo/RedeemRequestModelJsonAdapter;-><init>()V

    new-instance v4, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;

    invoke-direct {v4}, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;-><init>()V

    new-instance v5, Lo/WinResponseJsonAdapter;

    invoke-direct {v5}, Lo/WinResponseJsonAdapter;-><init>()V

    new-instance v6, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;

    invoke-interface {v13}, Lo/AutoDebitInstrumentSetupRequestBody_RegistrationDetailJsonAdapter;->onNavigationEvent()Lo/RentOrderResponseJsonAdapter;

    move-result-object v1

    invoke-direct {v6, p0, v1}, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;-><init>(Landroid/content/Context;Lo/RentOrderResponseJsonAdapter;)V

    new-instance v7, Lo/SubMenuItemJsonAdapter;

    invoke-direct {v7}, Lo/SubMenuItemJsonAdapter;-><init>()V

    new-instance v8, Lo/Config;

    invoke-direct {v8}, Lo/Config;-><init>()V

    new-instance v9, Lo/ErrorDetailJsonAdapter;

    invoke-direct {v9}, Lo/ErrorDetailJsonAdapter;-><init>()V

    new-instance v10, Lo/setMaxZoom;

    invoke-direct {v10}, Lo/setMaxZoom;-><init>()V

    new-instance v11, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;

    invoke-direct {v11}, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;-><init>()V

    const/4 v2, 0x0

    const/4 v12, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lo/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/getEndUrls;Lo/RedeemAssociateRequestModelJsonAdapter;Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;Lo/WinPullDownResponseJsonAdapter;Lo/ConfigJsonAdapter;Lo/setScoreListener;Lo/EligiblePaymentInstrumentJsonAdapter;Lo/EligiblePaymentInstrument;Lo/setMinCropResultSize;Lo/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;ZLo/AutoDebitInstrumentSetupRequestBody_RegistrationDetailJsonAdapter;)V

    return-object v0
.end method
