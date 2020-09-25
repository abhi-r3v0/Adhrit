.class public final Lo/StatementPeriod;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

.field public final extraCallback:Lo/BankOfferRewardResponseJsonAdapter;

.field public final onMessageChannelReady:Lo/InstrumentValidationSuccessResponseJsonAdapter;

.field public final onNavigationEvent:Lo/SummaryBank;


# direct methods
.method private constructor <init>(Lo/InstrumentValidationSuccessResponseJsonAdapter;Lo/BankOfferRewardResponseJsonAdapter;Lo/SummaryBank;Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/StatementPeriod;->onMessageChannelReady:Lo/InstrumentValidationSuccessResponseJsonAdapter;

    iput-object p2, p0, Lo/StatementPeriod;->extraCallback:Lo/BankOfferRewardResponseJsonAdapter;

    iput-object p3, p0, Lo/StatementPeriod;->onNavigationEvent:Lo/SummaryBank;

    iput-object p4, p0, Lo/StatementPeriod;->ICustomTabsCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    return-void
.end method

.method public static extraCallback(Landroid/content/Context;)Lo/StatementPeriod;
    .locals 5

    new-instance v0, Lo/StatementPeriod;

    new-instance v1, Lo/CardLinkingReasonJsonAdapter;

    invoke-direct {v1}, Lo/CardLinkingReasonJsonAdapter;-><init>()V

    new-instance v2, Lo/OfferDetail;

    invoke-direct {v2}, Lo/OfferDetail;-><init>()V

    new-instance v3, Lo/Nudge$Background;

    new-instance v4, Lo/Nudge;

    invoke-direct {v4}, Lo/Nudge;-><init>()V

    invoke-direct {v3, v4}, Lo/Nudge$Background;-><init>(Lo/SummaryBankProperties;)V

    new-instance v4, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    invoke-direct {v4, p0}, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lo/StatementPeriod;-><init>(Lo/InstrumentValidationSuccessResponseJsonAdapter;Lo/BankOfferRewardResponseJsonAdapter;Lo/SummaryBank;Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V

    return-object v0
.end method
