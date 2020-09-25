.class final Lo/ensureClassLoader$4;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureClassLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/ensureClassLoader;


# direct methods
.method constructor <init>(Lo/ensureClassLoader;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lo/ensureClassLoader$4;->onMessageChannelReady:Lo/ensureClassLoader;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 3

    const-string v0, "An error occurred while executing doInBackground()"

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lo/ensureClassLoader$4;->onMessageChannelReady:Lo/ensureClassLoader;

    invoke-virtual {v2, v1}, Lo/ensureClassLoader;->ICustomTabsCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 168
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 166
    :catch_0
    iget-object v0, p0, Lo/ensureClassLoader$4;->onMessageChannelReady:Lo/ensureClassLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ensureClassLoader;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v1

    .line 163
    new-instance v2, Ljava/lang/RuntimeException;

    .line 164
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    const-string v1, "AsyncTask"

    .line 161
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
