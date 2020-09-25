.class public final Lo/OfferDetail;
.super Lo/BankOfferRewardResponseJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/BankOfferRewardResponseJsonAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/content/Context;Lo/CardLinkSuccessResponseJsonAdapter;IZLo/setCanReverse;Lo/getLinkingData;)Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lo/component20;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v0, Lo/SupportedJsonAdapter;

    invoke-interface {p2}, Lo/CardLinkSuccessResponseJsonAdapter;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v4

    new-instance v11, Lo/CardLinkingDataResponse$$Parcelable;

    invoke-interface {p2}, Lo/CardLinkSuccessResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v7

    invoke-interface {p2}, Lo/CardLinkSuccessResponseJsonAdapter;->onTransact()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2}, Lo/CardLinkSuccessResponseJsonAdapter;->extraCallback()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v10

    move-object v5, v11

    move-object v6, p1

    move-object/from16 v9, p5

    invoke-direct/range {v5 .. v10}, Lo/CardLinkingDataResponse$$Parcelable;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    move-object v1, v0

    move-object v2, p1

    move/from16 v3, p4

    move-object/from16 v5, p6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lo/SupportedJsonAdapter;-><init>(Landroid/content/Context;ZZLo/getLinkingData;Lo/CardLinkingDataResponse$$Parcelable;)V

    return-object v0
.end method
