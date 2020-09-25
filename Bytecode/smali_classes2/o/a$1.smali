.class public Lo/a$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Ljava/util/regex/Pattern;

.field private static ICustomTabsCallback$Stub:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ICustomTabsService:Ljava/lang/Object;

.field private static final asBinder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final asInterface:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Landroid/net/Uri;

.field private static getInterfaceDescriptor:[Ljava/lang/String;

.field private static final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final onNavigationEvent:Ljava/util/regex/Pattern;

.field private static final onPostMessage:Landroid/net/Uri;

.field private static final onRelationshipValidationResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final onTransact:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.google.android.gsf.gservices"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lo/a$1;->extraCallback:Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    .line 74
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lo/a$1;->onPostMessage:Landroid/net/Uri;

    const/4 v0, 0x2

    const-string v1, "^(1|true|t|on|yes|y)$"

    .line 76
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lo/a$1;->onNavigationEvent:Ljava/util/regex/Pattern;

    const-string v1, "^(0|false|f|off|no|n)$"

    .line 78
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/a$1;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lo/a$1;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/a$1;->onTransact:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/a$1;->asBinder:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/a$1;->asInterface:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/a$1;->onRelationshipValidationResult:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 84
    sput-object v0, Lo/a$1;->getInterfaceDescriptor:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 2
    const-class p2, Lo/a$1;

    monitor-enter p2

    .line 4
    :try_start_0
    sget-object v0, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lo/a$1;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/a$1;->ICustomTabsService:Ljava/lang/Object;

    .line 8
    sput-boolean v2, Lo/a$1;->warmup:Z

    .line 9
    sget-object v0, Lo/a$1;->extraCallback:Landroid/net/Uri;

    new-instance v4, Lo/cX;

    invoke-direct {v4, v3}, Lo/cX;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lo/a$1;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 12
    sget-object v0, Lo/a$1;->onTransact:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 13
    sget-object v0, Lo/a$1;->asBinder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 14
    sget-object v0, Lo/a$1;->asInterface:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 15
    sget-object v0, Lo/a$1;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/a$1;->ICustomTabsService:Ljava/lang/Object;

    .line 17
    sput-boolean v2, Lo/a$1;->warmup:Z

    .line 18
    :cond_1
    :goto_0
    sget-object v0, Lo/a$1;->ICustomTabsService:Ljava/lang/Object;

    .line 19
    sget-object v4, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    sget-object p0, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    move-object v3, p0

    .line 21
    :cond_2
    monitor-exit p2

    return-object v3

    .line 22
    :cond_3
    sget-object v4, Lo/a$1;->getInterfaceDescriptor:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 23
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 24
    sget-boolean v0, Lo/a$1;->warmup:Z

    if-eqz v0, :cond_4

    sget-object v0, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    :cond_4
    sget-object v0, Lo/a$1;->getInterfaceDescriptor:[Ljava/lang/String;

    .line 26
    sget-object v2, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lo/a$1;->onNavigationEvent(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 27
    sput-boolean v1, Lo/a$1;->warmup:Z

    .line 28
    sget-object p0, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 29
    sget-object p0, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    move-object v3, p0

    .line 30
    :cond_5
    monitor-exit p2

    return-object v3

    .line 31
    :cond_6
    monitor-exit p2

    return-object v3

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 33
    :cond_8
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    sget-object v5, Lo/a$1;->extraCallback:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v1, [Ljava/lang/String;

    aput-object p1, v8, v2

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_a

    if-eqz p0, :cond_9

    .line 38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v3

    .line 40
    :cond_a
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_c

    .line 41
    invoke-static {v0, p1, v3}, Lo/a$1;->extraCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_b

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v3

    .line 45
    :cond_c
    :try_start_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 46
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object p2, v3

    .line 48
    :cond_d
    invoke-static {v0, p1, p2}, Lo/a$1;->extraCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_e

    move-object v3, p2

    :cond_e
    if-eqz p0, :cond_f

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_f
    return-object v3

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_10

    .line 54
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_10
    throw p1

    :catchall_1
    move-exception p0

    .line 33
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method static synthetic extraCallback()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 70
    sget-object v0, Lo/a$1;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static extraCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 56
    const-class v0, Lo/a$1;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lo/a$1;->ICustomTabsService:Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    .line 58
    sget-object p0, Lo/a$1;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static varargs onNavigationEvent(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v1, Lo/a$1;->onPostMessage:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 61
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    if-nez p0, :cond_0

    return-object p1

    .line 63
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 64
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 67
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 68
    throw p1
.end method
