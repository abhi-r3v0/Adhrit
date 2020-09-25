.class public final Lo/setCompatVectorFromResourcesEnabled;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J,\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007J:\u0010\u0013\u001a\u00020\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/gem/referral/share/ShareReferralViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_shareLink",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "shareLink",
        "Landroidx/lifecycle/LiveData;",
        "getShareLink",
        "()Landroidx/lifecycle/LiveData;",
        "init",
        "",
        "campaign",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
        "screen",
        "source",
        "instrumentId",
        "postLink",
        "link",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 26
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/setCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    return-void
.end method

.method public static synthetic onMessageChannelReady(Lo/setCompatVectorFromResourcesEnabled;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "N/A"

    .line 28
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/setCompatVectorFromResourcesEnabled;->onPostMessage(Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/String;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 79
    iget-object v0, p0, Lo/setCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 82
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 16034
    iget-object v0, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsService:Ljava/lang/String;

    .line 17000
    sget-object v1, Lo/setTrackTintMode;->INotificationSideChannel$Stub$Proxy:Lo/setSubtitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 17026
    iget-object p2, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 18000
    sget-object v0, Lo/setTrackTintMode;->AudioAttributesCompatParcelizer:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 84
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 19000
    sget-object p2, Lo/setTrackTintMode;->read:Lo/setSubtitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v1, 0x24

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, p4}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 85
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 20000
    sget-object p2, Lo/setTrackTintMode;->IconCompatParcelizer:Lo/setSubtitleTextColor;

    sget-object p4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v0, 0x25

    aget-object p4, p4, v0

    invoke-virtual {p2, p4, p3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 86
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 21000
    sget-object p2, Lo/setTrackTintMode;->RemoteActionCompatParcelizer:Lo/setSubtitleTextColor;

    sget-object p3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 p4, 0x26

    aget-object p3, p3, p4

    invoke-virtual {p2, p3, p5}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 87
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 22000
    sget-object p2, Lo/setTrackTintMode;->write:Lo/setSubtitleTextColor;

    sget-object p3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 p4, 0x27

    aget-object p3, p3, p4

    invoke-virtual {p2, p3, p1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 88
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string p2, "Calendar.getInstance()"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 23000
    sget-object p3, Lo/setTrackTintMode;->AudioAttributesImplApi21Parcelizer:Lo/getNavigationContentDescription;

    sget-object p4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 p5, 0x28

    aget-object p4, p4, p5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final synthetic onPostMessage(Lo/setCompatVectorFromResourcesEnabled;Ljava/lang/String;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p5}, Lo/setCompatVectorFromResourcesEnabled;->onNavigationEvent(Ljava/lang/String;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "campaign"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "screen"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v0, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplApi21$7:Lo/isRemovingParent;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x60

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 35
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v2, Lo/setTrackTintMode;->INotificationSideChannel$Stub$Proxy:Lo/setSubtitleTextColor;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x22

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2034
    iget-object v3, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsService:Ljava/lang/String;

    .line 35
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v5, 0x0

    const/16 v6, 0x27

    const/16 v7, 0x23

    const/16 v8, 0x28

    if-nez v2, :cond_1

    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v2, Lo/setTrackTintMode;->AudioAttributesCompatParcelizer:Lo/setSubtitleTextColor;

    sget-object v9, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v9, v9, v7

    invoke-virtual {v2, v9}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3026
    iget-object v9, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 35
    invoke-static {v2, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-nez v2, :cond_1

    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v2, Lo/setTrackTintMode;->read:Lo/setSubtitleTextColor;

    sget-object v9, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v10, 0x24

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-static {v2, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-nez v2, :cond_1

    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v2, Lo/setTrackTintMode;->IconCompatParcelizer:Lo/setSubtitleTextColor;

    sget-object v9, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v10, 0x25

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-static {v2, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-nez v2, :cond_1

    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    sget-object v2, Lo/setTrackTintMode;->RemoteActionCompatParcelizer:Lo/setSubtitleTextColor;

    sget-object v9, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v10, 0x26

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-static {v2, p4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-nez v2, :cond_1

    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    sget-object v2, Lo/setTrackTintMode;->AudioAttributesImplApi21Parcelizer:Lo/getNavigationContentDescription;

    sget-object v9, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v9, v9, v8

    invoke-virtual {v2, v9}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    long-to-double v9, v9

    add-double/2addr v9, v0

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v0, v0

    cmpg-double v2, v9, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v3, [Lo/addWrite;

    .line 72
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 15000
    sget-object v0, Lo/setTrackTintMode;->AudioAttributesImplApi21Parcelizer:Lo/getNavigationContentDescription;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 15043
    new-instance v1, Lo/addWrite;

    const-string v2, "created_on"

    invoke-direct {v1, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p1, v5

    const-string v0, "pairs"

    .line 71
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "invite_link_cached_data"

    .line 71
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 74
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 16000
    sget-object p1, Lo/setTrackTintMode;->write:Lo/setSubtitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v6

    invoke-virtual {p1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 74
    invoke-direct/range {v0 .. v5}, Lo/setCompatVectorFromResourcesEnabled;->onNavigationEvent(Ljava/lang/String;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    sget-object v0, Lo/setTrackTintMode;->INotificationSideChannel$Stub$Proxy:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 9000
    sget-object v0, Lo/setTrackTintMode;->AudioAttributesCompatParcelizer:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 10000
    sget-object v0, Lo/setTrackTintMode;->write:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 11000
    sget-object v0, Lo/setTrackTintMode;->AudioAttributesImplApi21Parcelizer:Lo/getNavigationContentDescription;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v8

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 11034
    iget-object v2, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsService:Ljava/lang/String;

    const-string v3, "cred_referral_code"

    .line 44
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 12000
    sget-object v2, Lo/setTrackTintMode;->onNavigationEvent:Lo/setSubtitleTextColor;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "cred_referral_name"

    .line 45
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12026
    iget-object v2, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string v3, "N/A"

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    const-string v4, "cred_referral_experiment"

    .line 46
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12034
    iget-object v2, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsService:Ljava/lang/String;

    const-string v4, "af_sub1"

    .line 47
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v2, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "dd-MM-yyyy"

    invoke-static {v4, v5, v2}, Lo/setPreventCornerOverlap;->onMessageChannelReady(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "cred_referral_created_on"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13034
    iget-object v2, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsService:Ljava/lang/String;

    const-string v4, "c"

    .line 49
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "referral"

    const-string/jumbo v4, "utm_source"

    .line 50
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "utm_campaign"

    .line 51
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cred_referral_screen"

    .line 52
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, p3

    :goto_1
    const-string v2, "cred_referral_source"

    .line 53
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cred_referral_instrument_id"

    .line 54
    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "referral_params"

    invoke-static {v2, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lo/getChildFragmentManager;->onNavigationEvent:Lo/getChildFragmentManager;

    .line 13044
    iget-object v0, p0, Lo/MediaControllerCompat$TransportControlsApi24;->onPostMessage:Landroid/app/Application;

    const-string v2, "getApplication()"

    .line 57
    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lo/setCompatVectorFromResourcesEnabled$onNavigationEvent;-><init>(Lo/setCompatVectorFromResourcesEnabled;Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;

    invoke-static {v0, v1, v2}, Lo/getChildFragmentManager;->extraCallback(Landroid/app/Application;Ljava/util/Map;Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;)V

    .line 14026
    iget-object p1, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "one_link_without_exp"

    .line 68
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    :cond_4
    :goto_2
    return-void
.end method
