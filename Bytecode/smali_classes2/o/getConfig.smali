.class public Lo/getConfig;
.super Ljava/lang/Object;


# static fields
.field protected static volatile extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

.field private static volatile onMessageChannelReady:Ljava/util/Random;

.field private static final onNavigationEvent:Landroid/os/ConditionVariable;


# instance fields
.field private ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

.field protected volatile onPostMessage:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lo/getConfig;->onNavigationEvent:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    sput-object v0, Lo/getConfig;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    sput-object v0, Lo/getConfig;->onMessageChannelReady:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getConfig;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {p1}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lo/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;-><init>(Lo/getConfig;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static ICustomTabsCallback()Ljava/util/Random;
    .locals 2

    sget-object v0, Lo/getConfig;->onMessageChannelReady:Ljava/util/Random;

    if-nez v0, :cond_1

    const-class v0, Lo/getConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/getConfig;->onMessageChannelReady:Ljava/util/Random;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lo/getConfig;->onMessageChannelReady:Ljava/util/Random;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lo/getConfig;->onMessageChannelReady:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/getConfig;)Lo/SubmitScoreRequestJsonAdapter;
    .locals 0

    iget-object p0, p0, Lo/getConfig;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    return-object p0
.end method

.method static synthetic onMessageChannelReady()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lo/getConfig;->onNavigationEvent:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static onNavigationEvent()I
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lo/getConfig;->ICustomTabsCallback()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-static {}, Lo/getConfig;->ICustomTabsCallback()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final extraCallback(IIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lo/getConfig;->onNavigationEvent:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lo/getConfig;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/getConfig;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    new-instance v0, Lo/BankScreenResponse$SupportedBank$$Parcelable;

    invoke-direct {v0}, Lo/BankScreenResponse$SupportedBank$$Parcelable;-><init>()V

    iget-object v1, p0, Lo/getConfig;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    iget-object v1, v1, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/BankScreenResponse$SupportedBank$$Parcelable;->onPostMessage:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, v0, Lo/BankScreenResponse$SupportedBank$$Parcelable;->ICustomTabsCallback:Ljava/lang/Long;

    sget-object p3, Lo/getConfig;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;->ICustomTabsCallback([B)Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->onNavigationEvent(I)Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;

    invoke-virtual {p3, p1}, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->ICustomTabsCallback(I)Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;

    invoke-virtual {p3}, Lo/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;->onPostMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
