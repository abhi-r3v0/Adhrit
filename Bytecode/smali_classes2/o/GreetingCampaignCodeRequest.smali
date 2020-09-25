.class public final Lo/GreetingCampaignCodeRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final ICustomTabsCallback$Stub:J

.field public final asBinder:Lorg/json/JSONObject;

.field public final asInterface:Z

.field public final extraCallback:Lo/LockConfigDataJsonAdapter;

.field public final onMessageChannelReady:Lo/setCardBackgroundView;

.field public final onNavigationEvent:Lo/setCurrentItem$default;

.field public final onPostMessage:Lo/setOnCtaClick;

.field public final onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

.field public final onTransact:J


# direct methods
.method public constructor <init>(Lo/setCardBackgroundView;Lo/setOnCtaClick;Lo/LockConfigDataJsonAdapter;Lo/setCurrentItem$default;IJJLorg/json/JSONObject;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iput-object p2, p0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iput-object p3, p0, Lo/GreetingCampaignCodeRequest;->extraCallback:Lo/LockConfigDataJsonAdapter;

    iput-object p4, p0, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    iput p5, p0, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    iput-wide p6, p0, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    iput-wide p8, p0, Lo/GreetingCampaignCodeRequest;->onTransact:J

    iput-object p10, p0, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    iput-object p11, p0, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    if-eqz p12, :cond_0

    invoke-virtual {p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    return-void

    :cond_0
    iget-object p1, p1, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    invoke-static {p1}, Lo/ControlMetadataJsonAdapter;->extraCallback(Lo/setLastItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lo/setCardBackgroundView;Lo/setOnCtaClick;Lo/LockConfigDataJsonAdapter;Lo/setCurrentItem$default;IJJLorg/json/JSONObject;Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iput-object p2, p0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/GreetingCampaignCodeRequest;->extraCallback:Lo/LockConfigDataJsonAdapter;

    iput-object p1, p0, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    iput p5, p0, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    iput-wide p6, p0, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    iput-wide p8, p0, Lo/GreetingCampaignCodeRequest;->onTransact:J

    iput-object p1, p0, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    new-instance p1, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    invoke-direct {p1, p11}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;-><init>(Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V

    iput-object p1, p0, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    return-void
.end method
