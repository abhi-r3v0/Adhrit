.class public final Lo/da;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDefaultCipherSuites;


# static fields
.field private static final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lo/da;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:[Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private volatile asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Landroid/net/Uri;

.field private final onMessageChannelReady:Landroid/database/ContentObserver;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    sput-object v0, Lo/da;->ICustomTabsCallback:Ljava/util/Map;

    const-string v0, "key"

    const-string v1, "value"

    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/da;->onRelationshipValidationResult:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/cV;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/cV;-><init>(Lo/da;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/da;->onMessageChannelReady:Landroid/database/ContentObserver;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/da;->onNavigationEvent:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/da;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lo/da;->onPostMessage:Landroid/content/ContentResolver;

    .line 6
    iput-object p2, p0, Lo/da;->extraCallback:Landroid/net/Uri;

    .line 7
    iget-object v0, p0, Lo/da;->onMessageChannelReady:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static declared-synchronized ICustomTabsCallback()V
    .locals 4

    const-class v0, Lo/da;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lo/da;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/da;

    .line 48
    iget-object v3, v2, Lo/da;->onPostMessage:Landroid/content/ContentResolver;

    iget-object v2, v2, Lo/da;->onMessageChannelReady:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object v1, Lo/da;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onNavigationEvent(Landroid/content/ContentResolver;Landroid/net/Uri;)Lo/da;
    .locals 3

    .line 9
    const-class v0, Lo/da;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lo/da;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/da;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 12
    :try_start_1
    new-instance v2, Lo/da;

    invoke-direct {v2, p0, p1}, Lo/da;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    sget-object p0, Lo/da;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-object v1, v2

    .line 16
    :catch_1
    :cond_0
    :try_start_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private final onPostMessage()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 38
    :try_start_0
    new-instance v1, Lo/getInputStream;

    invoke-direct {v1, p0}, Lo/getInputStream;-><init>(Lo/da;)V

    invoke-static {v1}, Lo/getReadTimeout;->onNavigationEvent(Lo/dc;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v1, "ConfigurationContentLoader"

    const-string v2, "PhenotypeFlag unable to load ContentProvider, using default values"

    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x0

    return-object v0

    .line 45
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 46
    throw v1
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/da;->extraCallback()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final extraCallback()Ljava/util/Map;
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

    .line 18
    iget-object v0, p0, Lo/da;->asInterface:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 20
    iget-object v1, p0, Lo/da;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v0, p0, Lo/da;->asInterface:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 23
    invoke-direct {p0}, Lo/da;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lo/da;->asInterface:Ljava/util/Map;

    .line 25
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 26
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final synthetic onMessageChannelReady()Ljava/util/Map;
    .locals 6

    .line 55
    iget-object v0, p0, Lo/da;->onPostMessage:Landroid/content/ContentResolver;

    iget-object v1, p0, Lo/da;->extraCallback:Landroid/net/Uri;

    sget-object v2, Lo/da;->onRelationshipValidationResult:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_1
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2

    .line 64
    :try_start_1
    new-instance v2, Lo/postOrRun;

    invoke-direct {v2, v1}, Lo/postOrRun;-><init>(I)V

    goto :goto_0

    .line 65
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 66
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 67
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 72
    throw v1
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 27
    iget-object v0, p0, Lo/da;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 28
    :try_start_0
    iput-object v1, p0, Lo/da;->asInterface:Ljava/util/Map;

    .line 29
    invoke-static {}, Lo/MethodNotAllowedException;->onMessageChannelReady()V

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lo/da;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setInputStream;

    .line 34
    invoke-interface {v1}, Lo/setInputStream;->ICustomTabsCallback()V

    goto :goto_0

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 30
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
