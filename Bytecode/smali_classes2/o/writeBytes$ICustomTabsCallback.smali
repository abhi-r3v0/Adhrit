.class public final Lo/writeBytes$ICustomTabsCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeBytes;",
        "Lo/writeBytes$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 248
    invoke-static {}, Lo/writeBytes;->asBinder()Lo/writeBytes;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 241
    invoke-direct {p0}, Lo/writeBytes$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/writeBytes$ICustomTabsCallback;
    .locals 1

    .line 296
    invoke-virtual {p0}, Lo/writeBytes$ICustomTabsCallback;->copyOnWrite()V

    .line 297
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeBytes;

    invoke-static {v0}, Lo/writeBytes;->onNavigationEvent(Lo/writeBytes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final extraCallback(Ljava/util/Map;)Lo/writeBytes$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/writeRawMessageSetExtension;",
            ">;)",
            "Lo/writeBytes$ICustomTabsCallback;"
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lo/writeBytes$ICustomTabsCallback;->copyOnWrite()V

    .line 402
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeBytes;

    invoke-static {v0}, Lo/writeBytes;->onNavigationEvent(Lo/writeBytes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lo/writeRawMessageSetExtension;)Lo/writeBytes$ICustomTabsCallback;
    .locals 1

    .line 384
    invoke-virtual {p0}, Lo/writeBytes$ICustomTabsCallback;->copyOnWrite()V

    .line 385
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeBytes;

    invoke-static {v0}, Lo/writeBytes;->onNavigationEvent(Lo/writeBytes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Z
    .locals 1

    .line 273
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeBytes;

    .line 2036
    iget-object v0, v0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 1090
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 273
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
