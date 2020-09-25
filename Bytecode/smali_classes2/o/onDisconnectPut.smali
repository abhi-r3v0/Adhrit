.class final Lo/onDisconnectPut;
.super Lo/onReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onDisconnectPut$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lo/onDisconnectPut$onMessageChannelReady;",
            "Lo/onDisconnectPut$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Ljava/util/logging/Logger;

.field private static final onNavigationEvent:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lo/onDisconnectPut;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onPostMessage:Lo/onDisconnectPut$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lo/onDisconnectPut;->onNavigationEvent:Ljava/lang/ref/ReferenceQueue;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/onDisconnectPut;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    .line 37
    const-class v0, Lo/onDisconnectPut;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/onDisconnectPut;->onMessageChannelReady:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lo/insert;)V
    .locals 2

    .line 43
    sget-object v0, Lo/onDisconnectPut;->onNavigationEvent:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Lo/onDisconnectPut;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1, v0, v1}, Lo/onDisconnectPut;-><init>(Lo/insert;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method private constructor <init>(Lo/insert;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/insert;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lo/onDisconnectPut;",
            ">;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lo/onDisconnectPut$onMessageChannelReady;",
            "Lo/onDisconnectPut$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lo/onReady;-><init>(Lo/insert;)V

    .line 52
    new-instance v0, Lo/onDisconnectPut$onMessageChannelReady;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/onDisconnectPut$onMessageChannelReady;-><init>(Lo/onDisconnectPut;Lo/insert;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lo/onDisconnectPut;->onPostMessage:Lo/onDisconnectPut$onMessageChannelReady;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Ljava/util/logging/Logger;
    .locals 1

    .line 31
    sget-object v0, Lo/onDisconnectPut;->onMessageChannelReady:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/insert;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/onDisconnectPut;->onPostMessage:Lo/onDisconnectPut$onMessageChannelReady;

    invoke-static {v0}, Lo/onDisconnectPut$onMessageChannelReady;->onMessageChannelReady(Lo/onDisconnectPut$onMessageChannelReady;)Z

    .line 65
    iget-object v0, p0, Lo/onDisconnectPut;->onPostMessage:Lo/onDisconnectPut$onMessageChannelReady;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 66
    invoke-super {p0}, Lo/onReady;->onMessageChannelReady()Lo/insert;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Lo/insert;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/onDisconnectPut;->onPostMessage:Lo/onDisconnectPut$onMessageChannelReady;

    invoke-static {v0}, Lo/onDisconnectPut$onMessageChannelReady;->onMessageChannelReady(Lo/onDisconnectPut$onMessageChannelReady;)Z

    .line 58
    iget-object v0, p0, Lo/onDisconnectPut;->onPostMessage:Lo/onDisconnectPut$onMessageChannelReady;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 59
    invoke-super {p0}, Lo/onReady;->onNavigationEvent()Lo/insert;

    move-result-object v0

    return-object v0
.end method
