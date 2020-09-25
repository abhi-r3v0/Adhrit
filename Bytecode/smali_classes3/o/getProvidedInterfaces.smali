.class public final Lo/getProvidedInterfaces;
.super Ljava/lang/Object;


# instance fields
.field private final onMessageChannelReady:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/setBreadcrumbEventReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getProvidedInterfaces;->onMessageChannelReady:Lo/setBreadcrumbEventReceiver;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 8

    iget-object v0, p0, Lo/getProvidedInterfaces;->onMessageChannelReady:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v0}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/toGraph;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/toGraph;->ICustomTabsCallback(ILjava/lang/String;Ljava/lang/String;I)Lo/getMinidumpFile;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_0
    const-string v6, "Task must not be null"

    if-eqz v0, :cond_4

    .line 1000
    invoke-virtual {v0}, Lo/getMinidumpFile;->onPostMessage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3000
    invoke-virtual {v0}, Lo/getMinidumpFile;->onNavigationEvent()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lo/getMinidumpFile;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Lo/getMinidumpFile;->ICustomTabsCallback()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1000
    :cond_1
    new-instance v6, Lo/getValueType;

    invoke-direct {v6}, Lo/getValueType;-><init>()V

    .line 4000
    sget-object v7, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onRelationshipValidationResult:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v7, v6}, Lo/getMinidumpFile;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getAppFile;)Lo/getMinidumpFile;

    sget-object v7, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onRelationshipValidationResult:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v7, v6}, Lo/getMinidumpFile;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getLogger;)Lo/getMinidumpFile;

    .line 5000
    iget-object v6, v6, Lo/getValueType;->onMessageChannelReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 6000
    invoke-virtual {v0}, Lo/getMinidumpFile;->onNavigationEvent()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lo/getMinidumpFile;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v6, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v6

    :cond_2
    new-instance v0, Lo/getFactory;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p2, v6, v3

    aput-object p3, v6, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Lo/getMinidumpFile;->ICustomTabsCallback()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 2000
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 6000
    new-instance p3, Lo/getFactory;

    const-string p4, "Extractor was interrupted while waiting for chunk file."

    invoke-direct {p3, p4, p2, p1}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p3

    :catch_1
    move-exception v0

    new-instance v6, Lo/getFactory;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p2, v5, v3

    aput-object p3, v5, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    const-string p2, "Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s"

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v6, p2, v0, p1}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v6
.end method
