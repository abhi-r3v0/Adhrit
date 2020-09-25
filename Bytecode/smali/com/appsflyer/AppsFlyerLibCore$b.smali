.class final Lcom/appsflyer/AppsFlyerLibCore$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final ɩ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ι:Ljava/lang/String; = "https://%sgcdsdk.%s/install_data/v4.0/"


# instance fields
.field private final ı:Ljava/lang/String;

.field private Ɩ:Lcom/appsflyer/AppsFlyerLibCore;

.field private final ǃ:Landroid/app/Application;

.field final Ι:Ljava/util/concurrent/ScheduledExecutorService;

.field private final І:I

.field private final і:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "googleplay"

    const-string v1, "playstore"

    const-string v2, "googleplaystore"

    .line 3394
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLibCore$b;->ɩ:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore$b;)V
    .locals 2

    .line 3414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3400
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AFExecutor;->ι()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->Ι:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3401
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->і:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3415
    iget-object v0, p1, Lcom/appsflyer/AppsFlyerLibCore$b;->Ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->Ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    .line 3416
    iget-object v0, p1, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    .line 3417
    iget-object v0, p1, Lcom/appsflyer/AppsFlyerLibCore$b;->ı:Ljava/lang/String;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ı:Ljava/lang/String;

    .line 3418
    iget p1, p1, Lcom/appsflyer/AppsFlyerLibCore$b;->І:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->І:I

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .line 3407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3400
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AFExecutor;->ι()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->Ι:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3401
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->і:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3408
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->Ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    .line 3409
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    .line 3410
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ı:Ljava/lang/String;

    .line 3411
    iput v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->І:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/app/Application;Ljava/lang/String;B)V
    .locals 0

    .line 3390
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLibCore$b;-><init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method private Ι(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "Calling onConversionFailure with:\n"

    const/16 v1, 0x1f4

    if-gt v1, p2, :cond_1

    const/16 v1, 0x258

    if-ge p2, v1, :cond_1

    .line 3428
    iget p2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->І:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 3429
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 3430
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    return-void

    .line 3432
    :cond_0
    new-instance p1, Lcom/appsflyer/AppsFlyerLibCore$b;

    invoke-direct {p1, p0}, Lcom/appsflyer/AppsFlyerLibCore$b;-><init>(Lcom/appsflyer/AppsFlyerLibCore$b;)V

    .line 4581
    iget-object p2, p1, Lcom/appsflyer/AppsFlyerLibCore$b;->Ι:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p1, v0}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V

    return-void

    .line 3435
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 3436
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const-string v0, "is_first_launch"

    const-string v1, "af_siteid"

    .line 3441
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ı:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 3446
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->Ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->isTrackingStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 3450
    :cond_1
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->і:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3453
    :try_start_0
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_2

    .line 3572
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->і:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    .line 3457
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3458
    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    iget-object v7, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->Ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    .line 3459
    invoke-virtual {v7, v8}, Lcom/appsflyer/AppsFlyerLibCore;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 3458
    invoke-static {v6, v7}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, ""

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 3462
    :try_start_2
    sget-object v9, Lcom/appsflyer/AppsFlyerLibCore$b;->ɩ:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "-"

    .line 3463
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v9, "AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v6, v10, v3

    .line 3465
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_4
    move-object v6, v7

    .line 3470
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/appsflyer/AppsFlyerLibCore$b;->ι:Ljava/lang/String;

    invoke-static {v10}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    .line 3471
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?devkey="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ı:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&device_id="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    invoke-direct {v6, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3474
    invoke-static {v6}, Lcom/appsflyer/internal/ae;->Ι(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5071
    sget-object v9, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez v9, :cond_5

    .line 5072
    new-instance v9, Lcom/appsflyer/internal/ai;

    invoke-direct {v9}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object v9, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 5074
    :cond_5
    sget-object v9, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    const-string/jumbo v10, "server_request"

    .line 5185
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v10, v6, v7}, Lcom/appsflyer/internal/ai;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "Calling server for attribution url: "

    .line 3477
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/internal/ah;->Ι(Ljava/lang/String;)V

    .line 3479
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-static {v7}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URLConnection;

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v2, "GET"

    .line 3481
    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 3482
    invoke-virtual {v7, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v2, "Connection"

    const-string v9, "close"

    .line 3483
    invoke-virtual {v7, v2, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 3486
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 3487
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->Ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v9, v7}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v9

    .line 6071
    sget-object v10, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez v10, :cond_6

    .line 6072
    new-instance v10, Lcom/appsflyer/internal/ai;

    invoke-direct {v10}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object v10, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 6074
    :cond_6
    sget-object v10, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    const-string/jumbo v11, "server_response"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    .line 6189
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    aput-object v9, v12, v8

    invoke-virtual {v10, v11, v6, v12}, Lcom/appsflyer/internal/ai;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0xc8

    const/16 v11, 0x194

    if-eq v2, v10, :cond_9

    if-ne v2, v11, :cond_7

    goto :goto_1

    .line 3560
    :cond_7
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "Error connection to server: "

    .line 3561
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/appsflyer/AppsFlyerLibCore$b;->Ι(Ljava/lang/String;I)V

    .line 3563
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttributionIdFetcher response code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/ah;->Ι(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3491
    :cond_9
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3493
    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    const-string v10, "appsflyerGetConversionDataTiming"

    sub-long/2addr v12, v4

    invoke-static {v6, v10, v12, v13}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v4, "Attribution data: "

    .line 3496
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/ah;->Ι(Ljava/lang/String;)V

    .line 3498
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    .line 3499
    invoke-static {v9}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "iscache"

    .line 3500
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-ne v2, v11, :cond_a

    const-string v2, "error_reason"

    .line 3503
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "status_code"

    .line 3504
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "af_status"

    const-string v6, "Organic"

    .line 3505
    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "af_message"

    const-string v6, "organic install"

    .line 3506
    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v5, :cond_b

    .line 3510
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3512
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    const-string v6, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v2, v6, v10, v11}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3514
    :cond_b
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "[Invite] Detected App-Invite via channel: "

    const-string v10, "af_channel"

    if-eqz v2, :cond_d

    .line 3515
    :try_start_4
    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v2, "[CrossPromotion] App was installed via %s\'s Cross Promotion"

    new-array v11, v8, [Ljava/lang/Object;

    .line 3522
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v11, v3

    .line 3520
    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 3525
    :cond_d
    :goto_2
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 3530
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3532
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "attributionId"

    if-eqz v1, :cond_f

    .line 3534
    :try_start_5
    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    invoke-static {v6, v2, v1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3536
    :cond_f
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    invoke-static {v1, v2, v9}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iscache="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " caching conversion data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 3541
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 3542
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->і:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-gt v1, v8, :cond_11

    .line 3545
    :try_start_6
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 3546
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Landroid/app/Application;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v5, "sixtyDayConversionData"

    .line 3547
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 3548
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/appsflyer/internal/y; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_10
    move-object v4, v1

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "Exception while trying to fetch attribution data. "

    .line 3551
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6422
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling onConversionDataSuccess with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 6423
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3572
    :cond_11
    :goto_5
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->і:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v7, :cond_13

    .line 3574
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 3567
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3568
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/appsflyer/AppsFlyerLibCore$b;->Ι(Ljava/lang/String;I)V

    .line 3570
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3572
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->і:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v2, :cond_13

    .line 3574
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 3577
    :cond_13
    :goto_7
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->Ι:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void

    :catchall_2
    move-exception v0

    .line 3572
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->і:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v2, :cond_14

    .line 3574
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 3576
    :cond_14
    throw v0

    :cond_15
    :goto_8
    return-void
.end method
