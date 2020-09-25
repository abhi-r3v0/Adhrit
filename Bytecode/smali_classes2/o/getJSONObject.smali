.class final Lo/getJSONObject;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onNavigationEvent:Lo/getJSONObject;


# instance fields
.field private final onMessageChannelReady:Lo/putDouble;

.field private final onPostMessage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/fP<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/getJSONObject;

    invoke-direct {v0}, Lo/getJSONObject;-><init>()V

    sput-object v0, Lo/getJSONObject;->onNavigationEvent:Lo/getJSONObject;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/getJSONObject;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    new-instance v0, Lo/bg$a;

    invoke-direct {v0}, Lo/bg$a;-><init>()V

    iput-object v0, p0, Lo/getJSONObject;->onMessageChannelReady:Lo/putDouble;

    return-void
.end method

.method public static onPostMessage()Lo/getJSONObject;
    .locals 1

    .line 1
    sget-object v0, Lo/getJSONObject;->onNavigationEvent:Lo/getJSONObject;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Lo/fP;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/fP<",
            "TT;>;"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/getJSONObject;->onNavigationEvent(Ljava/lang/Class;)Lo/fP;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Class;)Lo/fP;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/fP<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Lo/fG;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lo/getJSONObject;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fP;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lo/getJSONObject;->onMessageChannelReady:Lo/putDouble;

    invoke-interface {v1, p1}, Lo/putDouble;->extraCallback(Ljava/lang/Class;)Lo/fP;

    move-result-object v1

    .line 7
    invoke-static {p1, v0}, Lo/fG;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 8
    invoke-static {v1, v0}, Lo/fG;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lo/getJSONObject;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/fP;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method
