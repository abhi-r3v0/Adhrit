.class public Lo/isDataCollectionDefaultEnabled;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isDataCollectionDefaultEnabled$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static newSession:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile warmup:Lo/isDataCollectionDefaultEnabled$ICustomTabsCallback;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public ICustomTabsCallback$Stub:Z

.field public final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:Landroid/os/WorkSource;

.field public final extraCallback:Landroid/content/Context;

.field public final onMessageChannelReady:Landroid/os/PowerManager$WakeLock;

.field public final onNavigationEvent:I

.field public final onPostMessage:Ljava/lang/Object;

.field public onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field public onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lo/setDataCollectionDefaultEnabled;

    invoke-direct {v0}, Lo/setDataCollectionDefaultEnabled;-><init>()V

    sput-object v0, Lo/isDataCollectionDefaultEnabled;->warmup:Lo/isDataCollectionDefaultEnabled$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p0, p0, Lo/isDataCollectionDefaultEnabled;->onPostMessage:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lo/isDataCollectionDefaultEnabled;->ICustomTabsCallback$Stub:Z

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lo/isDataCollectionDefaultEnabled;->asBinder:Ljava/util/Map;

    .line 11
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lo/isDataCollectionDefaultEnabled;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_9

    .line 2007
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 15
    iput p2, p0, Lo/isDataCollectionDefaultEnabled;->onNavigationEvent:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lo/isDataCollectionDefaultEnabled;->extraCallback:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*gcore*:"

    .line 20
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lo/isDataCollectionDefaultEnabled;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lo/isDataCollectionDefaultEnabled;->ICustomTabsCallback:Ljava/lang/String;

    :goto_1
    const-string v1, "power"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 24
    invoke-virtual {v1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lo/isDataCollectionDefaultEnabled;->onMessageChannelReady:Landroid/os/PowerManager$WakeLock;

    .line 25
    invoke-static {p1}, Lo/component25;->onPostMessage(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p4, :cond_3

    .line 3003
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 30
    :cond_4
    invoke-static {p1, p4}, Lo/component25;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lo/isDataCollectionDefaultEnabled;->asInterface:Landroid/os/WorkSource;

    if-eqz p1, :cond_6

    .line 33
    iget-object p2, p0, Lo/isDataCollectionDefaultEnabled;->extraCallback:Landroid/content/Context;

    invoke-static {p2}, Lo/component25;->onPostMessage(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 34
    iget-object p2, p0, Lo/isDataCollectionDefaultEnabled;->asInterface:Landroid/os/WorkSource;

    if-eqz p2, :cond_5

    .line 35
    invoke-virtual {p2, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_3

    .line 36
    :cond_5
    iput-object p1, p0, Lo/isDataCollectionDefaultEnabled;->asInterface:Landroid/os/WorkSource;

    .line 37
    :goto_3
    iget-object p1, p0, Lo/isDataCollectionDefaultEnabled;->asInterface:Landroid/os/WorkSource;

    .line 38
    :try_start_0
    iget-object p2, p0, Lo/isDataCollectionDefaultEnabled;->onMessageChannelReady:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 41
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WakeLock"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_6
    :goto_5
    sget-object p1, Lo/isDataCollectionDefaultEnabled;->newSession:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_7

    .line 43
    invoke-static {}, Lo/getFarmTitle;->onPostMessage()Lo/getFarmTitle$onMessageChannelReady;

    move-result-object p1

    invoke-interface {p1}, Lo/getFarmTitle$onMessageChannelReady;->ICustomTabsCallback()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sput-object p1, Lo/isDataCollectionDefaultEnabled;->newSession:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_7
    return-void

    .line 2008
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WakeLock: wakeLockName must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1011
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "WakeLock: context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;B)V
    .locals 0

    const/4 p2, 0x1

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lo/isDataCollectionDefaultEnabled;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 3
    invoke-direct/range {v1 .. v6}, Lo/isDataCollectionDefaultEnabled;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/isDataCollectionDefaultEnabled;I)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lo/isDataCollectionDefaultEnabled;->ICustomTabsCallback()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 103
    iget-object v0, p0, Lo/isDataCollectionDefaultEnabled;->onMessageChannelReady:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :try_start_0
    iget-object v0, p0, Lo/isDataCollectionDefaultEnabled;->onMessageChannelReady:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lo/isDataCollectionDefaultEnabled;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was already released!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeLock"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :goto_0
    iget-object v0, p0, Lo/isDataCollectionDefaultEnabled;->onMessageChannelReady:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    goto :goto_1

    .line 109
    :cond_0
    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public final ICustomTabsCallback(J)V
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v12, p1

    .line 47
    iget-object v0, v1, Lo/isDataCollectionDefaultEnabled;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4112
    iget-boolean v0, v1, Lo/isDataCollectionDefaultEnabled;->ICustomTabsCallback$Stub:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    :cond_0
    iget-object v14, v1, Lo/isDataCollectionDefaultEnabled;->onPostMessage:Ljava/lang/Object;

    monitor-enter v14

    .line 53
    :try_start_0
    iget-object v0, v1, Lo/isDataCollectionDefaultEnabled;->asBinder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, v1, Lo/isDataCollectionDefaultEnabled;->onTransact:I

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, v1, Lo/isDataCollectionDefaultEnabled;->onMessageChannelReady:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    iget-object v0, v1, Lo/isDataCollectionDefaultEnabled;->asBinder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 55
    iput v3, v1, Lo/isDataCollectionDefaultEnabled;->onTransact:I

    .line 56
    :cond_2
    iget-boolean v0, v1, Lo/isDataCollectionDefaultEnabled;->ICustomTabsCallback$Stub:Z

    const/4 v15, 0x1

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, v1, Lo/isDataCollectionDefaultEnabled;->asBinder:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 59
    iget-object v0, v1, Lo/isDataCollectionDefaultEnabled;->asBinder:Ljava/util/Map;

    new-array v4, v15, [Ljava/lang/Integer;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_0

    .line 61
    :cond_3
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    :goto_0
    if-nez v3, :cond_5

    .line 63
    :cond_4
    iget-boolean v0, v1, Lo/isDataCollectionDefaultEnabled;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_6

    iget v0, v1, Lo/isDataCollectionDefaultEnabled;->onTransact:I

    if-nez v0, :cond_6

    .line 64
    :cond_5
    iget-object v0, v1, Lo/isDataCollectionDefaultEnabled;->extraCallback:Landroid/content/Context;

    iget-object v3, v1, Lo/isDataCollectionDefaultEnabled;->onMessageChannelReady:Landroid/os/PowerManager$WakeLock;

    .line 65
    invoke-static {v3, v2}, Lo/getStoreAssociationSubHeader;->onNavigationEvent(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    iget-object v5, v1, Lo/isDataCollectionDefaultEnabled;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v1, Lo/isDataCollectionDefaultEnabled;->onNavigationEvent:I

    .line 66
    invoke-virtual/range {p0 .. p0}, Lo/isDataCollectionDefaultEnabled;->onMessageChannelReady()Ljava/util/List;

    move-result-object v9

    move-object v2, v0

    move-wide/from16 v10, p1

    .line 67
    invoke-static/range {v2 .. v11}, Lo/removeItemAtIndex;->onPostMessage(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    .line 68
    iget v0, v1, Lo/isDataCollectionDefaultEnabled;->onTransact:I

    add-int/2addr v0, v15

    iput v0, v1, Lo/isDataCollectionDefaultEnabled;->onTransact:I

    .line 69
    :cond_6
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, v1, Lo/isDataCollectionDefaultEnabled;->onMessageChannelReady:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-wide/16 v2, 0x0

    cmp-long v0, v12, v2

    if-lez v0, :cond_7

    .line 73
    sget-object v0, Lo/isDataCollectionDefaultEnabled;->newSession:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lo/checkNotDeleted;

    invoke-direct {v2, v1}, Lo/checkNotDeleted;-><init>(Lo/isDataCollectionDefaultEnabled;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-interface {v0, v2, v12, v13, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 69
    monitor-exit v14

    throw v0
.end method

.method public final onMessageChannelReady()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/isDataCollectionDefaultEnabled;->asInterface:Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3061
    :cond_0
    invoke-static {v0}, Lo/component25;->onNavigationEvent(Landroid/os/WorkSource;)I

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    .line 3063
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3064
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 3066
    invoke-static {v0, v4}, Lo/component25;->ICustomTabsCallback(Landroid/os/WorkSource;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 4003
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_4

    .line 3068
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-object v3
.end method
