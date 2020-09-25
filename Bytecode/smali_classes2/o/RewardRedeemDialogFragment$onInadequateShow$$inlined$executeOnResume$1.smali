.class public final Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# instance fields
.field private final synthetic extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private final onPostMessage:[B


# direct methods
.method private constructor <init>(Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;[B)V
    .locals 0

    iput-object p1, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->onPostMessage:[B

    return-void
.end method

.method synthetic constructor <init>(Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;[BLo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$1$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;-><init>(Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;[B)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;
    .locals 0

    iput p1, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->onMessageChannelReady:I

    return-object p0
.end method

.method public final onNavigationEvent(I)Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;
    .locals 0

    iput p1, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->onNavigationEvent:I

    return-object p0
.end method

.method public final declared-synchronized onPostMessage()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    iget-boolean v0, v0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/ColorJsonAdapter;

    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->onPostMessage:[B

    invoke-interface {v0, v1}, Lo/ColorJsonAdapter;->extraCallback([B)V

    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/ColorJsonAdapter;

    iget v1, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->onNavigationEvent:I

    invoke-interface {v0, v1}, Lo/ColorJsonAdapter;->ICustomTabsCallback(I)V

    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/ColorJsonAdapter;

    iget v1, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->onMessageChannelReady:I

    invoke-interface {v0, v1}, Lo/ColorJsonAdapter;->extraCallback(I)V

    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/ColorJsonAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/ColorJsonAdapter;->onNavigationEvent([I)V

    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/ColorJsonAdapter;

    invoke-interface {v0}, Lo/ColorJsonAdapter;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    invoke-static {v1, v0}, Lo/getText1;->onPostMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
