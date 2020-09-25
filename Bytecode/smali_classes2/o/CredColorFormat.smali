.class public final Lo/CredColorFormat;
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

.field private asInterface:Ljava/lang/String;

.field private extraCallback:J

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:J

.field private final onPostMessage:Landroid/content/Context;

.field private onRelationshipValidationResult:Ljava/lang/String;


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

    const-string v0, "createCalendarEvent"

    invoke-direct {p0, p1, v0}, Lo/getDataList;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/lang/String;)V

    iput-object p2, p0, Lo/CredColorFormat;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lo/CredColorFormat;->onPostMessage:Landroid/content/Context;

    const-string p1, "description"

    invoke-direct {p0, p1}, Lo/CredColorFormat;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CredColorFormat;->onMessageChannelReady:Ljava/lang/String;

    const-string p1, "summary"

    invoke-direct {p0, p1}, Lo/CredColorFormat;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CredColorFormat;->asInterface:Ljava/lang/String;

    const-string p1, "start_ticks"

    invoke-direct {p0, p1}, Lo/CredColorFormat;->ICustomTabsCallback(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lo/CredColorFormat;->onNavigationEvent:J

    const-string p1, "end_ticks"

    invoke-direct {p0, p1}, Lo/CredColorFormat;->ICustomTabsCallback(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lo/CredColorFormat;->extraCallback:J

    const-string p1, "location"

    invoke-direct {p0, p1}, Lo/CredColorFormat;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CredColorFormat;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lo/CredColorFormat;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method static synthetic onMessageChannelReady(Lo/CredColorFormat;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo/CredColorFormat;->onPostMessage:Landroid/content/Context;

    return-object p0
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CredColorFormat;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/CredColorFormat;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method final ICustomTabsCallback()Landroid/content/Intent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lo/CredColorFormat;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/CredColorFormat;->onRelationshipValidationResult:Ljava/lang/String;

    const-string v2, "eventLocation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/CredColorFormat;->asInterface:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v1, p0, Lo/CredColorFormat;->onNavigationEvent:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v5, "beginTime"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-wide v1, p0, Lo/CredColorFormat;->extraCallback:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 4

    iget-object v0, p0, Lo/CredColorFormat;->onPostMessage:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Activity context is not available."

    invoke-virtual {p0, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/CredColorFormat;->onPostMessage:Landroid/content/Context;

    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback$Stub(Landroid/content/Context;)Lo/WinMachineCardJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/WinMachineCardJsonAdapter;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "This feature is not available on the device."

    invoke-virtual {p0, v0}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/CredColorFormat;->onPostMessage:Landroid/content/Context;

    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asBinder()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v2, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->s5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "Create calendar event"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_3

    sget v2, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->s6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v2, "Allow Ad to create a calendar event?"

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_4

    sget v2, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->s3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, "Accept"

    :goto_2
    new-instance v3, Lo/MoshiColorListAdapter;

    invoke-direct {v3, p0}, Lo/MoshiColorListAdapter;-><init>(Lo/CredColorFormat;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_5

    sget v2, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->s4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    const-string v1, "Decline"

    :goto_3
    new-instance v2, Lo/StashProcessStatus;

    invoke-direct {v2, p0}, Lo/StashProcessStatus;-><init>(Lo/CredColorFormat;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
