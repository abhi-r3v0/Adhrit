.class public final Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field onMessageChannelReady:Z

.field onPostMessage:Lo/ColorJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    sget-object v0, Lo/WinningTypes;->getStarRating:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    const-string v1, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lo/ComponentJsonAdapter;->onNavigationEvent(Landroid/os/IBinder;)Lo/ColorJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/ColorJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    iget-object v0, p0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/ColorJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    const-string v1, "GMA_SDK"

    invoke-interface {v0, p1, v1}, Lo/ColorJsonAdapter;->onPostMessage(Lo/getEventName;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onMessageChannelReady:Z
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot dynamite load clearcut"

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    :try_start_0
    sget-object p3, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    const-string v0, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, p3, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p3

    const-string v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    invoke-virtual {p3, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lo/ComponentJsonAdapter;->onNavigationEvent(Landroid/os/IBinder;)Lo/ColorJsonAdapter;

    move-result-object p3

    iput-object p3, p0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/ColorJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    iget-object p3, p0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/ColorJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lo/ColorJsonAdapter;->onPostMessage(Lo/getEventName;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onMessageChannelReady:Z
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot dynamite load clearcut"

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback([B)Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;
    .locals 2

    new-instance v0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;-><init>(Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;[BLo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;)V

    return-object v0
.end method
