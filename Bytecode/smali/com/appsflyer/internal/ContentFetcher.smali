.class public abstract Lcom/appsflyer/internal/ContentFetcher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final authority:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field private final ı:J

.field private ǃ:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final ι:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/appsflyer/internal/ContentFetcher$2;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/ContentFetcher$2;-><init>(Lcom/appsflyer/internal/ContentFetcher;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ContentFetcher;->ǃ:Ljava/util/concurrent/FutureTask;

    .line 32
    iput-object p1, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/appsflyer/internal/ContentFetcher;->authority:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/appsflyer/internal/ContentFetcher;->ι:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lcom/appsflyer/internal/ContentFetcher;->ı:J

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/ContentFetcher;->ǃ:Ljava/util/concurrent/FutureTask;

    iget-wide v1, p0, Lcom/appsflyer/internal/ContentFetcher;->ı:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 47
    :goto_0
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/ContentFetcher;->onError(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onError(Ljava/lang/Exception;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected abstract query()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public start()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/appsflyer/internal/ContentFetcher;->ǃ:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public valid()Z
    .locals 4

    const/4 v0, 0x0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/ContentFetcher;->authority:Ljava/lang/String;

    const/16 v3, 0x80

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/appsflyer/AndroidUtils;->signature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/ContentFetcher;->ι:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 62
    :goto_0
    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/ContentFetcher;->onError(Ljava/lang/Exception;)V

    return v0
.end method
