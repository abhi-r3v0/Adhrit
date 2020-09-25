.class public final Lo/recycleViewsFromStart$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/recycleViewsFromStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/cards/ClaimedListingAdapter$Companion;",
        "",
        "()V",
        "LIFESTYLE_CLAIMED",
        "",
        "LIFESTYLE_CLAIMED_SECTION_HEADER",
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
.field private static final onMessageChannelReady:Lo/addItemDecoration$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

.field private final extraCallback:Lo/onVerificationFailed;

.field private final onPostMessage:Lo/getProvidedInterfaces;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "ExtractorTaskFinder"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/recycleViewsFromStart$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/resolveIsInfinite$onPostMessage;Lo/onVerificationFailed;Lo/getProvidedInterfaces;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    iput-object p2, p0, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    iput-object p3, p0, Lo/recycleViewsFromStart$ICustomTabsCallback;->onPostMessage:Lo/getProvidedInterfaces;

    return-void
.end method

.method private ICustomTabsCallback(Lo/computeScrollRange$extraCallback;Lo/updateLayoutState$onPostMessage;)Z
    .locals 6

    .line 32000
    iget-object v0, p0, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    iget-object v1, p1, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v2, v1, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget p1, p1, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v3, v1, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object p2, p2, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 33000
    new-instance v1, Ljava/io/File;

    .line 34000
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0, v2, p1, v3, v4}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    invoke-direct {v5, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "slice.zip"

    .line 33000
    invoke-direct {v1, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32000
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final extraCallback()Lo/getInitialPrefetchItemCount$extraCallback;
    .locals 38

    move-object/from16 v1, p0

    const-string v2, "assetpacks"

    .line 2000
    :try_start_0
    iget-object v0, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 3000
    iget-object v0, v0, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2000
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 4000
    iget-object v0, v0, Lo/resolveIsInfinite$onPostMessage;->extraCallback:Ljava/util/Map;

    .line 2000
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/computeScrollRange$extraCallback;

    iget-object v10, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v10, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    if-eq v10, v7, :cond_2

    if-eq v10, v5, :cond_2

    if-ne v10, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/computeScrollRange$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v11, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    iget-object v12, v10, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v13, v12, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v14, v10, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v4, v12, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    invoke-virtual {v11, v13, v14, v4, v5}, Lo/onVerificationFailed;->extraCallback(Ljava/lang/String;IJ)I

    move-result v4

    iget-object v5, v10, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_4

    :try_start_2
    sget-object v0, Lo/recycleViewsFromStart$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v10, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, v10, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "Found final move task for session %s with pack %s."

    invoke-virtual {v0, v5, v4}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lo/intoSet;

    iget v4, v10, Lo/computeScrollRange$extraCallback;->extraCallback:I

    iget-object v5, v10, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v11, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v10, v10, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v12, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v11

    move/from16 v19, v10

    move-wide/from16 v20, v12

    invoke-direct/range {v16 .. v21}, Lo/intoSet;-><init>(ILjava/lang/String;IJ)V

    goto :goto_3

    :cond_4
    const/4 v5, 0x7

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Lo/getFactory;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, v10, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, v10, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v4, v4, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    aput-object v4, v3, v8

    const-string v4, "Failed to check number of completed merges for session %s, pack %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-direct {v2, v3, v0, v4}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_24

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/computeScrollRange$extraCallback;

    iget-object v5, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    if-eq v5, v7, :cond_8

    const/4 v10, 0x7

    if-eq v5, v10, :cond_8

    if-ne v5, v6, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_6

    iget-object v5, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/updateLayoutState$onPostMessage;

    iget-object v11, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    iget-object v12, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v13, v12, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v14, v4, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v7, v12, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object v12, v10, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    move-object/from16 v16, v11

    move-object/from16 v17, v13

    move/from16 v18, v14

    move-wide/from16 v19, v7

    move-object/from16 v21, v12

    invoke-virtual/range {v16 .. v21}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v0, Lo/recycleViewsFromStart$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array v5, v6, [Ljava/lang/Object;

    iget v7, v4, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    iget-object v7, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v7, v7, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v5, v8

    iget-object v7, v10, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v5, v8

    const-string v7, "Found merge task for session %s with pack %s and slice %s."

    invoke-virtual {v0, v7, v5}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lo/lambda$of$0;

    iget v5, v4, Lo/computeScrollRange$extraCallback;->extraCallback:I

    iget-object v7, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v8, v7, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v4, v4, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v11, v7, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object v7, v10, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v25, v5

    move-object/from16 v26, v8

    move/from16 v27, v4

    move-wide/from16 v28, v11

    move-object/from16 v30, v7

    invoke-direct/range {v24 .. v30}, Lo/lambda$of$0;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_7

    :cond_9
    const/4 v7, 0x2

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_23

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/computeScrollRange$extraCallback;

    iget-object v5, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_d

    const/4 v7, 0x7

    if-eq v5, v7, :cond_d

    if-ne v5, v6, :cond_c

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v5, 0x1

    :goto_9
    if-eqz v5, :cond_b

    iget-object v5, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/updateLayoutState$onPostMessage;

    new-instance v8, Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    iget-object v10, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    iget-object v11, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v12, v11, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v13, v4, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    move-object/from16 v16, v10

    iget-wide v9, v11, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object v11, v7, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    move-object/from16 v24, v8

    move-object/from16 v25, v16

    move-object/from16 v26, v12

    move/from16 v27, v13

    move-wide/from16 v28, v9

    move-object/from16 v30, v11

    invoke-direct/range {v24 .. v30}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;-><init>(Lo/onVerificationFailed;Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual {v8}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    iget-object v9, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v10, v9, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v11, v4, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v12, v9, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object v9, v7, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    move/from16 v18, v11

    move-wide/from16 v19, v12

    move-object/from16 v21, v9

    invoke-virtual/range {v16 .. v21}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v0, Lo/recycleViewsFromStart$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array v5, v6, [Ljava/lang/Object;

    iget v8, v4, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    iget-object v8, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v8, v8, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v5, v9

    iget-object v8, v7, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const-string v8, "Found verify task for session %s with pack %s and slice %s."

    invoke-virtual {v0, v8, v5}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lo/setInstantiation;

    iget v5, v4, Lo/computeScrollRange$extraCallback;->extraCallback:I

    iget-object v8, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v9, v8, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v4, v4, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v10, v8, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object v8, v7, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v7, v7, Lo/updateLayoutState$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v25, v5

    move-object/from16 v26, v9

    move/from16 v27, v4

    move-wide/from16 v28, v10

    move-object/from16 v30, v8

    move-object/from16 v31, v7

    invoke-direct/range {v24 .. v31}, Lo/setInstantiation;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_f
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_22

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x4

    if-eqz v0, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lo/computeScrollRange$extraCallback;

    iget-object v0, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v0, v0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v8, 0x2

    if-eq v0, v8, :cond_12

    const/4 v8, 0x7

    if-eq v0, v8, :cond_12

    if-ne v0, v6, :cond_11

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_10

    iget-object v0, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v0, v0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lo/updateLayoutState$onPostMessage;

    .line 9000
    iget v0, v9, Lo/updateLayoutState$onPostMessage;->onRelationshipValidationResult:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_15

    const/4 v10, 0x2

    if-ne v0, v10, :cond_14

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    goto :goto_f

    :cond_15
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_16

    .line 2000
    invoke-direct {v1, v7, v9}, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback(Lo/computeScrollRange$extraCallback;Lo/updateLayoutState$onPostMessage;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lo/recycleViewsFromStart$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array v4, v6, [Ljava/lang/Object;

    iget v8, v7, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v4, v10

    iget-object v8, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v8, v8, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v4, v10

    iget-object v8, v9, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v8, v4, v10

    const-string v8, "Found extraction task for patch for session %s, pack %s, slice %s."

    invoke-virtual {v0, v8, v4}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    iget-object v8, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v10, v8, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v11, v7, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v12, v8, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object v8, v9, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 10000
    new-instance v14, Ljava/io/File;

    .line 11000
    new-instance v15, Ljava/io/File;

    invoke-virtual {v4, v10, v11, v12, v13}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v4

    invoke-direct {v15, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "slice.zip"

    .line 10000
    invoke-direct {v14, v15, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v4, Lo/setOf;

    iget v8, v7, Lo/computeScrollRange$extraCallback;->extraCallback:I

    iget-object v10, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v11, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v7, v7, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v12, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object v9, v9, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-wide v14, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->extraCallback:J

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    iget v10, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    move-object/from16 v24, v4

    move/from16 v25, v8

    move-object/from16 v26, v11

    move/from16 v27, v7

    move-wide/from16 v28, v12

    move-object/from16 v30, v9

    move-wide/from16 v34, v14

    move/from16 v36, v10

    move-object/from16 v37, v0

    invoke-direct/range {v24 .. v37}, Lo/setOf;-><init>(ILjava/lang/String;IJLjava/lang/String;IIIJILjava/io/InputStream;)V

    goto/16 :goto_11

    :catch_1
    move-exception v0

    new-instance v2, Lo/getFactory;

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, v7, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v4, v4, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, v9, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "Error finding patch, session %s packName %s sliceId %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v7, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-direct {v2, v3, v0, v4}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_16
    new-instance v0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    iget-object v10, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    iget-object v11, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v12, v11, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v13, v7, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v14, v11, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object v11, v9, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    move/from16 v27, v13

    move-wide/from16 v28, v14

    move-object/from16 v30, v11

    invoke-direct/range {v24 .. v30}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;-><init>(Lo/onVerificationFailed;Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onPostMessage()I

    move-result v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v14

    goto :goto_10

    :catch_2
    move-exception v0

    move-object v10, v0

    :try_start_6
    sget-object v0, Lo/recycleViewsFromStart$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    const-string v10, "Slice checkpoint corrupt, restarting extraction. %s"

    invoke-virtual {v0, v10, v12}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_10
    const/4 v10, -0x1

    if-eq v0, v10, :cond_13

    iget-object v10, v9, Lo/updateLayoutState$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/fixLayoutEndGap$ICustomTabsCallback;

    iget-boolean v10, v10, Lo/fixLayoutEndGap$ICustomTabsCallback;->onNavigationEvent:Z

    if-eqz v10, :cond_13

    sget-object v4, Lo/recycleViewsFromStart$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget v10, v9, Lo/updateLayoutState$onPostMessage;->onNavigationEvent:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    iget v10, v7, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v8, v11

    iget-object v10, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v10, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v10, v8, v11

    iget-object v10, v9, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    aput-object v10, v8, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v5

    const-string v10, "Found extraction task using compression format %s for session %s, pack %s, slice %s, chunk %s."

    invoke-virtual {v4, v10, v8}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->onPostMessage:Lo/getProvidedInterfaces;

    iget v8, v7, Lo/computeScrollRange$extraCallback;->extraCallback:I

    iget-object v10, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v10, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget-object v11, v9, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v4, v8, v10, v11, v0}, Lo/getProvidedInterfaces;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v37

    new-instance v4, Lo/setOf;

    iget v8, v7, Lo/computeScrollRange$extraCallback;->extraCallback:I

    iget-object v10, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v11, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v12, v7, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-wide v14, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget-object v10, v9, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget v13, v9, Lo/updateLayoutState$onPostMessage;->onNavigationEvent:I

    iget-object v9, v9, Lo/updateLayoutState$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v33

    iget-object v7, v7, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-wide v5, v7, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->extraCallback:J

    iget v7, v7, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    move-object/from16 v24, v4

    move/from16 v25, v8

    move-object/from16 v26, v11

    move/from16 v27, v12

    move-wide/from16 v28, v14

    move-object/from16 v30, v10

    move/from16 v31, v13

    move/from16 v32, v0

    move-wide/from16 v34, v5

    move/from16 v36, v7

    invoke-direct/range {v24 .. v37}, Lo/setOf;-><init>(ILjava/lang/String;IJLjava/lang/String;IIIJILjava/io/InputStream;)V

    goto :goto_11

    :cond_17
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_21

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/computeScrollRange$extraCallback;

    iget-object v4, v3, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v4, v4, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1a

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1b

    const/4 v6, 0x3

    if-ne v4, v6, :cond_19

    goto :goto_12

    :cond_19
    const/4 v4, 0x0

    goto :goto_13

    :cond_1a
    const/4 v5, 0x7

    :cond_1b
    :goto_12
    const/4 v4, 0x1

    :goto_13
    if-eqz v4, :cond_18

    iget-object v4, v3, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v4, v4, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/updateLayoutState$onPostMessage;

    .line 13000
    iget v7, v6, Lo/updateLayoutState$onPostMessage;->onRelationshipValidationResult:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1e

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v8, 0x0

    goto :goto_15

    :cond_1e
    :goto_14
    const/4 v8, 0x1

    :goto_15
    if-eqz v8, :cond_1c

    .line 2000
    iget-object v7, v6, Lo/updateLayoutState$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/fixLayoutEndGap$ICustomTabsCallback;

    iget-boolean v7, v7, Lo/fixLayoutEndGap$ICustomTabsCallback;->onNavigationEvent:Z

    if-eqz v7, :cond_1c

    invoke-direct {v1, v3, v6}, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback(Lo/computeScrollRange$extraCallback;Lo/updateLayoutState$onPostMessage;)Z

    move-result v7

    if-nez v7, :cond_1c

    sget-object v0, Lo/recycleViewsFromStart$ICustomTabsCallback;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v6, Lo/updateLayoutState$onPostMessage;->onRelationshipValidationResult:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    iget v5, v3, Lo/computeScrollRange$extraCallback;->extraCallback:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    iget-object v5, v3, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v5, v4, v9

    iget-object v5, v6, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 v10, 0x3

    aput-object v5, v4, v10

    const-string v5, "Found patch slice task using patch format %s for session %s, pack %s, slice %s."

    invoke-virtual {v0, v5, v4}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->onPostMessage:Lo/getProvidedInterfaces;

    iget v4, v3, Lo/computeScrollRange$extraCallback;->extraCallback:I

    iget-object v5, v3, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget-object v7, v6, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0, v4, v5, v7, v11}, Lo/getProvidedInterfaces;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v29

    new-instance v0, Lo/factory;

    iget v4, v3, Lo/computeScrollRange$extraCallback;->extraCallback:I

    iget-object v5, v3, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget-object v7, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    .line 15000
    new-instance v8, Ljava/io/File;

    .line 16000
    new-instance v9, Ljava/io/File;

    iget-object v7, v7, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v9, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15000
    invoke-direct {v8, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14000
    invoke-static {v8}, Lo/onVerificationFailed;->onPostMessage(Ljava/io/File;)J

    move-result-wide v7

    long-to-int v8, v7

    .line 2000
    iget-object v7, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->extraCallback:Lo/onVerificationFailed;

    iget-object v9, v3, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v9, v9, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 19000
    new-instance v10, Ljava/io/File;

    .line 20000
    new-instance v11, Ljava/io/File;

    iget-object v12, v7, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19000
    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18000
    invoke-static {v10}, Lo/onVerificationFailed;->onPostMessage(Ljava/io/File;)J

    move-result-wide v10

    long-to-int v11, v10

    .line 21000
    new-instance v10, Ljava/io/File;

    .line 22000
    new-instance v12, Ljava/io/File;

    .line 23000
    new-instance v13, Ljava/io/File;

    iget-object v7, v7, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v13, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22000
    invoke-direct {v12, v13, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21000
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v12, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17000
    invoke-static {v10}, Lo/onVerificationFailed;->onPostMessage(Ljava/io/File;)J

    move-result-wide v20

    .line 2000
    iget v2, v3, Lo/computeScrollRange$extraCallback;->onMessageChannelReady:I

    iget-object v3, v3, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-wide v9, v3, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iget v3, v6, Lo/updateLayoutState$onPostMessage;->onRelationshipValidationResult:I

    iget-object v7, v6, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-wide v11, v6, Lo/updateLayoutState$onPostMessage;->extraCallback:J

    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    move/from16 v22, v2

    move-wide/from16 v23, v9

    move/from16 v25, v3

    move-object/from16 v26, v7

    move-wide/from16 v27, v11

    invoke-direct/range {v16 .. v29}, Lo/factory;-><init>(ILjava/lang/String;IJIJILjava/lang/String;JLjava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_16

    :cond_1f
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_20

    iget-object v2, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 24000
    iget-object v2, v2, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 2000
    :cond_20
    iget-object v0, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 25000
    iget-object v0, v0, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_17
    const/4 v2, 0x0

    return-object v2

    .line 2000
    :cond_21
    iget-object v0, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 26000
    iget-object v0, v0, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    .line 2000
    :cond_22
    iget-object v2, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 27000
    iget-object v2, v2, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 2000
    :cond_23
    iget-object v2, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 28000
    iget-object v2, v2, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 2000
    :cond_24
    iget-object v2, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 29000
    iget-object v2, v2, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 2000
    :cond_25
    iget-object v0, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 30000
    iget-object v0, v0, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_17

    :catchall_0
    move-exception v0

    .line 2000
    iget-object v2, v1, Lo/recycleViewsFromStart$ICustomTabsCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    .line 31000
    iget-object v2, v2, Lo/resolveIsInfinite$onPostMessage;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2000
    throw v0
.end method
