.class public final Lo/setStatusBarForegroundColor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final asBinder:Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private volatile asInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/getDefaultsFromXml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getDefaultsFromXml<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/String;

.field private volatile onTransact:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/setStatusBarForegroundColor;->asBinder:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lo/getDefaultsFromXml;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;",
            "Lo/getDefaultsFromXml<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setStatusBarForegroundColor;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lo/setStatusBarForegroundColor;->asInterface:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lo/setStatusBarForegroundColor;->onTransact:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lo/setStatusBarForegroundColor;->onPostMessage:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lo/setStatusBarForegroundColor;->onNavigationEvent:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lo/setStatusBarForegroundColor;->extraCallback:Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lo/setStatusBarForegroundColor;->onMessageChannelReady:Lo/getDefaultsFromXml;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lo/getDefaultsFromXml;Lo/acquireWakeLock;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setStatusBarForegroundColor;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lo/getDefaultsFromXml;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/setStatusBarForegroundColor;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_0

    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lo/setElevation;->extraCallback:Lo/setStartIconContentDescription;

    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lo/setStatusBarForegroundColor;->onNavigationEvent:Ljava/lang/Object;

    return-object p1

    .line 18
    :cond_1
    sget-object p1, Lo/setStatusBarForegroundColor;->asBinder:Ljava/lang/Object;

    monitor-enter p1

    .line 19
    :try_start_1
    invoke-static {}, Lo/setStartIconContentDescription;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lo/setStatusBarForegroundColor;->onTransact:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/setStatusBarForegroundColor;->onNavigationEvent:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/setStatusBarForegroundColor;->onTransact:Ljava/lang/Object;

    :goto_0
    monitor-exit p1

    return-object v0

    .line 21
    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-static {}, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$4()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setStatusBarForegroundColor;

    .line 24
    invoke-static {}, Lo/setStartIconContentDescription;->onPostMessage()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 26
    :try_start_3
    iget-object v2, v0, Lo/setStatusBarForegroundColor;->onMessageChannelReady:Lo/getDefaultsFromXml;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lo/setStatusBarForegroundColor;->onMessageChannelReady:Lo/getDefaultsFromXml;

    invoke-interface {v2}, Lo/getDefaultsFromXml;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 30
    :catch_0
    :cond_4
    :try_start_4
    sget-object v2, Lo/setStatusBarForegroundColor;->asBinder:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 31
    :try_start_5
    iput-object v1, v0, Lo/setStatusBarForegroundColor;->onTransact:Ljava/lang/Object;

    .line 32
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    .line 25
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Refreshing flag cache must be done on a worker thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    nop

    .line 35
    :cond_6
    iget-object p1, p0, Lo/setStatusBarForegroundColor;->onMessageChannelReady:Lo/getDefaultsFromXml;

    if-nez p1, :cond_7

    .line 36
    iget-object p1, p0, Lo/setStatusBarForegroundColor;->onNavigationEvent:Ljava/lang/Object;

    return-object p1

    .line 37
    :cond_7
    :try_start_7
    invoke-interface {p1}, Lo/getDefaultsFromXml;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    return-object p1

    .line 41
    :catch_2
    iget-object p1, p0, Lo/setStatusBarForegroundColor;->onNavigationEvent:Ljava/lang/Object;

    return-object p1

    .line 39
    :catch_3
    iget-object p1, p0, Lo/setStatusBarForegroundColor;->onNavigationEvent:Ljava/lang/Object;

    return-object p1

    :catchall_1
    move-exception v0

    .line 21
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 13
    :goto_2
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_2
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/setStatusBarForegroundColor;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method
