.class public Lo/SubmitScoreRequestJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SubmitScoreRequestJsonAdapter$onPostMessage;
    }
.end annotation


# static fields
.field private static final onPostMessage:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

.field private volatile ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Lo/getConfig;

.field private ICustomTabsService:Z

.field private asBinder:[B

.field private volatile asInterface:Lo/getTotalAmountDue;

.field private extraCallback:Lo/DeductLifeRequestJsonAdapter;

.field private extraCommand:Z

.field private volatile getInterfaceDescriptor:Lo/LoanStatusResponse$CaptchaInput;

.field private mayLaunchUrl:Z

.field private newSession:Ljava/util/concurrent/Future;

.field protected onMessageChannelReady:Landroid/content/Context;

.field private onNavigationEvent:Ldalvik/system/DexClassLoader;

.field private onRelationshipValidationResult:Ljava/util/concurrent/Future;

.field private onTransact:Z

.field private postMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lo/ClaimedRewardDetailsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private requestPostMessageChannel:Z

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->asInterface:Lo/getTotalAmountDue;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback$Stub:Z

    iput-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->onRelationshipValidationResult:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->getInterfaceDescriptor:Lo/LoanStatusResponse$CaptchaInput;

    iput-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->newSession:Ljava/util/concurrent/Future;

    iput-boolean v1, p0, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsService:Z

    iput-boolean v1, p0, Lo/SubmitScoreRequestJsonAdapter;->warmup:Z

    iput-boolean v1, p0, Lo/SubmitScoreRequestJsonAdapter;->extraCommand:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/SubmitScoreRequestJsonAdapter;->requestPostMessageChannel:Z

    iput-boolean v1, p0, Lo/SubmitScoreRequestJsonAdapter;->mayLaunchUrl:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lo/SubmitScoreRequestJsonAdapter;->onTransact:Z

    if-eqz v1, :cond_1

    move-object p1, v2

    :cond_1
    iput-object p1, p0, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/SubmitScoreRequestJsonAdapter;->postMessage:Ljava/util/Map;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lo/SubmitScoreRequestJsonAdapter;
    .locals 9

    const-string v0, "%s/%s.dex"

    new-instance v1, Lo/SubmitScoreRequestJsonAdapter;

    invoke-direct {v1, p0}, Lo/SubmitScoreRequestJsonAdapter;-><init>(Landroid/content/Context;)V

    :try_start_0
    new-instance p0, Lo/UserGameDetailsJsonAdapter;

    invoke-direct {p0}, Lo/UserGameDetailsJsonAdapter;-><init>()V

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v1, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    iput-boolean p3, v1, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz p3, :cond_0

    iget-object p0, v1, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lo/getTs;

    invoke-direct {p3, v1}, Lo/getTs;-><init>(Lo/SubmitScoreRequestJsonAdapter;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v1, Lo/SubmitScoreRequestJsonAdapter;->onRelationshipValidationResult:Ljava/util/concurrent/Future;

    :cond_0
    iget-object p0, v1, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lo/getScore;

    invoke-direct {p3, v1}, Lo/getScore;-><init>(Lo/SubmitScoreRequestJsonAdapter;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_0 .. :try_end_0} :catch_5

    const/4 p0, 0x1

    const/4 p3, 0x0

    :try_start_1
    invoke-static {}, Lo/PaymentItem;->onNavigationEvent()Lo/PaymentItem;

    move-result-object v2

    iget-object v3, v1, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lo/PaymentItem;->onPostMessage(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v1, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsService:Z

    iget-object v3, v1, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v1, Lo/SubmitScoreRequestJsonAdapter;->warmup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-virtual {v1, p3, p0}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(IZ)V

    invoke-static {}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lo/WinningTypes;->setSubscription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    new-instance v2, Lo/DeductLifeRequestJsonAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/DeductLifeRequestJsonAdapter;-><init>(Ljava/security/SecureRandom;)V

    iput-object v2, v1, Lo/SubmitScoreRequestJsonAdapter;->extraCallback:Lo/DeductLifeRequestJsonAdapter;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    invoke-virtual {v2, p1}, Lo/DeductLifeRequestJsonAdapter;->extraCallback(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lo/SubmitScoreRequestJsonAdapter;->asBinder:[B
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    iget-object p1, v1, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, v1, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    const-string v2, "dex"

    invoke-virtual {p1, v2, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    throw p0

    :cond_6
    :goto_3
    const-string v2, "1521499837408"

    new-instance v4, Ljava/io/File;

    const-string v5, "%s/%s.jar"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, p3

    aput-object v2, v7, p0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v1, Lo/SubmitScoreRequestJsonAdapter;->extraCallback:Lo/DeductLifeRequestJsonAdapter;

    iget-object v7, v1, Lo/SubmitScoreRequestJsonAdapter;->asBinder:[B

    invoke-virtual {v5, v7, p2}, Lo/DeductLifeRequestJsonAdapter;->ICustomTabsCallback([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v7, p2

    invoke-virtual {v5, p2, p3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    invoke-direct {v1, p1, v2}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    new-instance p2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {p2, v5, v7, v3, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, v1, Lo/SubmitScoreRequestJsonAdapter;->onNavigationEvent:Ldalvik/system/DexClassLoader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v4}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V

    invoke-direct {v1, p1, v2}, Lo/SubmitScoreRequestJsonAdapter;->onNavigationEvent(Ljava/io/File;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, p3

    aput-object v2, p2, p0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    iget-boolean p1, v1, Lo/SubmitScoreRequestJsonAdapter;->mayLaunchUrl:Z

    if-nez p1, :cond_8

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, v1, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    new-instance p3, Lo/SubmitScoreRequestJsonAdapter$onPostMessage;

    invoke-direct {p3, v1, v3}, Lo/SubmitScoreRequestJsonAdapter$onPostMessage;-><init>(Lo/SubmitScoreRequestJsonAdapter;Lo/UserGameDetailsJsonAdapter;)V

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean p0, v1, Lo/SubmitScoreRequestJsonAdapter;->mayLaunchUrl:Z

    :cond_8
    new-instance p1, Lo/getConfig;

    invoke-direct {p1, v1}, Lo/getConfig;-><init>(Lo/SubmitScoreRequestJsonAdapter;)V

    iput-object p1, v1, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/getConfig;

    iput-boolean p0, v1, Lo/SubmitScoreRequestJsonAdapter;->extraCommand:Z
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catchall_1
    move-exception p2

    :try_start_8
    invoke-static {v4}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V

    invoke-direct {v1, p1, v2}, Lo/SubmitScoreRequestJsonAdapter;->onNavigationEvent(Ljava/io/File;Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, p3

    aput-object v2, v3, p0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)V

    throw p2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_8 .. :try_end_8} :catch_5

    :catch_0
    move-exception p0

    :try_start_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :goto_4
    return-object v1
.end method

.method private static ICustomTabsCallback(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "File %s not found. No need for deletion"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_2

    invoke-static {v0}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V

    return v3

    :cond_2
    long-to-int v1, v5

    new-array v1, v1, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_3

    sget-object p2, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage:Ljava/lang/String;

    const-string v1, "Cannot read the cache data."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v3

    :cond_3
    :try_start_3
    new-instance v6, Lo/ScreenDataPay;

    invoke-direct {v6}, Lo/ScreenDataPay;-><init>()V

    invoke-static {v6, v1}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;[B)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    move-result-object v1

    check-cast v1, Lo/ScreenDataPay;

    new-instance v6, Ljava/lang/String;

    iget-object v7, v1, Lo/ScreenDataPay;->extraCallback:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v1, Lo/ScreenDataPay;->onNavigationEvent:[B

    iget-object v6, v1, Lo/ScreenDataPay;->onPostMessage:[B

    invoke-static {v6}, Lo/MosaicResponseBodyJsonAdapter;->onNavigationEvent([B)[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v1, Lo/ScreenDataPay;->onMessageChannelReady:[B

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lo/SubmitScoreRequestJsonAdapter;->extraCallback:Lo/DeductLifeRequestJsonAdapter;

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->asBinder:[B

    new-instance v6, Ljava/lang/String;

    iget-object v1, v1, Lo/ScreenDataPay;->onPostMessage:[B

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v6}, Lo/DeductLifeRequestJsonAdapter;->ICustomTabsCallback([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    array-length p1, p2

    invoke-virtual {v0, p2, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return v4

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_5
    :goto_0
    :try_start_7
    invoke-static {v0}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    return v3

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_1
    move-object p1, v5

    goto :goto_2

    :catch_4
    move-object v0, p1

    :catch_5
    move-object p1, v5

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object v0, p1

    :goto_2
    if-eqz p1, :cond_6

    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    :catch_6
    nop

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_7
    throw p2

    :catch_8
    move-object v0, p1

    :goto_4
    if-eqz p1, :cond_8

    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_5

    :catch_9
    nop

    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_9
    return v3
.end method

.method private final ICustomTabsService()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->asInterface:Lo/getTotalAmountDue;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/SubmitScoreRequestJsonAdapter;->onTransact:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo/getTotalAmountDue;

    iget-object v1, p0, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/getTotalAmountDue;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/getTotalAmountDue;->start()V

    iput-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->asInterface:Lo/getTotalAmountDue;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->asInterface:Lo/getTotalAmountDue;

    return-void
.end method

.method private static extraCallback(ILo/LoanStatusResponse$CaptchaInput;)Z
    .locals 4

    const/4 v0, 0x4

    if-ge p0, v0, :cond_4

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    sget-object v0, Lo/WinningTypes;->getSubtitle:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo/LoanStatusResponse$CaptchaInput;->warmup:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/LoanStatusResponse$CaptchaInput;->warmup:Ljava/lang/String;

    const-string v1, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return p0

    :cond_2
    sget-object v0, Lo/WinningTypes;->getIconBitmap:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lo/LoanStatusResponse$CaptchaInput;->getExtras:Lo/AadhaarMultiSimSelectorDialog$onActivityResult$$inlined$executeOnResume$1;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo/LoanStatusResponse$CaptchaInput;->getExtras:Lo/AadhaarMultiSimSelectorDialog$onActivityResult$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/AadhaarMultiSimSelectorDialog$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lo/LoanStatusResponse$CaptchaInput;->getExtras:Lo/AadhaarMultiSimSelectorDialog$onActivityResult$$inlined$executeOnResume$1;

    iget-object p1, p1, Lo/AadhaarMultiSimSelectorDialog$onActivityResult$$inlined$executeOnResume$1;->extraCallback:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    :cond_3
    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic onMessageChannelReady(ILo/LoanStatusResponse$CaptchaInput;)Z
    .locals 0

    invoke-static {p0, p1}, Lo/SubmitScoreRequestJsonAdapter;->extraCallback(ILo/LoanStatusResponse$CaptchaInput;)Z

    move-result p0

    return p0
.end method

.method private final onNavigationEvent(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gtz p1, :cond_2

    return-void

    :cond_2
    long-to-int p1, v4

    new-array p1, p1, [B

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v5, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {v2}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V

    return-void

    :cond_3
    :try_start_3
    new-instance v5, Lo/ScreenDataPay;

    invoke-direct {v5}, Lo/ScreenDataPay;-><init>()V

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lo/ScreenDataPay;->onMessageChannelReady:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v5, Lo/ScreenDataPay;->extraCallback:[B

    iget-object p2, p0, Lo/SubmitScoreRequestJsonAdapter;->extraCallback:Lo/DeductLifeRequestJsonAdapter;

    iget-object v6, p0, Lo/SubmitScoreRequestJsonAdapter;->asBinder:[B

    invoke-virtual {p2, v6, p1}, Lo/DeductLifeRequestJsonAdapter;->onMessageChannelReady([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v5, Lo/ScreenDataPay;->onPostMessage:[B

    invoke-static {p1}, Lo/MosaicResponseBodyJsonAdapter;->onNavigationEvent([B)[B

    move-result-object p1

    iput-object p1, v5, Lo/ScreenDataPay;->onNavigationEvent:[B

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v5}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p1, p2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    invoke-static {v2}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v1

    :goto_0
    move-object v1, v4

    goto :goto_1

    :catch_3
    move-object p1, v1

    :catch_4
    move-object v1, v4

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object p1, v1

    :goto_1
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    :catch_5
    nop

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_5
    invoke-static {v2}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V

    throw p2

    :catch_7
    move-object p1, v1

    :goto_3
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_4

    :catch_8
    nop

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :cond_7
    invoke-static {v2}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Ljava/io/File;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;)Lo/LoanStatusResponse$CaptchaInput;
    .locals 0

    iput-object p1, p0, Lo/SubmitScoreRequestJsonAdapter;->getInterfaceDescriptor:Lo/LoanStatusResponse$CaptchaInput;

    return-object p1
.end method

.method static synthetic onPostMessage(Lo/SubmitScoreRequestJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsService()V

    return-void
.end method

.method static synthetic onPostMessage(Lo/SubmitScoreRequestJsonAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/SubmitScoreRequestJsonAdapter;->requestPostMessageChannel:Z

    return p1
.end method

.method private final requestPostMessageChannel()Lo/LoanStatusResponse$CaptchaInput;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    iget-object v2, p0, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lo/ActiveLoanData;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/LoanStatusResponse$CaptchaInput;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method final ICustomTabsCallback(IZ)Lo/LoanStatusResponse$CaptchaInput;
    .locals 0

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-direct {p0}, Lo/SubmitScoreRequestJsonAdapter;->requestPostMessageChannel()Lo/LoanStatusResponse$CaptchaInput;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    iget-boolean v0, p0, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsService:Z

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->newSession:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final asBinder()Z
    .locals 1

    iget-boolean v0, p0, Lo/SubmitScoreRequestJsonAdapter;->requestPostMessageChannel:Z

    return v0
.end method

.method public final asInterface()Lo/getConfig;
    .locals 1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/getConfig;

    return-object v0
.end method

.method public final extraCallback()Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->onNavigationEvent:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final getInterfaceDescriptor()Lo/getTotalAmountDue;
    .locals 5

    iget-boolean v0, p0, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback$Stub:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->asInterface:Lo/getTotalAmountDue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->asInterface:Lo/getTotalAmountDue;

    return-object v0

    :cond_1
    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->onRelationshipValidationResult:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x7d0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iput-object v1, p0, Lo/SubmitScoreRequestJsonAdapter;->onRelationshipValidationResult:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->onRelationshipValidationResult:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :catch_1
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->asInterface:Lo/getTotalAmountDue;

    return-object v0
.end method

.method public final newSession()Lo/LoanStatusResponse$CaptchaInput;
    .locals 1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->getInterfaceDescriptor:Lo/LoanStatusResponse$CaptchaInput;

    return-object v0
.end method

.method final onMessageChannelReady(IZ)V
    .locals 2

    iget-boolean v0, p0, Lo/SubmitScoreRequestJsonAdapter;->warmup:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/ScoreStreamItem;

    invoke-direct {v1, p0, p1, p2}, Lo/ScoreStreamItem;-><init>(Lo/SubmitScoreRequestJsonAdapter;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_1

    iput-object p2, p0, Lo/SubmitScoreRequestJsonAdapter;->newSession:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    iget-boolean v0, p0, Lo/SubmitScoreRequestJsonAdapter;->extraCommand:Z

    return v0
.end method

.method public final varargs onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->postMessage:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->postMessage:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lo/ClaimedRewardDetailsResponse;

    invoke-direct {v2, p0, p1, p2, p3}, Lo/ClaimedRewardDetailsResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent()Lo/DeductLifeRequestJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->extraCallback:Lo/DeductLifeRequestJsonAdapter;

    return-object v0
.end method

.method public final onPostMessage()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->postMessage:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ClaimedRewardDetailsResponse;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lo/ClaimedRewardDetailsResponse;->onMessageChannelReady()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public final onRelationshipValidationResult()[B
    .locals 1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->asBinder:[B

    return-object v0
.end method

.method public final onTransact()Z
    .locals 1

    iget-boolean v0, p0, Lo/SubmitScoreRequestJsonAdapter;->warmup:Z

    return v0
.end method

.method public final warmup()I
    .locals 1

    iget-object v0, p0, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/getConfig;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getConfig;->onNavigationEvent()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    return v0
.end method
