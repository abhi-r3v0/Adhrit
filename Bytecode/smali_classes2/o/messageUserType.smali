.class final Lo/messageUserType;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onNavigationEvent:Lo/messageUserType;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/setReplacementStr<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/setRegex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/messageUserType;

    invoke-direct {v0}, Lo/messageUserType;-><init>()V

    sput-object v0, Lo/messageUserType;->onNavigationEvent:Lo/messageUserType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/messageUserType;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    new-instance v0, Lo/getMessageUserAlias;

    invoke-direct {v0}, Lo/getMessageUserAlias;-><init>()V

    iput-object v0, p0, Lo/messageUserType;->extraCallback:Lo/setRegex;

    return-void
.end method

.method public static onNavigationEvent()Lo/messageUserType;
    .locals 1

    .line 1
    sget-object v0, Lo/messageUserType;->onNavigationEvent:Lo/messageUserType;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Class;)Lo/setReplacementStr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/setReplacementStr<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Lo/fromString;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lo/messageUserType;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setReplacementStr;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lo/messageUserType;->extraCallback:Lo/setRegex;

    invoke-interface {v1, p1}, Lo/setRegex;->onNavigationEvent(Ljava/lang/Class;)Lo/setReplacementStr;

    move-result-object v1

    .line 7
    invoke-static {p1, v0}, Lo/fromString;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 8
    invoke-static {v1, v0}, Lo/fromString;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lo/messageUserType;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setReplacementStr;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final onPostMessage(Ljava/lang/Object;)Lo/setReplacementStr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/setReplacementStr<",
            "TT;>;"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/messageUserType;->extraCallback(Ljava/lang/Class;)Lo/setReplacementStr;

    move-result-object p1

    return-object p1
.end method
