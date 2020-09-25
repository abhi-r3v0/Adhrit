.class public final Lo/onTargetFound$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onTargetFound;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/RewardWishlistFragment$Companion;",
        "",
        "()V",
        "DISABLED_SWITCH_FRAME",
        "",
        "ENABLED_SWITCH_FRAME",
        "TAG",
        "",
        "newInstance",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/RewardWishlistFragment;",
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
.field private static final onNavigationEvent:Lo/addItemDecoration$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/getCustomAmount$onMessageChannelReady;

.field private final onPostMessage:Lo/onVerificationFailed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "PatchSliceTaskHandler"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/onTargetFound$onPostMessage;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;Lo/setBreadcrumbEventReceiver;Lo/getCustomAmount$onMessageChannelReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onVerificationFailed;",
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;",
            "Lo/getCustomAmount$onMessageChannelReady;",
            ")V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onTargetFound$onPostMessage;->onPostMessage:Lo/onVerificationFailed;

    iput-object p2, p0, Lo/onTargetFound$onPostMessage;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    iput-object p3, p0, Lo/onTargetFound$onPostMessage;->extraCallback:Lo/getCustomAmount$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/factory;)V
    .locals 14

    .line 2000
    iget-object v0, p0, Lo/onTargetFound$onPostMessage;->onPostMessage:Lo/onVerificationFailed;

    iget-object v1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v2, p1, Lo/factory;->onMessageChannelReady:I

    iget-wide v3, p1, Lo/factory;->onPostMessage:J

    .line 3000
    new-instance v5, Ljava/io/File;

    .line 4000
    new-instance v6, Ljava/io/File;

    .line 5000
    new-instance v7, Ljava/io/File;

    .line 6000
    new-instance v8, Ljava/io/File;

    iget-object v0, v0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v9, "assetpacks"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5000
    invoke-direct {v7, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4000
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3000
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lo/onTargetFound$onPostMessage;->onPostMessage:Lo/onVerificationFailed;

    iget-object v1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v2, p1, Lo/factory;->onMessageChannelReady:I

    iget-wide v3, p1, Lo/factory;->onPostMessage:J

    iget-object v6, p1, Lo/factory;->onTransact:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    .line 7000
    new-instance v8, Ljava/io/File;

    .line 8000
    new-instance v10, Ljava/io/File;

    .line 9000
    new-instance v11, Ljava/io/File;

    .line 10000
    new-instance v12, Ljava/io/File;

    .line 11000
    new-instance v13, Ljava/io/File;

    iget-object v0, v0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v13, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10000
    invoke-direct {v12, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9000
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8000
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "_metadata"

    .line 7000
    invoke-direct {v8, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p1, Lo/factory;->ICustomTabsCallback$Stub:Ljava/io/InputStream;

    iget v4, p1, Lo/factory;->asInterface:I

    if-eq v4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    const/16 v6, 0x2000

    invoke-direct {v4, v3, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    :goto_0
    :try_start_1
    new-instance v4, Lo/onVerificationCompleted;

    invoke-direct {v4, v5, v7}, Lo/onVerificationCompleted;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v5, p0, Lo/onTargetFound$onPostMessage;->extraCallback:Lo/getCustomAmount$onMessageChannelReady;

    invoke-virtual {v5}, Lo/getCustomAmount$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lo/onTargetFound$onPostMessage;->onPostMessage:Lo/onVerificationFailed;

    iget-object v7, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v8, p1, Lo/factory;->onNavigationEvent:I

    iget-wide v9, p1, Lo/factory;->asBinder:J

    iget-object v11, p1, Lo/factory;->onTransact:Ljava/lang/String;

    invoke-virtual/range {v6 .. v11}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v13, Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    iget-object v7, p0, Lo/onTargetFound$onPostMessage;->onPostMessage:Lo/onVerificationFailed;

    iget-object v8, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v9, p1, Lo/factory;->onNavigationEvent:I

    iget-wide v10, p1, Lo/factory;->asBinder:J

    iget-object v12, p1, Lo/factory;->onTransact:Ljava/lang/String;

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;-><init>(Lo/onVerificationFailed;Ljava/lang/String;IJLjava/lang/String;)V

    new-instance v6, Lo/isAlwaysEager;

    invoke-direct {v6, v5, v13}, Lo/isAlwaysEager;-><init>(Ljava/io/File;Lo/calculateSpeedPerPixel$ICustomTabsCallback;)V

    iget-wide v7, p1, Lo/factory;->onRelationshipValidationResult:J

    invoke-static {v4, v3, v6, v7, v8}, Lo/extraCallback;->extraCallback(Lo/getComponentsInCycle;Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    invoke-virtual {v13, v2}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent(I)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lo/onTargetFound$onPostMessage;->onPostMessage:Lo/onVerificationFailed;

    iget-object v6, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v7, p1, Lo/factory;->onNavigationEvent:I

    iget-wide v8, p1, Lo/factory;->asBinder:J

    iget-object v10, p1, Lo/factory;->onTransact:Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    .line 12000
    new-instance v12, Ljava/io/File;

    invoke-virtual {v5, v6, v7, v8, v9}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v5

    invoke-direct {v12, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "slice.zip.tmp"

    .line 2000
    invoke-direct {v11, v12, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-wide v6, p1, Lo/factory;->onRelationshipValidationResult:J

    invoke-static {v4, v3, v5, v6, v7}, Lo/extraCallback;->extraCallback(Lo/getComponentsInCycle;Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    iget-object v4, p0, Lo/onTargetFound$onPostMessage;->onPostMessage:Lo/onVerificationFailed;

    iget-object v5, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v6, p1, Lo/factory;->onNavigationEvent:I

    iget-wide v7, p1, Lo/factory;->asBinder:J

    iget-object v9, p1, Lo/factory;->onTransact:Ljava/lang/String;

    .line 13000
    new-instance v10, Ljava/io/File;

    .line 14000
    new-instance v12, Ljava/io/File;

    invoke-virtual {v4, v5, v6, v7, v8}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v4

    invoke-direct {v12, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "slice.zip"

    .line 13000
    invoke-direct {v10, v12, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v11, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_5

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v3, p0, Lo/onTargetFound$onPostMessage;->extraCallback:Lo/getCustomAmount$onMessageChannelReady;

    invoke-virtual {v3}, Lo/getCustomAmount$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lo/onTargetFound$onPostMessage;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p1, Lo/factory;->onTransact:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Patching and extraction finished for slice %s of pack %s."

    invoke-virtual {v3, v5, v4}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v3, Lo/onTargetFound$onPostMessage;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p1, Lo/factory;->onTransact:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Patching finished for slice %s of pack %s."

    invoke-virtual {v3, v5, v4}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v3, p0, Lo/onTargetFound$onPostMessage;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v3}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/toGraph;

    iget v4, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    iget-object v5, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v6, p1, Lo/factory;->onTransact:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v2}, Lo/toGraph;->onNavigationEvent(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_3
    iget-object v3, p1, Lo/factory;->ICustomTabsCallback$Stub:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    sget-object v3, Lo/onTargetFound$onPostMessage;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p1, Lo/factory;->onTransact:Ljava/lang/String;

    aput-object v4, v0, v2

    iget-object p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Could not close file for slice %s of pack %s."

    invoke-virtual {v3, p1, v0}, Lo/addItemDecoration$onPostMessage;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    :try_start_4
    new-instance v4, Lo/getFactory;

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p1, Lo/factory;->onTransact:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v6, v5, v1

    const-string v6, "Error moving patch for slice %s of pack %s."

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v4, v5, v6}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    .line 15000
    :try_start_6
    sget-object v5, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v5, v4, v3}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 2000
    :goto_3
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v3

    sget-object v4, Lo/onTargetFound$onPostMessage;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "IOException during patching %s."

    invoke-virtual {v4, v6, v5}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lo/getFactory;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p1, Lo/factory;->onTransact:Ljava/lang/String;

    aput-object v5, v0, v2

    iget-object v2, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Error patching slice %s of pack %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v4, v0, v3, p1}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4
.end method
