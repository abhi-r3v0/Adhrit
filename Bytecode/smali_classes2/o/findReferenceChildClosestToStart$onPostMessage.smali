.class public final Lo/findReferenceChildClosestToStart$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toGraph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findReferenceChildClosestToStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionAdapter$Companion;",
        "",
        "()V",
        "COLLECTION_HEADER_LIST_ITEM",
        "",
        "COLLECTION_LIST_ITEM",
        "MINI_REWARD_ITEM_TYPE",
        "PLACEHOLDER_MINI_REWARD_LIST_ITEM",
        "VIEW_ALL_ITEM_TYPE",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/addItemDecoration$onPostMessage;


# instance fields
.field public final ICustomTabsCallback:Lo/lambda$of$1;

.field private final asInterface:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/setExecutor;

.field public final onNavigationEvent:Landroid/os/Handler;

.field public final onPostMessage:Landroid/content/Context;

.field private final onTransact:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "FakeAssetPackService"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lo/setExecutor;Landroid/content/Context;Lo/lambda$of$1;Lo/setBreadcrumbEventReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lo/setExecutor;",
            "Landroid/content/Context;",
            "Lo/lambda$of$1;",
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/findReferenceChildClosestToStart$onPostMessage;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/findReferenceChildClosestToStart$onPostMessage;->asInterface:Ljava/lang/String;

    iput-object p2, p0, Lo/findReferenceChildClosestToStart$onPostMessage;->onMessageChannelReady:Lo/setExecutor;

    iput-object p3, p0, Lo/findReferenceChildClosestToStart$onPostMessage;->onPostMessage:Landroid/content/Context;

    iput-object p4, p0, Lo/findReferenceChildClosestToStart$onPostMessage;->ICustomTabsCallback:Lo/lambda$of$1;

    iput-object p5, p0, Lo/findReferenceChildClosestToStart$onPostMessage;->onTransact:Lo/setBreadcrumbEventReceiver;

    return-void
.end method

.method public static ICustomTabsCallback(IJ)J
    .locals 0

    return-wide p1
.end method

.method public static onPostMessage(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/play/core/common/LocalTestingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/io/File;

    aput-object p0, v2, v0

    .line 14000
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lo/extraCallback;->onMessageChannelReady(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    new-instance v3, Lcom/google/android/play/core/common/LocalTestingException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Could not digest file: %s."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/android/play/core/common/LocalTestingException;

    const-string v1, "SHA256 algorithm not supported."

    invoke-direct {v0, v1, p0}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback(ILjava/lang/String;Ljava/lang/String;I)Lo/getMinidumpFile;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lo/getMinidumpFile<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "getChunkFileDescriptor failed"

    .line 7000
    sget-object v1, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 v4, 0x2

    aput-object p3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v4, 0x3

    aput-object p4, v2, v4

    const-string p4, "getChunkFileDescriptor(session=%d, %s, %s, %d)"

    invoke-virtual {v1, p4, v2}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p4, Lo/doOnboarding;

    invoke-direct {p4}, Lo/doOnboarding;-><init>()V

    :try_start_0
    invoke-virtual {p0, p2}, Lo/findReferenceChildClosestToStart$onPostMessage;->onPostMessage(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p2, v2

    invoke-static {v4}, Lo/isDirectInjection;->ICustomTabsCallback(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 p2, 0x10000000

    invoke-static {v4, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 8000
    iget-object p3, p4, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {p3, p2}, Lo/Onboarding;->extraCallback(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7000
    :cond_1
    new-instance p2, Lcom/google/android/play/core/common/LocalTestingException;

    new-array v1, p1, [Ljava/lang/Object;

    aput-object p3, v1, v3

    const-string p3, "Local testing slice for \'%s\' not found."

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/play/core/common/LocalTestingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    sget-object p3, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    invoke-virtual {p3, v0, p1}, Lo/addItemDecoration$onPostMessage;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11000
    iget-object p1, p4, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {p1, p2}, Lo/Onboarding;->onMessageChannelReady(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception p2

    .line 7000
    sget-object p3, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    invoke-virtual {p3, v0, p1}, Lo/addItemDecoration$onPostMessage;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/play/core/common/LocalTestingException;

    const-string p3, "Asset Slice file not found."

    invoke-direct {p1, p3, p2}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10000
    iget-object p2, p4, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {p2, p1}, Lo/Onboarding;->onMessageChannelReady(Ljava/lang/Exception;)V

    .line 9000
    :goto_1
    iget-object p1, p4, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    return-object p1
.end method

.method public final ICustomTabsCallback(ILjava/lang/String;)V
    .locals 3

    .line 5000
    sget-object v0, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyModuleCompleted"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lo/findReferenceChildClosestToStart$onPostMessage;->onTransact:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v0}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lo/scrollBy$onPostMessage;

    invoke-direct {v1, p0, p1, p2}, Lo/scrollBy$onPostMessage;-><init>(Lo/findReferenceChildClosestToStart$onPostMessage;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Ljava/util/Map;)Lo/getMinidumpFile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/getMinidumpFile<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 3000
    sget-object p1, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "syncPacks()"

    invoke-virtual {p1, v1, v0}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lo/extraCallback;->extraCallback(Ljava/lang/Object;)Lo/getMinidumpFile;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback()V
    .locals 3

    .line 12000
    sget-object v0, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "keepAlive"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2000
    sget-object v0, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "cancelDownload(%s)"

    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 4000
    sget-object p1, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "notifyChunkTransferred"

    invoke-virtual {p1, p3, p2}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 2

    .line 6000
    sget-object p1, Lo/findReferenceChildClosestToStart$onPostMessage;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "notifySessionFailed"

    invoke-virtual {p1, v1, v0}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPostMessage(Ljava/lang/String;)[Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/play/core/common/LocalTestingException;
        }
    .end annotation

    .line 13000
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/findReferenceChildClosestToStart$onPostMessage;->asInterface:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    new-instance v1, Lo/shouldMeasureTwice$onPostMessage;

    invoke-direct {v1, p1}, Lo/shouldMeasureTwice$onPostMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5}, Lo/isDirectInjection;->ICustomTabsCallback(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/play/core/common/LocalTestingException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "No master slice available for pack \'%s\'."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/play/core/common/LocalTestingException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "No APKs available for pack \'%s\'."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/google/android/play/core/common/LocalTestingException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Failed fetching APKs for pack \'%s\'."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Lcom/google/android/play/core/common/LocalTestingException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Local testing directory \'%s\' not found."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
