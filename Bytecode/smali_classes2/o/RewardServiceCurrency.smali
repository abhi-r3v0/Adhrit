.class public final Lo/RewardServiceCurrency;
.super Lo/getDataList;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storePicture"

    invoke-direct {p0, p1, v0}, Lo/getDataList;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/lang/String;)V

    iput-object p2, p0, Lo/RewardServiceCurrency;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lo/RewardServiceCurrency;->onPostMessage:Landroid/content/Context;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/RewardServiceCurrency;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo/RewardServiceCurrency;->onPostMessage:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 6

    iget-object v0, p0, Lo/RewardServiceCurrency;->onPostMessage:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Activity context is not available"

    invoke-virtual {p0, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/RewardServiceCurrency;->onPostMessage:Landroid/content/Context;

    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback$Stub(Landroid/content/Context;)Lo/WinMachineCardJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/WinMachineCardJsonAdapter;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Feature is not supported by the device."

    invoke-virtual {p0, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lo/RewardServiceCurrency;->ICustomTabsCallback:Ljava/util/Map;

    const-string v1, "iurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Image url cannot be empty."

    invoke-virtual {p0, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Invalid image url: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {v1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "Image type not recognized: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asBinder()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v3, p0, Lo/RewardServiceCurrency;->onPostMessage:Landroid/content/Context;

    invoke-static {v3}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v2, :cond_7

    sget v4, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->s1:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    const-string v4, "Save image"

    :goto_2
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_8

    sget v4, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->s2:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    const-string v4, "Allow Ad to store image in Picture gallery?"

    :goto_3
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_9

    sget v4, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->s3:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_9
    const-string v4, "Accept"

    :goto_4
    new-instance v5, Lo/StatementStatus;

    invoke-direct {v5, p0, v0, v1}, Lo/StatementStatus;-><init>(Lo/RewardServiceCurrency;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_a

    sget v0, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->s4:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    const-string v0, "Decline"

    :goto_5
    new-instance v1, Lo/BatcherWorker;

    invoke-direct {v1, p0}, Lo/BatcherWorker;-><init>(Lo/RewardServiceCurrency;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
