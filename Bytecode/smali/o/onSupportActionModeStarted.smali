.class public final Lo/onSupportActionModeStarted;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final onPostMessage:Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Lo/PlaybackStateCompatApi21;

.field public final onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    .line 72
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/onSupportActionModeStarted;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/PlaybackStateCompatApi21;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lo/onSupportActionModeStarted;->ICustomTabsCallback:Lo/PlaybackStateCompatApi21;

    .line 79
    new-instance p1, Lo/PlaybackStateCompat$CustomAction$Builder;

    invoke-direct {p1}, Lo/PlaybackStateCompat$CustomAction$Builder;-><init>()V

    iput-object p1, p0, Lo/onSupportActionModeStarted;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$Builder;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/onDestroy;)V
    .locals 4

    .line 349
    iget-object v0, p0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 16155
    iget-boolean v1, v0, Lo/getErrorCode;->onPostMessage:Z

    if-nez v1, :cond_0

    .line 16171
    iget-boolean v0, v0, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    iget-object v0, p0, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    .line 352
    new-instance v1, Lo/PlaybackStateCompat$Builder$onPostMessage;

    invoke-direct {v1}, Lo/PlaybackStateCompat$Builder$onPostMessage;-><init>()V

    .line 354
    iget-object v2, p0, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    .line 16763
    iget-object v2, v2, Lo/PlaybackStateCompat$Builder;->extraCallback:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady(Ljava/util/Map;)Lo/PlaybackStateCompat$Builder$onPostMessage;

    .line 17737
    iget-object v2, v1, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    const-string v3, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    .line 17843
    new-instance v0, Lo/PlaybackStateCompat$Builder;

    iget-object v1, v1, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    invoke-direct {v0, v1}, Lo/PlaybackStateCompat$Builder;-><init>(Ljava/util/Map;)V

    .line 17846
    invoke-static {v0}, Lo/PlaybackStateCompat$Builder;->onNavigationEvent(Lo/PlaybackStateCompat$Builder;)[B

    .line 357
    iput-object v0, p0, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    :cond_1
    return-void
.end method

.method private static ICustomTabsCallback(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 370
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 18331
    iget-object p0, p0, Lo/PlaybackStateCompat$RepeatMode;->onPostMessage:Ljava/util/List;

    .line 371
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;

    .line 372
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method private onMessageChannelReady()Z
    .locals 3

    .line 116
    iget-object v0, p0, Lo/onSupportActionModeStarted;->ICustomTabsCallback:Lo/PlaybackStateCompatApi21;

    .line 6068
    iget-object v0, v0, Lo/PlaybackStateCompatApi21;->extraCallback:Lo/PlaybackStateCompat$RepeatMode;

    .line 6311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 6351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 6352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 6353
    iget-object v2, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v2, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 6354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 120
    :try_start_0
    iget-object v1, p0, Lo/onSupportActionModeStarted;->ICustomTabsCallback:Lo/PlaybackStateCompatApi21;

    invoke-static {v1}, Lo/onSupportActionModeStarted;->onMessageChannelReady(Lo/PlaybackStateCompatApi21;)Z

    move-result v1

    .line 6395
    iget-object v2, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 125
    throw v1
.end method

.method private static onMessageChannelReady(Lo/PlaybackStateCompatApi21;)Z
    .locals 8

    .line 7106
    iget-object v0, p0, Lo/PlaybackStateCompatApi21;->ICustomTabsCallback$Stub:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/PlaybackStateCompatApi21;

    .line 8095
    iget-boolean v4, v3, Lo/PlaybackStateCompatApi21;->onTransact:Z

    if-nez v4, :cond_0

    .line 148
    invoke-static {v3}, Lo/onSupportActionModeStarted;->onMessageChannelReady(Lo/PlaybackStateCompatApi21;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v5, Lo/onSupportActionModeStarted;->onPostMessage:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 9087
    iget-object v3, v3, Lo/PlaybackStateCompatApi21;->onMessageChannelReady:Ljava/util/List;

    const-string v7, ", "

    .line 151
    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Already enqueued work ids (%s)."

    .line 150
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 155
    :cond_2
    invoke-static {p0}, Lo/onSupportActionModeStarted;->onNavigationEvent(Lo/PlaybackStateCompatApi21;)Z

    move-result p0

    or-int/2addr p0, v1

    return p0
.end method

.method private static onNavigationEvent(Lo/PlaybackStateCompat$RepeatMode;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lo/PlaybackStateCompat$Actions;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PlaybackStateCompat$RepeatMode;",
            "Ljava/util/List<",
            "+",
            "Lo/PlaybackStateCompat$CustomAction$1;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/PlaybackStateCompat$Actions;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 11311
    iget-object v6, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 190
    array-length v9, v1

    if-lez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_5

    .line 199
    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v15, v1, v11

    .line 200
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v8

    invoke-interface {v8, v15}, Lo/onPostResume;->ICustomTabsCallback(Ljava/lang/String;)Lo/onDestroy;

    move-result-object v8

    if-nez v8, :cond_1

    .line 202
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/onSupportActionModeStarted;->onPostMessage:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    const-string v4, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 203
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 202
    invoke-virtual {v0, v1, v2, v4}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v3

    .line 207
    :cond_1
    iget-object v8, v8, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 208
    sget-object v15, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v8, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    and-int/2addr v12, v15

    .line 209
    sget-object v15, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v8, v15, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    .line 211
    :cond_3
    sget-object v15, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v8, v15, :cond_4

    const/4 v13, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 217
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_7

    if-nez v9, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_17

    .line 225
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v10

    invoke-interface {v10, v2}, Lo/onPostResume;->extraCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 227
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17

    .line 229
    sget-object v11, Lo/PlaybackStateCompat$Actions;->onNavigationEvent:Lo/PlaybackStateCompat$Actions;

    if-eq v3, v11, :cond_d

    sget-object v11, Lo/PlaybackStateCompat$Actions;->onMessageChannelReady:Lo/PlaybackStateCompat$Actions;

    if-ne v3, v11, :cond_8

    goto :goto_8

    .line 263
    :cond_8
    sget-object v11, Lo/PlaybackStateCompat$Actions;->ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

    if-ne v3, v11, :cond_b

    .line 264
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/onDestroy$extraCallback;

    .line 265
    iget-object v15, v11, Lo/onDestroy$extraCallback;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v7, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v15, v7, :cond_a

    iget-object v7, v11, Lo/onDestroy$extraCallback;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v11, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onNavigationEvent:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v7, v11, :cond_9

    goto :goto_6

    :cond_9
    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    const/4 v7, 0x0

    return v7

    :cond_b
    const/4 v7, 0x0

    .line 12176
    new-instance v3, Lo/supportRequestWindowFeature$2;

    invoke-direct {v3, v0, v2, v7}, Lo/supportRequestWindowFeature$2;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Z)V

    .line 276
    invoke-virtual {v3}, Lo/supportRequestWindowFeature;->run()V

    .line 283
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v3

    .line 284
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/onDestroy$extraCallback;

    .line 285
    iget-object v11, v11, Lo/onDestroy$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-interface {v3, v11}, Lo/onPostResume;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_10

    :cond_d
    :goto_8
    const/4 v7, 0x0

    .line 230
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->asBinder()Lo/newIntentHandleExecutor;

    move-result-object v9

    .line 231
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/onDestroy$extraCallback;

    .line 233
    iget-object v7, v15, Lo/onDestroy$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-interface {v9, v7}, Lo/newIntentHandleExecutor;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 234
    iget-object v7, v15, Lo/onDestroy$extraCallback;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-object/from16 v16, v9

    sget-object v9, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v7, v9, :cond_e

    const/4 v7, 0x1

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :goto_a
    and-int/2addr v7, v12

    .line 235
    iget-object v9, v15, Lo/onDestroy$extraCallback;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v12, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v9, v12, :cond_f

    const/4 v14, 0x1

    goto :goto_b

    .line 237
    :cond_f
    iget-object v9, v15, Lo/onDestroy$extraCallback;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v12, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v9, v12, :cond_10

    const/4 v13, 0x1

    .line 240
    :cond_10
    :goto_b
    iget-object v9, v15, Lo/onDestroy$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v12, v7

    goto :goto_c

    :cond_11
    move-object/from16 v16, v9

    :goto_c
    move-object/from16 v9, v16

    const/4 v7, 0x0

    goto :goto_9

    .line 243
    :cond_12
    sget-object v7, Lo/PlaybackStateCompat$Actions;->onMessageChannelReady:Lo/PlaybackStateCompat$Actions;

    if-ne v3, v7, :cond_15

    if-nez v13, :cond_13

    if-eqz v14, :cond_15

    .line 246
    :cond_13
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v3

    .line 248
    invoke-interface {v3, v2}, Lo/onPostResume;->extraCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 249
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/onDestroy$extraCallback;

    .line 250
    iget-object v9, v9, Lo/onDestroy$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-interface {v3, v9}, Lo/onPostResume;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_d

    .line 253
    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_e

    :cond_15
    move v3, v14

    .line 258
    :goto_e
    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 259
    array-length v7, v1

    if-lez v7, :cond_16

    const/4 v9, 0x1

    goto :goto_f

    :cond_16
    const/4 v9, 0x0

    :goto_f
    move v14, v3

    :cond_17
    const/4 v3, 0x0

    .line 291
    :goto_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/PlaybackStateCompat$CustomAction$1;

    .line 13099
    iget-object v11, v10, Lo/PlaybackStateCompat$CustomAction$1;->onNavigationEvent:Lo/onDestroy;

    if-eqz v9, :cond_1a

    if-nez v12, :cond_1a

    if-eqz v14, :cond_18

    .line 296
    sget-object v15, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    iput-object v15, v11, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    :goto_12
    move/from16 p2, v12

    move/from16 p4, v13

    move/from16 v16, v14

    goto :goto_14

    :cond_18
    if-eqz v13, :cond_19

    .line 298
    sget-object v15, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    iput-object v15, v11, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    goto :goto_12

    .line 300
    :cond_19
    sget-object v15, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    iput-object v15, v11, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    goto :goto_12

    :cond_1a
    move/from16 p2, v12

    move/from16 p4, v13

    .line 13179
    iget-wide v12, v11, Lo/onDestroy;->onRelationshipValidationResult:J

    move/from16 v16, v14

    const-wide/16 v14, 0x0

    cmp-long v17, v12, v14

    if-eqz v17, :cond_1b

    const/4 v12, 0x1

    goto :goto_13

    :cond_1b
    const/4 v12, 0x0

    :goto_13
    if-nez v12, :cond_1c

    .line 307
    iput-wide v4, v11, Lo/onDestroy;->newSession:J

    goto :goto_14

    .line 309
    :cond_1c
    iput-wide v14, v11, Lo/onDestroy;->newSession:J

    .line 313
    :goto_14
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_1d

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x19

    if-gt v12, v13, :cond_1d

    .line 315
    invoke-static {v11}, Lo/onSupportActionModeStarted;->ICustomTabsCallback(Lo/onDestroy;)V

    goto :goto_15

    .line 316
    :cond_1d
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x16

    if-gt v12, v13, :cond_1e

    const-string v12, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 317
    invoke-static {v0, v12}, Lo/onSupportActionModeStarted;->ICustomTabsCallback(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 318
    invoke-static {v11}, Lo/onSupportActionModeStarted;->ICustomTabsCallback(Lo/onDestroy;)V

    .line 322
    :cond_1e
    :goto_15
    iget-object v12, v11, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v13, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v12, v13, :cond_1f

    const/4 v3, 0x1

    .line 326
    :cond_1f
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v12

    invoke-interface {v12, v11}, Lo/onPostResume;->onPostMessage(Lo/onDestroy;)V

    if-eqz v9, :cond_20

    .line 329
    array-length v11, v1

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v11, :cond_20

    aget-object v13, v1, v12

    .line 330
    new-instance v14, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;

    .line 14088
    iget-object v15, v10, Lo/PlaybackStateCompat$CustomAction$1;->ICustomTabsCallback:Ljava/util/UUID;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 330
    invoke-direct {v14, v15, v13}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->asBinder()Lo/newIntentHandleExecutor;

    move-result-object v13

    invoke-interface {v13, v14}, Lo/newIntentHandleExecutor;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 14110
    :cond_20
    iget-object v11, v10, Lo/PlaybackStateCompat$CustomAction$1;->onMessageChannelReady:Ljava/util/Set;

    .line 335
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 336
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->onTransact()Lo/findViewById;

    move-result-object v13

    new-instance v14, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;

    .line 15088
    iget-object v15, v10, Lo/PlaybackStateCompat$CustomAction$1;->ICustomTabsCallback:Ljava/util/UUID;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 336
    invoke-direct {v14, v12, v15}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lo/findViewById;->extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;)V

    goto :goto_17

    :cond_21
    if-eqz v8, :cond_22

    .line 340
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->warmup()Lo/onConfigurationChanged;

    move-result-object v11

    new-instance v12, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;

    .line 16088
    iget-object v10, v10, Lo/PlaybackStateCompat$CustomAction$1;->ICustomTabsCallback:Ljava/util/UUID;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 340
    invoke-direct {v12, v2, v10}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Lo/onConfigurationChanged;->extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;)V

    :cond_22
    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v14, v16

    goto/16 :goto_11

    :cond_23
    return v3
.end method

.method private static onNavigationEvent(Lo/PlaybackStateCompatApi21;)Z
    .locals 5

    .line 160
    invoke-static {p0}, Lo/PlaybackStateCompatApi21;->extraCallback(Lo/PlaybackStateCompatApi21;)Ljava/util/Set;

    move-result-object v0

    .line 10068
    iget-object v1, p0, Lo/PlaybackStateCompatApi21;->extraCallback:Lo/PlaybackStateCompat$RepeatMode;

    .line 10082
    iget-object v2, p0, Lo/PlaybackStateCompatApi21;->onPostMessage:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 165
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 11073
    iget-object v3, p0, Lo/PlaybackStateCompatApi21;->onNavigationEvent:Ljava/lang/String;

    .line 11077
    iget-object v4, p0, Lo/PlaybackStateCompatApi21;->ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

    .line 162
    invoke-static {v1, v2, v0, v3, v4}, Lo/onSupportActionModeStarted;->onNavigationEvent(Lo/PlaybackStateCompat$RepeatMode;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lo/PlaybackStateCompat$Actions;)Z

    move-result v0

    const/4 v1, 0x1

    .line 11102
    iput-boolean v1, p0, Lo/PlaybackStateCompatApi21;->onTransact:Z

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 85
    :try_start_0
    iget-object v0, p0, Lo/onSupportActionModeStarted;->ICustomTabsCallback:Lo/PlaybackStateCompatApi21;

    .line 1223
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Lo/PlaybackStateCompatApi21;->onNavigationEvent(Lo/PlaybackStateCompatApi21;Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Lo/onSupportActionModeStarted;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lo/onSupportActionModeStarted;->ICustomTabsCallback:Lo/PlaybackStateCompatApi21;

    .line 2068
    iget-object v0, v0, Lo/PlaybackStateCompatApi21;->extraCallback:Lo/PlaybackStateCompat$RepeatMode;

    .line 2301
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady:Landroid/content/Context;

    .line 94
    const-class v2, Lo/ResultReceiver;

    invoke-static {v0, v2, v1}, Lo/onTitleChanged;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 3133
    iget-object v0, p0, Lo/onSupportActionModeStarted;->ICustomTabsCallback:Lo/PlaybackStateCompatApi21;

    .line 4068
    iget-object v0, v0, Lo/PlaybackStateCompatApi21;->extraCallback:Lo/PlaybackStateCompat$RepeatMode;

    .line 4321
    iget-object v1, v0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 5311
    iget-object v2, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 5331
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onPostMessage:Ljava/util/List;

    .line 3134
    invoke-static {v1, v2, v0}, Lo/getIcon;->onMessageChannelReady(Lo/getActions;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lo/onSupportActionModeStarted;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$Builder;

    sget-object v1, Lo/setActions;->ICustomTabsCallback:Lo/setActions$ICustomTabsCallback$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/PlaybackStateCompat$CustomAction$Builder;->onPostMessage(Lo/setActions$ICustomTabsCallback;)V

    return-void

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/onSupportActionModeStarted;->ICustomTabsCallback:Lo/PlaybackStateCompatApi21;

    aput-object v4, v1, v3

    .line 87
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 99
    iget-object v1, p0, Lo/onSupportActionModeStarted;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$Builder;

    new-instance v2, Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lo/PlaybackStateCompat$CustomAction$Builder;->onPostMessage(Lo/setActions$ICustomTabsCallback;)V

    return-void
.end method
