.class final Lo/bg$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/putDouble;


# static fields
.field private static final ICustomTabsCallback:Lo/eg;


# instance fields
.field private final onNavigationEvent:Lo/eg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lo/gx;

    invoke-direct {v0}, Lo/gx;-><init>()V

    sput-object v0, Lo/bg$a;->ICustomTabsCallback:Lo/eg;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    new-instance v0, Lo/bg$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/eg;

    .line 3
    invoke-static {}, Lo/eX;->onMessageChannelReady()Lo/eX;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lo/bg$a;->extraCallback()Lo/eg;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo/bg$b;-><init>([Lo/eg;)V

    .line 4
    invoke-direct {p0, v0}, Lo/bg$a;-><init>(Lo/eg;)V

    return-void
.end method

.method private constructor <init>(Lo/eg;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 7
    invoke-static {p1, v0}, Lo/fG;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/eg;

    iput-object p1, p0, Lo/bg$a;->onNavigationEvent:Lo/eg;

    return-void
.end method

.method private static extraCallback()Lo/eg;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 54
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/eg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    sget-object v0, Lo/bg$a;->ICustomTabsCallback:Lo/eg;

    return-object v0
.end method

.method private static onMessageChannelReady(Lo/eh;)Z
    .locals 1

    .line 53
    invoke-interface {p0}, Lo/eh;->onNavigationEvent()I

    move-result p0

    sget v0, Lo/fa$onMessageChannelReady;->asInterface:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Class;)Lo/fP;
    .locals 8
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

    .line 9
    invoke-static {p1}, Lo/ev;->extraCallback(Ljava/lang/Class;)V

    .line 10
    iget-object v0, p0, Lo/bg$a;->onNavigationEvent:Lo/eg;

    invoke-interface {v0, p1}, Lo/eg;->onPostMessage(Ljava/lang/Class;)Lo/eh;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lo/eh;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-class v0, Lo/fa;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Lo/ev;->onPostMessage()Lo/FreshchatReceiver;

    move-result-object p1

    .line 14
    invoke-static {}, Lo/eQ;->onNavigationEvent()Lo/ak$2;

    move-result-object v0

    .line 15
    invoke-interface {v2}, Lo/eh;->onMessageChannelReady()Lo/ek;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lo/eo;->ICustomTabsCallback(Lo/FreshchatReceiver;Lo/ak$2;Lo/ek;)Lo/eo;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Lo/ev;->ICustomTabsCallback()Lo/FreshchatReceiver;

    move-result-object p1

    .line 18
    invoke-static {}, Lo/eQ;->onPostMessage()Lo/ak$2;

    move-result-object v0

    .line 19
    invoke-interface {v2}, Lo/eh;->onMessageChannelReady()Lo/ek;

    move-result-object v1

    .line 20
    invoke-static {p1, v0, v1}, Lo/eo;->ICustomTabsCallback(Lo/FreshchatReceiver;Lo/ak$2;Lo/ek;)Lo/eo;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    const-class v0, Lo/fa;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v2}, Lo/bg$a;->onMessageChannelReady(Lo/eh;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lo/es;->onNavigationEvent()Lo/eq;

    move-result-object v3

    .line 26
    invoke-static {}, Lo/fE;->extraCallback()Lo/fE;

    move-result-object v4

    .line 27
    invoke-static {}, Lo/ev;->onPostMessage()Lo/FreshchatReceiver;

    move-result-object v5

    .line 28
    invoke-static {}, Lo/eQ;->onNavigationEvent()Lo/ak$2;

    move-result-object v6

    .line 29
    invoke-static {}, Lo/ed;->onPostMessage()Lo/setContext;

    move-result-object v7

    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Lo/ei;->onNavigationEvent(Ljava/lang/Class;Lo/eh;Lo/eq;Lo/fE;Lo/FreshchatReceiver;Lo/ak$2;Lo/setContext;)Lo/ei;

    move-result-object p1

    return-object p1

    .line 32
    :cond_2
    invoke-static {}, Lo/es;->onNavigationEvent()Lo/eq;

    move-result-object v3

    .line 33
    invoke-static {}, Lo/fE;->extraCallback()Lo/fE;

    move-result-object v4

    .line 34
    invoke-static {}, Lo/ev;->onPostMessage()Lo/FreshchatReceiver;

    move-result-object v5

    const/4 v6, 0x0

    .line 35
    invoke-static {}, Lo/ed;->onPostMessage()Lo/setContext;

    move-result-object v7

    move-object v1, p1

    .line 36
    invoke-static/range {v1 .. v7}, Lo/ei;->onNavigationEvent(Ljava/lang/Class;Lo/eh;Lo/eq;Lo/fE;Lo/FreshchatReceiver;Lo/ak$2;Lo/setContext;)Lo/ei;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    invoke-static {v2}, Lo/bg$a;->onMessageChannelReady(Lo/eh;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lo/es;->onPostMessage()Lo/eq;

    move-result-object v3

    .line 41
    invoke-static {}, Lo/fE;->onPostMessage()Lo/fE;

    move-result-object v4

    .line 42
    invoke-static {}, Lo/ev;->ICustomTabsCallback()Lo/FreshchatReceiver;

    move-result-object v5

    .line 43
    invoke-static {}, Lo/eQ;->onPostMessage()Lo/ak$2;

    move-result-object v6

    .line 44
    invoke-static {}, Lo/ed;->ICustomTabsCallback()Lo/setContext;

    move-result-object v7

    move-object v1, p1

    .line 45
    invoke-static/range {v1 .. v7}, Lo/ei;->onNavigationEvent(Ljava/lang/Class;Lo/eh;Lo/eq;Lo/fE;Lo/FreshchatReceiver;Lo/ak$2;Lo/setContext;)Lo/ei;

    move-result-object p1

    return-object p1

    .line 47
    :cond_4
    invoke-static {}, Lo/es;->onPostMessage()Lo/eq;

    move-result-object v3

    .line 48
    invoke-static {}, Lo/fE;->onPostMessage()Lo/fE;

    move-result-object v4

    .line 49
    invoke-static {}, Lo/ev;->extraCallback()Lo/FreshchatReceiver;

    move-result-object v5

    const/4 v6, 0x0

    .line 50
    invoke-static {}, Lo/ed;->ICustomTabsCallback()Lo/setContext;

    move-result-object v7

    move-object v1, p1

    .line 51
    invoke-static/range {v1 .. v7}, Lo/ei;->onNavigationEvent(Ljava/lang/Class;Lo/eh;Lo/eq;Lo/fE;Lo/FreshchatReceiver;Lo/ak$2;Lo/setContext;)Lo/ei;

    move-result-object p1

    return-object p1
.end method
