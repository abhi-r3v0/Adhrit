.class public Lo/ClaimedRewardDetailsResponse;
.super Ljava/lang/Object;


# static fields
.field private static final onMessageChannelReady:Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

.field private volatile ICustomTabsCallback$Stub:Ljava/lang/reflect/Method;

.field private asInterface:Ljava/util/concurrent/CountDownLatch;

.field private final extraCallback:Ljava/lang/String;

.field private final onNavigationEvent:I

.field private final onPostMessage:Ljava/lang/String;

.field private final onTransact:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lo/ClaimedRewardDetailsResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ClaimedRewardDetailsResponse;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SubmitScoreRequestJsonAdapter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lo/ClaimedRewardDetailsResponse;->onNavigationEvent:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/ClaimedRewardDetailsResponse;->asInterface:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    iput-object p2, p0, Lo/ClaimedRewardDetailsResponse;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/ClaimedRewardDetailsResponse;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/ClaimedRewardDetailsResponse;->onTransact:[Ljava/lang/Class;

    invoke-virtual {p1}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lo/ClaimedResponse;

    invoke-direct {p2, p0}, Lo/ClaimedResponse;-><init>(Lo/ClaimedRewardDetailsResponse;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final onMessageChannelReady([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcl;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v0}, Lo/SubmitScoreRequestJsonAdapter;->onNavigationEvent()Lo/DeductLifeRequestJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/DeductLifeRequestJsonAdapter;->ICustomTabsCallback([BLjava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method private final onNavigationEvent()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v0}, Lo/SubmitScoreRequestJsonAdapter;->extraCallback()Ldalvik/system/DexClassLoader;

    move-result-object v0

    iget-object v1, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v1}, Lo/SubmitScoreRequestJsonAdapter;->onRelationshipValidationResult()[B

    move-result-object v1

    iget-object v2, p0, Lo/ClaimedRewardDetailsResponse;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lo/ClaimedRewardDetailsResponse;->onMessageChannelReady([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :catch_0
    :goto_0
    iget-object v0, p0, Lo/ClaimedRewardDetailsResponse;->asInterface:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v1}, Lo/SubmitScoreRequestJsonAdapter;->onRelationshipValidationResult()[B

    move-result-object v1

    iget-object v2, p0, Lo/ClaimedRewardDetailsResponse;->extraCallback:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lo/ClaimedRewardDetailsResponse;->onMessageChannelReady([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/ClaimedRewardDetailsResponse;->onTransact:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/ClaimedRewardDetailsResponse;->asInterface:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method static synthetic onPostMessage(Lo/ClaimedRewardDetailsResponse;)V
    .locals 0

    invoke-direct {p0}, Lo/ClaimedRewardDetailsResponse;->onNavigationEvent()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/lang/reflect/Method;
    .locals 5

    iget-object v0, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/reflect/Method;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo/ClaimedRewardDetailsResponse;->asInterface:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lo/ClaimedRewardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
