.class public final Lo/setCircleProgressColorTwo;
.super Ljava/lang/Object;


# static fields
.field private static final extraCallback:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Uri;",
            "Lo/setCircleProgressColorTwo;",
            ">;"
        }
    .end annotation
.end field

.field private static final onTransact:[Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Landroid/database/ContentObserver;

.field private final ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private volatile asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setPointerAngle;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Landroid/content/ContentResolver;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/setCircleProgressColorTwo;->extraCallback:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "key"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setCircleProgressColorTwo;->onTransact:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setCircleProgressColorTwo;->onNavigationEvent:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setCircleProgressColorTwo;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setCircleProgressColorTwo;->asInterface:Ljava/util/List;

    iput-object p1, p0, Lo/setCircleProgressColorTwo;->onMessageChannelReady:Landroid/content/ContentResolver;

    iput-object p2, p0, Lo/setCircleProgressColorTwo;->onPostMessage:Landroid/net/Uri;

    new-instance p1, Lo/setInnerCircleFillColor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lo/setInnerCircleFillColor;-><init>(Lo/setCircleProgressColorTwo;Landroid/os/Handler;)V

    iput-object p1, p0, Lo/setCircleProgressColorTwo;->ICustomTabsCallback:Landroid/database/ContentObserver;

    return-void
.end method

.method private final ICustomTabsCallback()V
    .locals 3

    iget-object v0, p0, Lo/setCircleProgressColorTwo;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setCircleProgressColorTwo;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setPointerAngle;

    invoke-interface {v2}, Lo/setPointerAngle;->onMessageChannelReady()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static extraCallback(Landroid/content/ContentResolver;Landroid/net/Uri;)Lo/setCircleProgressColorTwo;
    .locals 3

    sget-object v0, Lo/setCircleProgressColorTwo;->extraCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setCircleProgressColorTwo;

    if-nez v0, :cond_1

    new-instance v0, Lo/setCircleProgressColorTwo;

    invoke-direct {v0, p0, p1}, Lo/setCircleProgressColorTwo;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    sget-object p0, Lo/setCircleProgressColorTwo;->extraCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setCircleProgressColorTwo;

    if-nez p0, :cond_0

    iget-object p0, v0, Lo/setCircleProgressColorTwo;->onMessageChannelReady:Landroid/content/ContentResolver;

    iget-object p1, v0, Lo/setCircleProgressColorTwo;->onPostMessage:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, v0, Lo/setCircleProgressColorTwo;->ICustomTabsCallback:Landroid/database/ContentObserver;

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final onNavigationEvent()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lo/setCircleProgressColorTwo;->onMessageChannelReady:Landroid/content/ContentResolver;

    iget-object v2, p0, Lo/setCircleProgressColorTwo;->onPostMessage:Landroid/net/Uri;

    sget-object v3, Lo/setCircleProgressColorTwo;->onTransact:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    const-string v0, "ConfigurationContentLoader"

    const-string v1, "PhenotypeFlag unable to load ContentProvider, using default values"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/setCircleProgressColorTwo;)V
    .locals 0

    invoke-direct {p0}, Lo/setCircleProgressColorTwo;->ICustomTabsCallback()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/setCircleProgressColorTwo;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lo/setCircleProgressColorTwo;->asBinder:Ljava/util/Map;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "gms:phenotype:phenotype_flag:debug_disable_caching"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/setOnSeekerChangeListener;->extraCallback(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/setCircleProgressColorTwo;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/setCircleProgressColorTwo;->asBinder:Ljava/util/Map;

    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lo/setCircleProgressColorTwo;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lo/setCircleProgressColorTwo;->asBinder:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/setCircleProgressColorTwo;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/setCircleProgressColorTwo;->asBinder:Ljava/util/Map;

    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
