.class public final Lo/MediaSessionCompat$MediaSessionImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;,
        Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;,
        Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;
    }
.end annotation


# static fields
.field private static final asBinder:[Ljava/lang/String;


# instance fields
.field ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile ICustomTabsCallback$Stub:Lo/getDrawerToggleDelegate$onNavigationEvent;

.field final asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21<",
            "Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;",
            "Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field volatile extraCallback:Z

.field private final newSession:Lo/getInterfaceDescriptor;

.field final onMessageChannelReady:Lo/setCurrentControllerInfo;

.field final onNavigationEvent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:[Ljava/lang/String;

.field onRelationshipValidationResult:Ljava/lang/Runnable;

.field private onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private warmup:Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    .line 65
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/MediaSessionCompat$MediaSessionImpl;->asBinder:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lo/setCurrentControllerInfo;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCurrentControllerInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    iput-boolean v1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->extraCallback:Z

    .line 107
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    .line 357
    new-instance v0, Lo/MediaSessionCompat$MediaSessionImpl$2;

    invoke-direct {v0, p0}, Lo/MediaSessionCompat$MediaSessionImpl$2;-><init>(Lo/MediaSessionCompat$MediaSessionImpl;)V

    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onRelationshipValidationResult:Ljava/lang/Runnable;

    .line 134
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 135
    new-instance p1, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;

    array-length v0, p4

    invoke-direct {p1, v0}, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;-><init>(I)V

    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->warmup:Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;

    .line 136
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent:Ljava/util/HashMap;

    .line 137
    iput-object p3, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onTransact:Ljava/util/Map;

    .line 138
    new-instance p1, Lo/getInterfaceDescriptor;

    iget-object p3, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    invoke-direct {p1, p3}, Lo/getInterfaceDescriptor;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->newSession:Lo/getInterfaceDescriptor;

    .line 139
    array-length p1, p4

    .line 140
    new-array p3, p1, [Ljava/lang/String;

    iput-object p3, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onPostMessage:[Ljava/lang/String;

    :goto_0
    if-ge v1, p1, :cond_1

    .line 142
    aget-object p3, p4, v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 143
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    aget-object v0, p4, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    iget-object p3, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onPostMessage:[Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_1

    .line 148
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onPostMessage:[Ljava/lang/String;

    aput-object p3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 155
    iget-object p4, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 156
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 157
    iget-object p4, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method private ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;I)V
    .locals 7

    .line 208
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onPostMessage:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    sget-object v1, Lo/MediaSessionCompat$MediaSessionImpl;->asBinder:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "DROP TRIGGER IF EXISTS "

    .line 212
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "`room_table_modification_trigger_"

    .line 1199
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    .line 1202
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "`"

    .line 1204
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onPostMessage(Lo/MediaControllerCompatApi21$Callback;I)V
    .locals 8

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onPostMessage:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    sget-object v2, Lo/MediaSessionCompat$MediaSessionImpl;->asBinder:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 224
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    .line 225
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "`room_table_modification_trigger_"

    .line 2199
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    .line 2202
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "`"

    .line 2204
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AFTER "

    .line 227
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ON `"

    .line 229
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "` BEGIN UPDATE room_table_modification_log SET invalidated"

    .line 231
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = 1 WHERE table_id = "

    .line 233
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " AND invalidated = 0; END"

    .line 235
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;)V
    .locals 8

    .line 258
    iget-object v0, p1, Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;->ICustomTabsCallback:[Ljava/lang/String;

    .line 2296
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2297
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 2298
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 2299
    iget-object v7, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onTransact:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2300
    iget-object v5, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onTransact:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2302
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2305
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 259
    array-length v1, v0

    new-array v1, v1, [I

    .line 260
    array-length v2, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    .line 263
    iget-object v5, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent:Ljava/util/HashMap;

    aget-object v6, v0, v4

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 267
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 265
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is no table with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 269
    :cond_3
    new-instance v2, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;

    invoke-direct {v2, p1, v1, v0}, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;-><init>(Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;[I[Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v4, p0, Lo/MediaSessionCompat$MediaSessionImpl;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v4, p1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;

    .line 273
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    .line 274
    iget-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->warmup:Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;

    invoke-virtual {p1, v1}, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->extraCallback([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2535
    iget-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 3234
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onPostMessage:Lo/MediaControllerCompatApi21$Callback;

    if-eqz p1, :cond_4

    .line 3235
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    .line 2538
    iget-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 4189
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    .line 2538
    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 273
    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 7

    .line 480
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 7111
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :try_start_1
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->warmup:Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;

    invoke-virtual {v1}, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->extraCallback()[I

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_1

    .line 516
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 497
    :cond_1
    :try_start_3
    array-length v2, v1

    .line 498
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    .line 501
    :try_start_4
    aget v5, v1, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto :goto_2

    .line 506
    :cond_2
    invoke-direct {p0, p1, v4}, Lo/MediaSessionCompat$MediaSessionImpl;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;I)V

    goto :goto_2

    .line 503
    :cond_3
    invoke-direct {p0, p1, v4}, Lo/MediaSessionCompat$MediaSessionImpl;->onPostMessage(Lo/MediaControllerCompatApi21$Callback;I)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 510
    :cond_4
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 512
    :try_start_5
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback()V

    .line 514
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->warmup:Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;

    .line 7821
    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 7822
    :try_start_6
    iput-boolean v3, v1, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onMessageChannelReady:Z

    .line 7823
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 516
    :try_start_7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7823
    :try_start_8
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception v1

    .line 512
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback()V

    .line 513
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 516
    :try_start_9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 517
    throw p1
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    const-string v0, "ROOM"

    const-string v1, "Cannot run invalidation tracker. Is the db closed?"

    .line 521
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onPostMessage(Lo/MediaSessionCompat$MediaSessionImpl$ICustomTabsCallback;)V
    .locals 2

    .line 333
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v1, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;

    .line 335
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 336
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImpl;->warmup:Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;

    iget-object p1, p1, Lo/MediaSessionCompat$MediaSessionImpl$extraCallback;->ICustomTabsCallback:[I

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$MediaSessionImpl$onMessageChannelReady;->onMessageChannelReady([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4535
    iget-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 5234
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onPostMessage:Lo/MediaControllerCompatApi21$Callback;

    if-eqz p1, :cond_0

    .line 5235
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4538
    iget-object p1, p0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 6189
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    .line 4538
    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 335
    monitor-exit v0

    throw p1
.end method
