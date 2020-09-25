.class public Lo/getMaxSize;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMaxSize$extraCallback;
    }
.end annotation


# static fields
.field private static volatile ICustomTabsCallback:Z = false

.field private static extraCallback:Z = true

.field private static volatile onMessageChannelReady:Lo/getMaxSize;

.field private static final onNavigationEvent:Lo/getMaxSize;

.field private static volatile onPostMessage:Lo/getMaxSize;


# instance fields
.field private final onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/getMaxSize$extraCallback;",
            "Lo/fa$asInterface<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lo/getMaxSize;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/getMaxSize;-><init>(Z)V

    sput-object v0, Lo/getMaxSize;->onNavigationEvent:Lo/getMaxSize;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getMaxSize;->onTransact:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/getMaxSize;->onTransact:Ljava/util/Map;

    return-void
.end method

.method public static extraCallback()Lo/getMaxSize;
    .locals 2

    .line 1
    sget-object v0, Lo/getMaxSize;->onPostMessage:Lo/getMaxSize;

    if-nez v0, :cond_1

    .line 3
    const-class v1, Lo/getMaxSize;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Lo/getMaxSize;->onPostMessage:Lo/getMaxSize;

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lo/getMaxSize;->onNavigationEvent:Lo/getMaxSize;

    sput-object v0, Lo/getMaxSize;->onPostMessage:Lo/getMaxSize;

    .line 8
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
    return-object v0
.end method

.method public static onMessageChannelReady()Lo/getMaxSize;
    .locals 2

    .line 10
    const-class v0, Lo/getMaxSize;

    sget-object v1, Lo/getMaxSize;->onMessageChannelReady:Lo/getMaxSize;

    if-eqz v1, :cond_0

    return-object v1

    .line 13
    :cond_0
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lo/getMaxSize;->onMessageChannelReady:Lo/getMaxSize;

    if-eqz v1, :cond_1

    .line 16
    monitor-exit v0

    return-object v1

    .line 18
    :cond_1
    invoke-static {v0}, Lo/eZ;->onMessageChannelReady(Ljava/lang/Class;)Lo/getMaxSize;

    move-result-object v1

    .line 20
    sput-object v1, Lo/getMaxSize;->onMessageChannelReady:Lo/getMaxSize;

    .line 21
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final extraCallback(Lo/ek;I)Lo/fa$asInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lo/ek;",
            ">(TContainingType;I)",
            "Lo/fa$asInterface<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/getMaxSize;->onTransact:Ljava/util/Map;

    new-instance v1, Lo/getMaxSize$extraCallback;

    invoke-direct {v1, p1, p2}, Lo/getMaxSize$extraCallback;-><init>(Ljava/lang/Object;I)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/fa$asInterface;

    return-object p1
.end method
