.class final Lo/AdOverlayInfoParcel;
.super Lo/createInAppPurchaseManager;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private final onMessageChannelReady:I

.field private final synthetic onNavigationEvent:Lo/getMobileAdsSettingsManager;


# direct methods
.method constructor <init>(Lo/getMobileAdsSettingsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/AdOverlayInfoParcel;->onNavigationEvent:Lo/getMobileAdsSettingsManager;

    invoke-direct {p0}, Lo/createInAppPurchaseManager;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lo/AdOverlayInfoParcel;->ICustomTabsCallback:I

    .line 3
    iget-object p1, p0, Lo/AdOverlayInfoParcel;->onNavigationEvent:Lo/getMobileAdsSettingsManager;

    invoke-virtual {p1}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result p1

    iput p1, p0, Lo/AdOverlayInfoParcel;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final extraCallback()B
    .locals 2

    .line 5
    iget v0, p0, Lo/AdOverlayInfoParcel;->ICustomTabsCallback:I

    .line 6
    iget v1, p0, Lo/AdOverlayInfoParcel;->onMessageChannelReady:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p0, Lo/AdOverlayInfoParcel;->ICustomTabsCallback:I

    .line 9
    iget-object v1, p0, Lo/AdOverlayInfoParcel;->onNavigationEvent:Lo/getMobileAdsSettingsManager;

    invoke-virtual {v1, v0}, Lo/getMobileAdsSettingsManager;->ICustomTabsCallback(I)B

    move-result v0

    return v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 4
    iget v0, p0, Lo/AdOverlayInfoParcel;->ICustomTabsCallback:I

    iget v1, p0, Lo/AdOverlayInfoParcel;->onMessageChannelReady:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
