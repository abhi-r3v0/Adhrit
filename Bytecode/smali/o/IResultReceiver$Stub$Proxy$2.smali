.class final Lo/IResultReceiver$Stub$Proxy$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IResultReceiver$Stub$Proxy;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;


# direct methods
.method constructor <init>(Lo/IResultReceiver$Stub$Proxy;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    .line 256
    iget-object v0, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v2, v0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    monitor-enter v2

    .line 257
    :try_start_0
    iget-object v0, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v3, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v3, v3, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, v0, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    .line 258
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 260
    iget-object v0, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    if-eqz v0, :cond_14

    .line 261
    iget-object v0, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 262
    iget-object v0, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    const-string v3, "KEY_START_ID"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 264
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v3

    sget-object v5, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v8, v8, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    aput-object v8, v7, v4

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "Processing command %s, %s"

    .line 265
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Throwable;

    .line 264
    invoke-virtual {v3, v5, v7, v8}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 267
    iget-object v3, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v3, v3, Lo/IResultReceiver$Stub$Proxy;->extraCallback:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v4

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    const-string v7, "%s (%s)"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-static {v3, v5}, Lo/onWindowStartingSupportActionMode;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 271
    :try_start_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v5

    sget-object v7, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    const-string v8, "Acquiring operation wake lock (%s) %s"

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v2, v10, v4

    aput-object v3, v10, v9

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Throwable;

    invoke-virtual {v5, v7, v8, v10}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 276
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 277
    iget-object v5, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v5, v5, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback$Stub:Lo/send;

    iget-object v7, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    iget-object v7, v7, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    iget-object v8, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    .line 1154
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ACTION_CONSTRAINTS_CHANGED"

    .line 1156
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1300
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v10

    sget-object v11, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v12, "Handling constraints changed %s"

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v7, v13, v4

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v12, v4, [Ljava/lang/Throwable;

    invoke-virtual {v10, v11, v7, v12}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1303
    new-instance v7, Lo/ResultReceiver$MyResultReceiver;

    iget-object v5, v5, Lo/send;->extraCallback:Landroid/content/Context;

    invoke-direct {v7, v5, v0, v8}, Lo/ResultReceiver$MyResultReceiver;-><init>(Landroid/content/Context;ILo/IResultReceiver$Stub$Proxy;)V

    .line 2063
    iget-object v0, v7, Lo/ResultReceiver$MyResultReceiver;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    .line 2185
    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 2311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 2064
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v0

    .line 2065
    invoke-interface {v0}, Lo/onPostResume;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    .line 2069
    iget-object v5, v7, Lo/ResultReceiver$MyResultReceiver;->onPostMessage:Landroid/content/Context;

    invoke-static {v5, v0}, Lo/IResultReceiver;->onMessageChannelReady(Landroid/content/Context;Ljava/util/List;)V

    .line 2072
    iget-object v5, v7, Lo/ResultReceiver$MyResultReceiver;->extraCallback:Lo/getLifecycle;

    invoke-virtual {v5, v0}, Lo/getLifecycle;->onPostMessage(Ljava/lang/Iterable;)V

    .line 2074
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2077
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/onDestroy;

    .line 2078
    iget-object v12, v8, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    .line 2079
    invoke-virtual {v8}, Lo/onDestroy;->onPostMessage()J

    move-result-wide v13

    cmp-long v15, v10, v13

    if-ltz v15, :cond_0

    .line 3298
    sget-object v13, Lo/getErrorCode;->extraCallback:Lo/getErrorCode;

    iget-object v14, v8, Lo/onDestroy;->warmup:Lo/getErrorCode;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v9

    if-eqz v13, :cond_1

    .line 2080
    iget-object v13, v7, Lo/ResultReceiver$MyResultReceiver;->extraCallback:Lo/getLifecycle;

    .line 2081
    invoke-virtual {v13, v12}, Lo/getLifecycle;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2082
    :cond_1
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2086
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/onDestroy;

    .line 2087
    iget-object v5, v5, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    .line 2088
    iget-object v8, v7, Lo/ResultReceiver$MyResultReceiver;->onPostMessage:Landroid/content/Context;

    .line 4071
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lo/ResultReceiver$MyRunnable;

    invoke-direct {v10, v8, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "ACTION_DELAY_MET"

    .line 4072
    invoke-virtual {v10, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "KEY_WORKSPEC_ID"

    .line 4073
    invoke-virtual {v10, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2089
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v8

    sget-object v11, Lo/ResultReceiver$MyResultReceiver;->onNavigationEvent:Ljava/lang/String;

    const-string v12, "Creating a delay_met command for workSpec with id (%s)"

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v5, v13, v4

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v12, v4, [Ljava/lang/Throwable;

    invoke-virtual {v8, v11, v5, v12}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2091
    iget-object v5, v7, Lo/ResultReceiver$MyResultReceiver;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    new-instance v8, Lo/IResultReceiver$Stub$Proxy$onPostMessage;

    iget-object v11, v7, Lo/ResultReceiver$MyResultReceiver;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    iget v12, v7, Lo/ResultReceiver$MyResultReceiver;->onMessageChannelReady:I

    invoke-direct {v8, v11, v10, v12}, Lo/IResultReceiver$Stub$Proxy$onPostMessage;-><init>(Lo/IResultReceiver$Stub$Proxy;Landroid/content/Intent;I)V

    .line 4193
    iget-object v5, v5, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2095
    :cond_3
    iget-object v0, v7, Lo/ResultReceiver$MyResultReceiver;->extraCallback:Lo/getLifecycle;

    invoke-virtual {v0}, Lo/getLifecycle;->onNavigationEvent()V

    goto/16 :goto_8

    :cond_4
    const-string v11, "ACTION_RESCHEDULE"

    .line 1158
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4313
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v5

    sget-object v10, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v11, "Handling reschedule %s, %s"

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v7, v12, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v9

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/Throwable;

    invoke-virtual {v5, v10, v0, v7}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5185
    iget-object v0, v8, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 4314
    invoke-virtual {v0}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady()V

    goto/16 :goto_8

    .line 1161
    :cond_5
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "KEY_WORKSPEC_ID"

    .line 1162
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lo/send;->extraCallback(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1163
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v5, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v7, "Invalid request for %s, requires %s."

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v10, v8, v4

    const-string v10, "KEY_WORKSPEC_ID"

    aput-object v10, v8, v9

    .line 1164
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Throwable;

    .line 1163
    invoke-virtual {v0, v5, v7, v8}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_6
    const-string v11, "ACTION_SCHEDULE_WORK"

    .line 1168
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 5188
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "KEY_WORKSPEC_ID"

    .line 5189
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5190
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v10

    sget-object v11, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v12, "Handling schedule work for %s"

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v7, v13, v4

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Throwable;

    invoke-virtual {v10, v11, v12, v13}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6185
    iget-object v10, v8, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 6311
    iget-object v10, v10, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 5194
    invoke-virtual {v10}, Lo/setCurrentControllerInfo;->onNavigationEvent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5197
    :try_start_2
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v11

    .line 5198
    invoke-interface {v11, v7}, Lo/onPostResume;->ICustomTabsCallback(Ljava/lang/String;)Lo/onDestroy;

    move-result-object v11

    if-nez v11, :cond_7

    .line 5208
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v5, Lo/send;->onPostMessage:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Skipping scheduling "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it\'s no longer in the DB"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5252
    :goto_2
    :try_start_3
    invoke-virtual {v10}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_8

    .line 5212
    :cond_7
    :try_start_4
    iget-object v12, v11, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 7204
    sget-object v13, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v12, v13, :cond_9

    sget-object v13, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v12, v13, :cond_9

    sget-object v13, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v12, v13, :cond_8

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v12, 0x1

    :goto_4
    if-eqz v12, :cond_a

    .line 5216
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v5, Lo/send;->onPostMessage:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Skipping scheduling "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "because it is finished."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5223
    :cond_a
    invoke-virtual {v11}, Lo/onDestroy;->onPostMessage()J

    move-result-wide v12

    .line 7298
    sget-object v14, Lo/getErrorCode;->extraCallback:Lo/getErrorCode;

    iget-object v11, v11, Lo/onDestroy;->warmup:Lo/getErrorCode;

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v9

    if-nez v11, :cond_b

    .line 5226
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v11, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v14, "Setting up Alarms for %s at %s"

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v7, v15, v4

    .line 5227
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v9

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-array v15, v4, [Ljava/lang/Throwable;

    .line 5226
    invoke-virtual {v0, v11, v14, v15}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5228
    iget-object v0, v5, Lo/send;->extraCallback:Landroid/content/Context;

    .line 8185
    iget-object v5, v8, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 5228
    invoke-static {v0, v5, v7, v12, v13}, Lo/PlaybackStateCompatApi22;->ICustomTabsCallback(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;J)V

    goto :goto_5

    .line 5231
    :cond_b
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v11

    sget-object v14, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v15, "Opportunistically setting an alarm for %s at %s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v4

    .line 5233
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v16, 0x1

    aput-object v17, v9, v16

    .line 5232
    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v15, v4, [Ljava/lang/Throwable;

    .line 5231
    invoke-virtual {v11, v14, v9, v15}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5234
    iget-object v9, v5, Lo/send;->extraCallback:Landroid/content/Context;

    .line 9185
    iget-object v11, v8, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 5234
    invoke-static {v9, v11, v7, v12, v13}, Lo/PlaybackStateCompatApi22;->ICustomTabsCallback(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;J)V

    .line 5242
    iget-object v5, v5, Lo/send;->extraCallback:Landroid/content/Context;

    .line 10085
    new-instance v7, Landroid/content/Intent;

    const-class v9, Lo/ResultReceiver$MyRunnable;

    invoke-direct {v7, v5, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "ACTION_CONSTRAINTS_CHANGED"

    .line 10086
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5243
    new-instance v5, Lo/IResultReceiver$Stub$Proxy$onPostMessage;

    invoke-direct {v5, v8, v7, v0}, Lo/IResultReceiver$Stub$Proxy$onPostMessage;-><init>(Lo/IResultReceiver$Stub$Proxy;Landroid/content/Intent;I)V

    .line 10193
    iget-object v0, v8, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10395
    :goto_5
    iget-object v0, v10, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    .line 5252
    :try_start_5
    invoke-virtual {v10}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 5253
    throw v0

    :cond_c
    const-string v9, "ACTION_DELAY_MET"

    .line 1170
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 11261
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 11262
    iget-object v9, v5, Lo/send;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v10, "KEY_WORKSPEC_ID"

    .line 11263
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11264
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v10

    sget-object v11, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v12, "Handing delay met for %s"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v7, v14, v4

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Throwable;

    invoke-virtual {v10, v11, v12, v13}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 11268
    iget-object v10, v5, Lo/send;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 11269
    new-instance v10, Lo/ResultReceiver$1;

    iget-object v11, v5, Lo/send;->extraCallback:Landroid/content/Context;

    invoke-direct {v10, v11, v0, v7, v8}, Lo/ResultReceiver$1;-><init>(Landroid/content/Context;ILjava/lang/String;Lo/IResultReceiver$Stub$Proxy;)V

    .line 11271
    iget-object v0, v5, Lo/send;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12186
    iget-object v0, v10, Lo/ResultReceiver$1;->extraCallback:Landroid/content/Context;

    const-string v5, "%s (%s)"

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, v10, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    aput-object v8, v7, v4

    iget v8, v10, Lo/ResultReceiver$1;->onMessageChannelReady:I

    .line 12188
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v7, v11

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 12186
    invoke-static {v0, v5}, Lo/onWindowStartingSupportActionMode;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v10, Lo/ResultReceiver$1;->onRelationshipValidationResult:Landroid/os/PowerManager$WakeLock;

    .line 12189
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v5, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const-string v7, "Acquiring wakelock %s for WorkSpec %s"

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v11, v10, Lo/ResultReceiver$1;->onRelationshipValidationResult:Landroid/os/PowerManager$WakeLock;

    aput-object v11, v8, v4

    iget-object v11, v10, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v11, v8, v12

    .line 12190
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Throwable;

    .line 12189
    invoke-virtual {v0, v5, v7, v8}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 12191
    iget-object v0, v10, Lo/ResultReceiver$1;->onRelationshipValidationResult:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 12193
    iget-object v0, v10, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    .line 13185
    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 13311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 12195
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v0

    iget-object v5, v10, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    .line 12196
    invoke-interface {v0, v5}, Lo/onPostResume;->ICustomTabsCallback(Ljava/lang/String;)Lo/onDestroy;

    move-result-object v0

    if-nez v0, :cond_d

    .line 12202
    invoke-virtual {v10}, Lo/ResultReceiver$1;->onPostMessage()V

    goto :goto_7

    .line 14298
    :cond_d
    sget-object v5, Lo/getErrorCode;->extraCallback:Lo/getErrorCode;

    iget-object v7, v0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    .line 12208
    :goto_6
    iput-boolean v5, v10, Lo/ResultReceiver$1;->asInterface:Z

    .line 12210
    iget-boolean v5, v10, Lo/ResultReceiver$1;->asInterface:Z

    if-nez v5, :cond_f

    .line 12211
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v5, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const-string v7, "No constraints for %s"

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    iget-object v8, v10, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    aput-object v8, v11, v4

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v7, v8}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 12212
    iget-object v0, v10, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lo/ResultReceiver$1;->onPostMessage(Ljava/util/List;)V

    goto :goto_7

    .line 12215
    :cond_f
    iget-object v5, v10, Lo/ResultReceiver$1;->asBinder:Lo/getLifecycle;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lo/getLifecycle;->onPostMessage(Ljava/lang/Iterable;)V

    goto :goto_7

    .line 11274
    :cond_10
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v5, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v8, "WorkSpec %s is already being handled for ACTION_DELAY_MET"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v7, v11, v4

    .line 11275
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Throwable;

    .line 11274
    invoke-virtual {v0, v5, v7, v8}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 11278
    :goto_7
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v9

    throw v0

    :cond_11
    const-string v9, "ACTION_STOP_WORK"

    .line 1172
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 15285
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "KEY_WORKSPEC_ID"

    .line 15286
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15287
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v7

    sget-object v9, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v10, "Handing stopWork work for %s"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v0, v12, v4

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Throwable;

    invoke-virtual {v7, v9, v10, v11}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 16185
    iget-object v7, v8, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 16629
    iget-object v9, v7, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    new-instance v10, Lo/setSupportProgressBarIndeterminateVisibility;

    invoke-direct {v10, v7, v0, v4}, Lo/setSupportProgressBarIndeterminateVisibility;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Z)V

    invoke-interface {v9, v10}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    .line 15290
    iget-object v5, v5, Lo/send;->extraCallback:Landroid/content/Context;

    .line 17185
    iget-object v7, v8, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 15290
    invoke-static {v5, v7, v0}, Lo/PlaybackStateCompatApi22;->onPostMessage(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)V

    .line 15293
    invoke-virtual {v8, v0, v4}, Lo/IResultReceiver$Stub$Proxy;->onPostMessage(Ljava/lang/String;Z)V

    goto :goto_8

    :cond_12
    const-string v8, "ACTION_EXECUTION_COMPLETED"

    .line 1174
    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 17321
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "KEY_WORKSPEC_ID"

    .line 17322
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "KEY_NEEDS_RESCHEDULE"

    .line 17323
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 17324
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v10

    sget-object v11, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v12, "Handling onExecutionCompleted %s, %s"

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v7, v13, v4

    .line 17326
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v13, v7

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/Throwable;

    .line 17324
    invoke-virtual {v10, v11, v0, v7}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 17328
    invoke-virtual {v5, v9, v8}, Lo/send;->onPostMessage(Ljava/lang/String;Z)V

    goto :goto_8

    .line 1177
    :cond_13
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v5, Lo/send;->onPostMessage:Ljava/lang/String;

    const-string v8, "Ignoring intent %s"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v7, v10, v4

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 285
    :goto_8
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v5, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const-string v2, "Releasing operation wake lock (%s) %s"

    .line 287
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 285
    invoke-virtual {v0, v5, v2, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 291
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    iget-object v0, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    new-instance v2, Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;-><init>(Lo/IResultReceiver$Stub$Proxy;)V

    .line 18193
    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_2
    move-exception v0

    .line 280
    :try_start_8
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v5

    sget-object v7, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    const-string v8, "Unexpected error in onHandleIntent"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Throwable;

    aput-object v0, v10, v4

    invoke-virtual {v5, v7, v8, v10}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 285
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v5, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    aput-object v3, v6, v9

    const-string v2, "Releasing operation wake lock (%s) %s"

    .line 287
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 285
    invoke-virtual {v0, v5, v2, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 291
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    iget-object v0, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    new-instance v2, Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;-><init>(Lo/IResultReceiver$Stub$Proxy;)V

    .line 19193
    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_3
    move-exception v0

    .line 285
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v5

    sget-object v7, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const-string v2, "Releasing operation wake lock (%s) %s"

    .line 287
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 285
    invoke-virtual {v5, v7, v2, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 291
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    iget-object v2, v1, Lo/IResultReceiver$Stub$Proxy$2;->onNavigationEvent:Lo/IResultReceiver$Stub$Proxy;

    new-instance v3, Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;

    invoke-direct {v3, v2}, Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;-><init>(Lo/IResultReceiver$Stub$Proxy;)V

    .line 20193
    iget-object v2, v2, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    throw v0

    :cond_14
    return-void

    :catchall_4
    move-exception v0

    .line 258
    monitor-exit v2

    throw v0
.end method
