.class public Lo/PlaybackStateCompatApi21$CustomAction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/picasso/Picasso$ICustomTabsCallback;
.implements Lo/loadsAllData$onPostMessage;
.implements Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;


# static fields
.field private static final extraCallback:Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/onDestroy;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Lo/IResultReceiver$Default;

.field private asInterface:Ljava/lang/Boolean;

.field private final onMessageChannelReady:Landroid/content/Context;

.field private final onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

.field private final onPostMessage:Lo/getLifecycle;

.field private onRelationshipValidationResult:Z

.field private final onTransact:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    .line 58
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Lo/PlaybackStateCompat$RepeatMode;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->ICustomTabsCallback:Ljava/util/Set;

    .line 76
    iput-object p1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onMessageChannelReady:Landroid/content/Context;

    .line 77
    iput-object p4, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 78
    new-instance p4, Lo/getLifecycle;

    invoke-direct {p4, p1, p3, p0}, Lo/getLifecycle;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;Lo/loadsAllData$onPostMessage;)V

    iput-object p4, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onPostMessage:Lo/getLifecycle;

    .line 79
    new-instance p1, Lo/IResultReceiver$Default;

    .line 1161
    iget-object p2, p2, Lo/getActions;->onNavigationEvent:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

    .line 79
    invoke-direct {p1, p0, p2}, Lo/IResultReceiver$Default;-><init>(Lo/PlaybackStateCompatApi21$CustomAction;Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;)V

    iput-object p1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->asBinder:Lo/IResultReceiver$Default;

    .line 80
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onTransact:Ljava/lang/Object;

    return-void
.end method

.method private ICustomTabsCallback()Ljava/lang/String;
    .locals 7

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 243
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.app.ActivityThread"

    .line 248
    const-class v4, Lo/PlaybackStateCompatApi21$CustomAction;

    .line 251
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 248
    invoke-static {v3, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 253
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    const-string v4, "currentProcessName"

    new-array v5, v2, [Ljava/lang/Class;

    .line 254
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 255
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 256
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v4, "currentActivityThread"

    new-array v5, v2, [Ljava/lang/Class;

    .line 258
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 260
    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v5, "getProcessName"

    new-array v6, v2, [Ljava/lang/Class;

    .line 261
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 262
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v5, v2, [Ljava/lang/Object;

    .line 263
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 265
    :goto_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 266
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v3

    .line 269
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v5, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v3, v1, v2

    const-string v2, "Unable to check ActivityThread for processName"

    invoke-virtual {v4, v5, v2, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 273
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 274
    iget-object v2, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onMessageChannelReady:Landroid/content/Context;

    const-string v3, "activity"

    .line 275
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-eqz v2, :cond_4

    .line 278
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 279
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 280
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 281
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v1, :cond_3

    .line 282
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_4
    return-object v0
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;)V
    .locals 5

    .line 170
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->asInterface:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lo/PlaybackStateCompatApi21$CustomAction;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->asInterface:Ljava/lang/Boolean;

    .line 175
    :cond_0
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->asInterface:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 176
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v0, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Ignoring schedule request in non-main process"

    invoke-virtual {p1, v0, v2, v1}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 6234
    :cond_1
    iget-boolean v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onRelationshipValidationResult:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 6235
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 6340
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 7275
    iget-object v3, v0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v3

    .line 7276
    :try_start_0
    iget-object v0, v0, Lo/getName;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7277
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6236
    iput-boolean v2, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onRelationshipValidationResult:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7277
    monitor-exit v3

    throw p1

    .line 181
    :cond_2
    :goto_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v4, "Cancelling work ID %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v2, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 182
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->asBinder:Lo/IResultReceiver$Default;

    if-eqz v0, :cond_3

    .line 8091
    iget-object v2, v0, Lo/IResultReceiver$Default;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 8093
    iget-object v0, v0, Lo/IResultReceiver$Default;->extraCallback:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

    invoke-interface {v0, v2}, Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;->onPostMessage(Ljava/lang/Runnable;)V

    .line 186
    :cond_3
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 8629
    iget-object v2, v0, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    new-instance v3, Lo/setSupportProgressBarIndeterminateVisibility;

    invoke-direct {v3, v0, p1, v1}, Lo/setSupportProgressBarIndeterminateVisibility;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints not met: Cancelling work ID %s"

    .line 203
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Throwable;

    .line 202
    invoke-virtual {v1, v2, v3, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 204
    iget-object v1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 9629
    iget-object v2, v1, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    new-instance v3, Lo/setSupportProgressBarIndeterminateVisibility;

    invoke-direct {v3, v1, v0, v4}, Lo/setSupportProgressBarIndeterminateVisibility;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs onMessageChannelReady([Lo/onDestroy;)V
    .locals 13

    .line 106
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->asInterface:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lo/PlaybackStateCompatApi21$CustomAction;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->asInterface:Ljava/lang/Boolean;

    .line 111
    :cond_0
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->asInterface:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 112
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v0, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Ignoring schedule request in non-main process"

    invoke-virtual {p1, v0, v2, v1}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 1234
    :cond_1
    iget-boolean v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onRelationshipValidationResult:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1235
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 1340
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 2275
    iget-object v3, v0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v3

    .line 2276
    :try_start_0
    iget-object v0, v0, Lo/getName;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2277
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    iput-boolean v2, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onRelationshipValidationResult:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2277
    monitor-exit v3

    throw p1

    .line 122
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 125
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_a

    aget-object v6, p1, v5

    .line 126
    invoke-virtual {v6}, Lo/onDestroy;->onPostMessage()J

    move-result-wide v7

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 128
    iget-object v11, v6, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v12, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-ne v11, v12, :cond_9

    cmp-long v11, v9, v7

    if-gez v11, :cond_4

    .line 131
    iget-object v7, p0, Lo/PlaybackStateCompatApi21$CustomAction;->asBinder:Lo/IResultReceiver$Default;

    if-eqz v7, :cond_9

    .line 3066
    iget-object v8, v7, Lo/IResultReceiver$Default;->onNavigationEvent:Ljava/util/Map;

    iget-object v9, v6, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    if-eqz v8, :cond_3

    .line 3068
    iget-object v9, v7, Lo/IResultReceiver$Default;->extraCallback:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

    invoke-interface {v9, v8}, Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;->onPostMessage(Ljava/lang/Runnable;)V

    .line 3071
    :cond_3
    new-instance v8, Lo/IResultReceiver$Default$1;

    invoke-direct {v8, v7, v6}, Lo/IResultReceiver$Default$1;-><init>(Lo/IResultReceiver$Default;Lo/onDestroy;)V

    .line 3079
    iget-object v9, v7, Lo/IResultReceiver$Default;->onNavigationEvent:Ljava/util/Map;

    iget-object v10, v6, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3080
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3081
    invoke-virtual {v6}, Lo/onDestroy;->onPostMessage()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 3082
    iget-object v6, v7, Lo/IResultReceiver$Default;->extraCallback:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

    invoke-interface {v6, v11, v12, v8}, Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;->ICustomTabsCallback(JLjava/lang/Runnable;)V

    goto/16 :goto_3

    .line 3298
    :cond_4
    sget-object v7, Lo/getErrorCode;->extraCallback:Lo/getErrorCode;

    iget-object v8, v6, Lo/onDestroy;->warmup:Lo/getErrorCode;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_8

    .line 135
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_5

    iget-object v7, v6, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 4138
    iget-boolean v7, v7, Lo/getErrorCode;->onMessageChannelReady:Z

    if-eqz v7, :cond_5

    .line 137
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v7

    sget-object v8, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v1

    const-string v6, "Ignoring WorkSpec %s, Requires device idle."

    .line 138
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v1, [Ljava/lang/Throwable;

    .line 137
    invoke-virtual {v7, v8, v6, v9}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_3

    .line 140
    :cond_5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_7

    iget-object v7, v6, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 4245
    iget-object v7, v7, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 5063
    iget-object v7, v7, Lo/getErrorMessage;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_7

    .line 142
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v7

    sget-object v8, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v1

    const-string v6, "Ignoring WorkSpec %s, Requires ContentUri triggers."

    .line 143
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v1, [Ljava/lang/Throwable;

    .line 142
    invoke-virtual {v7, v8, v6, v9}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_3

    .line 146
    :cond_7
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v6, v6, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 150
    :cond_8
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v7

    sget-object v8, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    new-array v9, v2, [Ljava/lang/Object;

    iget-object v10, v6, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    aput-object v10, v9, v1

    const-string v10, "Starting work for %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v9, v10}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    iget-object v7, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    iget-object v6, v6, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    .line 5618
    iget-object v8, v7, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    new-instance v9, Lo/startSupportActionMode;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v6, v10}, Lo/startSupportActionMode;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Landroidx/work/WorkerParameters$extraCallback;)V

    .line 5619
    invoke-interface {v8, v9}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 158
    :cond_a
    iget-object p1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onTransact:Ljava/lang/Object;

    monitor-enter p1

    .line 159
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 160
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v5, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    const-string v6, "Starting tracking for [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, ","

    .line 161
    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 160
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v2, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 162
    iget-object v1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onPostMessage:Lo/getLifecycle;

    iget-object v1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->ICustomTabsCallback:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lo/getLifecycle;->onPostMessage(Ljava/lang/Iterable;)V

    .line 165
    :cond_b
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage(Ljava/lang/String;Z)V
    .locals 6

    .line 10216
    iget-object p2, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onTransact:Ljava/lang/Object;

    monitor-enter p2

    .line 10220
    :try_start_0
    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDestroy;

    .line 10221
    iget-object v2, v1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10222
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v2, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    const-string v3, "Stopping tracking for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, p1, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 10223
    iget-object p1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10224
    iget-object p1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onPostMessage:Lo/getLifecycle;

    iget-object v0, p0, Lo/PlaybackStateCompatApi21$CustomAction;->ICustomTabsCallback:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lo/getLifecycle;->onPostMessage(Ljava/lang/Iterable;)V

    .line 10228
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/PlaybackStateCompatApi21$CustomAction;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints met: Scheduling work ID %s"

    .line 194
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 192
    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 195
    iget-object v1, p0, Lo/PlaybackStateCompatApi21$CustomAction;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 9618
    iget-object v2, v1, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    new-instance v3, Lo/startSupportActionMode;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lo/startSupportActionMode;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Landroidx/work/WorkerParameters$extraCallback;)V

    .line 9619
    invoke-interface {v2, v3}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
