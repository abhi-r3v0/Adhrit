.class public final Lo/setNfcLogo;
.super Lo/setCenterImage;

# interfaces
.implements Lo/getPrimaryButtonText$onMessageChannelReady;
.implements Lo/getPrimaryButtonText$ICustomTabsCallback;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/DataListJsonAdapter;

.field private asInterface:Lo/setCardBgPattern;

.field private extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Lo/setCardTypeIv;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private onPostMessage:Lo/StatJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatJsonAdapter<",
            "Lo/setCardBackgroundView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/StatJsonAdapter;Lo/setCardTypeIv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/DataListJsonAdapter;",
            "Lo/StatJsonAdapter<",
            "Lo/setCardBackgroundView;",
            ">;",
            "Lo/setCardTypeIv;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lo/setCenterImage;-><init>(Lo/StatJsonAdapter;Lo/setCardTypeIv;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setNfcLogo;->onNavigationEvent:Ljava/lang/Object;

    iput-object p1, p0, Lo/setNfcLogo;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/setNfcLogo;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iput-object p3, p0, Lo/setNfcLogo;->onPostMessage:Lo/StatJsonAdapter;

    iput-object p4, p0, Lo/setNfcLogo;->onMessageChannelReady:Lo/setCardTypeIv;

    sget-object p2, Lo/WinningTypes;->INotificationSideChannel$Stub:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lo/getParcel;->extraCommand()Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;

    move-result-object p2

    invoke-virtual {p2}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;->ICustomTabsCallback()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    new-instance p3, Lo/setCardBgPattern;

    invoke-direct {p3, p1, p2, p0, p0}, Lo/setCardBgPattern;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;)V

    iput-object p3, p0, Lo/setNfcLogo;->asInterface:Lo/setCardBgPattern;

    invoke-virtual {p3}, Lo/setCardBgPattern;->checkAvailabilityAndConnect()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/Address;
    .locals 2

    iget-object v0, p0, Lo/setNfcLogo;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setNfcLogo;->asInterface:Lo/setCardBgPattern;

    invoke-virtual {v1}, Lo/setCardBgPattern;->onNavigationEvent()Lo/Address;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final extraCallback(I)V
    .locals 0

    const-string p1, "Disconnected from remote ad request service."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Lo/setReferenceId;)V
    .locals 9

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    new-instance p1, Lo/setCardTemplate;

    iget-object v0, p0, Lo/setNfcLogo;->extraCallback:Landroid/content/Context;

    iget-object v1, p0, Lo/setNfcLogo;->onPostMessage:Lo/StatJsonAdapter;

    iget-object v2, p0, Lo/setNfcLogo;->onMessageChannelReady:Lo/setCardTypeIv;

    invoke-direct {p1, v0, v1, v2}, Lo/setCardTemplate;-><init>(Landroid/content/Context;Lo/StatJsonAdapter;Lo/setCardTypeIv;)V

    invoke-interface {p1}, Lo/setSwipedDirection;->s_()Ljava/lang/Object;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p1, "action"

    const-string v0, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v3

    iget-object v4, p0, Lo/setNfcLogo;->extraCallback:Landroid/content/Context;

    iget-object p1, p0, Lo/setNfcLogo;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iget-object v5, p1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    const-string v6, "gmob-apps"

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/setNfcLogo;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setNfcLogo;->asInterface:Lo/setCardBgPattern;

    invoke-virtual {v1}, Lo/setCardBgPattern;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/setNfcLogo;->asInterface:Lo/setCardBgPattern;

    invoke-virtual {v1}, Lo/setCardBgPattern;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lo/setNfcLogo;->asInterface:Lo/setCardBgPattern;

    invoke-virtual {v1}, Lo/setCardBgPattern;->disconnect()V

    :cond_1
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

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lo/setCenterImage;->s_()Ljava/lang/Object;

    return-void
.end method
