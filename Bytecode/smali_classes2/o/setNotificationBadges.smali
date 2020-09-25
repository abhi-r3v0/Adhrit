.class public final Lo/setNotificationBadges;
.super Ljava/lang/Object;

# interfaces
.implements Lo/WinDetailsItemJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private extraCallback:Lo/setBottomTag;

.field private onMessageChannelReady:Z

.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setNotificationBadges;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p1, p0, Lo/setNotificationBadges;->onPostMessage:Landroid/content/Context;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setNotificationBadges;)Lo/setBottomTag;
    .locals 0

    iget-object p0, p0, Lo/setNotificationBadges;->extraCallback:Lo/setBottomTag;

    return-object p0
.end method

.method private final extraCallback(Lo/RemoteControlCard;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RemoteControlCard;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/NBAFragment$showDialog$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/NBAFragment$showDialog$$inlined$executeOnResume$1;-><init>(Lo/setNotificationBadges;)V

    new-instance v1, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;

    invoke-direct {v1, p0, v0, p1}, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;-><init>(Lo/setNotificationBadges;Lo/SuggestedAmount;Lo/RemoteControlCard;)V

    new-instance p1, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;

    invoke-direct {p1, p0, v0}, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;-><init>(Lo/setNotificationBadges;Lo/SuggestedAmount;)V

    iget-object v2, p0, Lo/setNotificationBadges;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lo/setBottomTag;

    iget-object v4, p0, Lo/setNotificationBadges;->onPostMessage:Landroid/content/Context;

    invoke-static {}, Lo/getParcel;->extraCommand()Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;

    move-result-object v5

    invoke-virtual {v5}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;->ICustomTabsCallback()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lo/setBottomTag;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;)V

    iput-object v3, p0, Lo/setNotificationBadges;->extraCallback:Lo/setBottomTag;

    invoke-virtual {v3}, Lo/setBottomTag;->checkAvailabilityAndConnect()V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final extraCallback()V
    .locals 2

    iget-object v0, p0, Lo/setNotificationBadges;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setNotificationBadges;->extraCallback:Lo/setBottomTag;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/setNotificationBadges;->extraCallback:Lo/setBottomTag;

    invoke-virtual {v1}, Lo/setBottomTag;->disconnect()V

    const/4 v1, 0x0

    iput-object v1, p0, Lo/setNotificationBadges;->extraCallback:Lo/setBottomTag;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic extraCallback(Lo/setNotificationBadges;)V
    .locals 0

    invoke-direct {p0}, Lo/setNotificationBadges;->extraCallback()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setNotificationBadges;)Z
    .locals 0

    iget-boolean p0, p0, Lo/setNotificationBadges;->onMessageChannelReady:Z

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/setNotificationBadges;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/setNotificationBadges;->ICustomTabsCallback:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/setNotificationBadges;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/setNotificationBadges;->onMessageChannelReady:Z

    return p1
.end method


# virtual methods
.method public final extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/initiateUPI;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;)",
            "Lo/initiateUPI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzae;
        }
    .end annotation

    const-string v1, "ms"

    const-string v2, "Http assets remote cache took "

    invoke-static/range {p1 .. p1}, Lo/RemoteControlCard;->extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/RemoteControlCard;

    move-result-object v0

    sget-object v3, Lo/WinningTypes;->MediaMetadataCompat$RatingKey:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v5

    invoke-interface {v5}, Lo/component15;->onPostMessage()J

    move-result-wide v5

    move-object/from16 v9, p0

    :try_start_0
    invoke-direct {v9, v0}, Lo/setNotificationBadges;->extraCallback(Lo/RemoteControlCard;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v10}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lo/AddMandateRequestBody;

    invoke-direct {v3, v0}, Lo/AddMandateRequestBody;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v0, Lo/MaxLandingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v0}, Lo/AddMandateRequestBody;->onNavigationEvent(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lo/MaxLandingItem;

    iget-boolean v3, v0, Lo/MaxLandingItem;->onNavigationEvent:Z

    if-nez v3, :cond_2

    iget-object v3, v0, Lo/MaxLandingItem;->onMessageChannelReady:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, v0, Lo/MaxLandingItem;->asInterface:[Ljava/lang/String;

    array-length v4, v4

    if-eq v3, v4, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lo/MaxLandingItem;->onMessageChannelReady:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lo/MaxLandingItem;->onMessageChannelReady:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v10, v0, Lo/MaxLandingItem;->asInterface:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v13, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lo/initiateUPI;

    iget v11, v0, Lo/MaxLandingItem;->onPostMessage:I

    iget-object v12, v0, Lo/MaxLandingItem;->ICustomTabsCallback:[B

    iget-boolean v14, v0, Lo/MaxLandingItem;->onRelationshipValidationResult:Z

    iget-wide v7, v0, Lo/MaxLandingItem;->asBinder:J

    move-object v10, v3

    move-wide v15, v7

    invoke-direct/range {v10 .. v16}, Lo/initiateUPI;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v3

    :goto_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v10

    sub-long/2addr v10, v5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x34

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    return-object v7

    :cond_2
    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzae;

    iget-object v0, v0, Lo/MaxLandingItem;->extraCallback:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzae;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v3

    invoke-interface {v3}, Lo/component15;->onPostMessage()J

    move-result-wide v7

    sub-long/2addr v7, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x34

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    throw v0

    :catch_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v7

    sub-long/2addr v7, v5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x34

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
