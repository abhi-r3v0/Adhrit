.class final synthetic Lo/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Footer$$Parcelable;


# static fields
.field static final onNavigationEvent:Lo/Footer$$Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;-><init>()V

    sput-object v0, Lo/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent:Lo/Footer$$Parcelable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "isSuccessful"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appSettingsJson"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ContactSyncResponse;->onRelationshipValidationResult(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
