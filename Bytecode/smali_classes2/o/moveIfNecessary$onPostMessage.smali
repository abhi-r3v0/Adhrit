.class public final Lo/moveIfNecessary$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/moveIfNecessary;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/LendingFailureDialog$Companion;",
        "",
        "()V",
        "DIALOG_DATA",
        "",
        "FAILURE_DIALOG",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Landroid/os/Bundle;

.field private final onPostMessage:Lo/setExecutor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setExecutor;Landroid/os/Bundle;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/moveIfNecessary$onPostMessage;->onPostMessage:Lo/setExecutor;

    iput-object p2, p0, Lo/moveIfNecessary$onPostMessage;->onNavigationEvent:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "assetpacks"

    .line 2000
    iget-object v0, v1, Lo/moveIfNecessary$onPostMessage;->onPostMessage:Lo/setExecutor;

    iget-object v3, v1, Lo/moveIfNecessary$onPostMessage;->onNavigationEvent:Landroid/os/Bundle;

    .line 3000
    iget-object v4, v0, Lo/setExecutor;->onMessageChannelReady:Lo/resolveIsInfinite$onPostMessage;

    .line 4000
    new-instance v5, Lo/checkSelectForSwipe$onMessageChannelReady;

    invoke-direct {v5, v4, v3}, Lo/checkSelectForSwipe$onMessageChannelReady;-><init>(Lo/resolveIsInfinite$onPostMessage;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(Lo/isValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3000
    iget-object v3, v0, Lo/setExecutor;->onPostMessage:Lo/findChildView$onMessageChannelReady;

    .line 5000
    sget-object v0, Lo/findChildView$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Run extractor loop"

    invoke-virtual {v0, v6, v5}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v3, Lo/findChildView$onMessageChannelReady;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_0
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v3, Lo/findChildView$onMessageChannelReady;->onTransact:Lo/recycleViewsFromStart$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback()Lo/getInitialPrefetchItemCount$extraCallback;

    move-result-object v6
    :try_end_0
    .catch Lo/getFactory; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v7, Lo/findChildView$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "Error while getting next extraction task: %s"

    invoke-virtual {v7, v9, v8}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, v0, Lo/getFactory;->onNavigationEvent:I

    if-ltz v7, :cond_0

    iget-object v7, v3, Lo/findChildView$onMessageChannelReady;->onRelationshipValidationResult:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v7}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/toGraph;

    iget v8, v0, Lo/getFactory;->onNavigationEvent:I

    invoke-interface {v7, v8}, Lo/toGraph;->onPostMessage(I)V

    iget v7, v0, Lo/getFactory;->onNavigationEvent:I

    invoke-virtual {v3, v7, v0}, Lo/findChildView$onMessageChannelReady;->extraCallback(ILjava/lang/Exception;)V

    :cond_0
    :goto_1
    if-eqz v6, :cond_9

    instance-of v0, v6, Lo/setOf;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, v3, Lo/findChildView$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker$extraCallback;

    move-object v7, v6

    check-cast v7, Lo/setOf;

    invoke-virtual {v0, v7}, Lo/releaseVelocityTracker$extraCallback;->extraCallback(Lo/setOf;)V

    goto :goto_0

    :cond_1
    instance-of v0, v6, Lo/setInstantiation;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lo/findChildView$onMessageChannelReady;->onMessageChannelReady:Lo/calculateDtToFit$ICustomTabsCallback;

    move-object v7, v6

    check-cast v7, Lo/setInstantiation;

    invoke-virtual {v0, v7}, Lo/calculateDtToFit$ICustomTabsCallback;->onNavigationEvent(Lo/setInstantiation;)V

    goto :goto_0

    :cond_2
    instance-of v0, v6, Lo/lambda$of$0;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lo/findChildView$onMessageChannelReady;->onNavigationEvent:Lo/findFirstReferenceChild$extraCallback;

    move-object v7, v6

    check-cast v7, Lo/lambda$of$0;

    invoke-virtual {v0, v7}, Lo/findFirstReferenceChild$extraCallback;->ICustomTabsCallback(Lo/lambda$of$0;)V

    goto :goto_0

    :cond_3
    instance-of v0, v6, Lo/intoSet;

    if-eqz v0, :cond_7

    iget-object v0, v3, Lo/findChildView$onMessageChannelReady;->extraCallback:Lo/hasValidAnchor$onNavigationEvent;

    move-object v7, v6

    check-cast v7, Lo/intoSet;

    .line 6000
    iget-object v8, v0, Lo/hasValidAnchor$onNavigationEvent;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v9, v7, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v10, v7, Lo/intoSet;->onPostMessage:I

    iget-wide v11, v7, Lo/intoSet;->onNavigationEvent:J

    .line 7000
    new-instance v13, Ljava/io/File;

    invoke-virtual {v8, v9, v10, v11, v12}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v8

    const-string v9, "_packs"

    invoke-direct {v13, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6000
    iget-object v8, v0, Lo/hasValidAnchor$onNavigationEvent;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v9, v7, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v10, v7, Lo/intoSet;->onPostMessage:I

    iget-wide v11, v7, Lo/intoSet;->onNavigationEvent:J

    invoke-virtual {v8, v9, v10, v11, v12}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lo/hasValidAnchor$onNavigationEvent;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v10, v7, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v11, v7, Lo/intoSet;->onPostMessage:I

    iget-wide v14, v7, Lo/intoSet;->onNavigationEvent:J

    .line 8000
    new-instance v12, Ljava/io/File;

    .line 9000
    new-instance v4, Ljava/io/File;

    .line 10000
    new-instance v5, Ljava/io/File;

    .line 11000
    new-instance v1, Ljava/io/File;

    iget-object v9, v9, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v1, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10000
    invoke-direct {v5, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9000
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8000
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6000
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v13, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lo/hasValidAnchor$onNavigationEvent;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v4, v7, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v5, v7, Lo/intoSet;->onPostMessage:I

    iget-wide v9, v7, Lo/intoSet;->onNavigationEvent:J

    new-instance v11, Ljava/io/File;

    .line 12000
    new-instance v12, Ljava/io/File;

    .line 13000
    new-instance v13, Ljava/io/File;

    .line 14000
    new-instance v14, Ljava/io/File;

    .line 15000
    new-instance v15, Ljava/io/File;

    iget-object v1, v1, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v15, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14000
    invoke-direct {v14, v15, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13000
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12000
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "merge.tmp"

    .line 6000
    invoke-direct {v11, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    iget-object v1, v0, Lo/hasValidAnchor$onNavigationEvent;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v4, v7, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v5, v7, Lo/intoSet;->onPostMessage:I

    iget-wide v9, v7, Lo/intoSet;->onNavigationEvent:J

    .line 16000
    new-instance v11, Ljava/io/File;

    .line 17000
    new-instance v12, Ljava/io/File;

    .line 18000
    new-instance v13, Ljava/io/File;

    .line 19000
    new-instance v14, Ljava/io/File;

    .line 20000
    new-instance v15, Ljava/io/File;

    iget-object v1, v1, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v15, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19000
    invoke-direct {v14, v15, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18000
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17000
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "_metadata"

    .line 16000
    invoke-direct {v11, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6000
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v8, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lo/hasValidAnchor$onNavigationEvent;->extraCallback:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v1}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v4, v0, Lo/hasValidAnchor$onNavigationEvent;->onNavigationEvent:Lo/onVerificationFailed;

    .line 21000
    new-instance v5, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$onMessageChannelReady;

    invoke-direct {v5, v4}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$onMessageChannelReady;-><init>(Lo/onVerificationFailed;)V

    .line 6000
    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lo/hasValidAnchor$onNavigationEvent;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    iget-object v10, v7, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v11, v7, Lo/intoSet;->onPostMessage:I

    iget-wide v12, v7, Lo/intoSet;->onNavigationEvent:J

    .line 22000
    new-instance v4, Lo/addChildDrawingOrderCallback$onMessageChannelReady;

    move-object v8, v4

    move-object v9, v1

    invoke-direct/range {v8 .. v13}, Lo/addChildDrawingOrderCallback$onMessageChannelReady;-><init>(Lo/resolveIsInfinite$onPostMessage;Ljava/lang/String;IJ)V

    invoke-virtual {v1, v4}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(Lo/isValue;)Ljava/lang/Object;

    .line 6000
    iget-object v1, v0, Lo/hasValidAnchor$onNavigationEvent;->onPostMessage:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    iget-object v4, v7, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->onPostMessage(Ljava/lang/String;)V

    iget-object v0, v0, Lo/hasValidAnchor$onNavigationEvent;->onMessageChannelReady:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v0}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/toGraph;

    iget v1, v7, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    iget-object v4, v7, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lo/toGraph;->ICustomTabsCallback(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lo/getFactory;

    const-string v1, "Cannot move metadata files to final location."

    iget v4, v7, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v1, v4}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    new-instance v0, Lo/getFactory;

    const-string v1, "Cannot move merged pack files to final location."

    iget v4, v7, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v1, v4}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    new-instance v0, Lo/getFactory;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, v7, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "Cannot find pack files to move for pack %s."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v4, v7, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v1, v4}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 5000
    :cond_7
    instance-of v0, v6, Lo/factory;

    if-eqz v0, :cond_8

    iget-object v0, v3, Lo/findChildView$onMessageChannelReady;->asBinder:Lo/onTargetFound$onPostMessage;

    move-object v1, v6

    check-cast v1, Lo/factory;

    invoke-virtual {v0, v1}, Lo/onTargetFound$onPostMessage;->onMessageChannelReady(Lo/factory;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lo/findChildView$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "Unknown task type: %s"

    invoke-virtual {v0, v1, v4}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lo/findChildView$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const-string v7, "Error during extraction task: %s"

    invoke-virtual {v1, v7, v5}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v3, Lo/findChildView$onMessageChannelReady;->onRelationshipValidationResult:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v1}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/toGraph;

    iget v5, v6, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-interface {v1, v5}, Lo/toGraph;->onPostMessage(I)V

    iget v1, v6, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-virtual {v3, v1, v0}, Lo/findChildView$onMessageChannelReady;->extraCallback(ILjava/lang/Exception;)V

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_9
    iget-object v0, v3, Lo/findChildView$onMessageChannelReady;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_a
    const/4 v1, 0x0

    sget-object v0, Lo/findChildView$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "runLoop already looping; return"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return-void
.end method
