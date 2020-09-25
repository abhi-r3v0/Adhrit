.class public final Lo/writeDouble$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeDouble;",
        "Lo/writeDouble$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 555
    invoke-static {}, Lo/writeDouble;->asBinder()Lo/writeDouble;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 548
    invoke-direct {p0}, Lo/writeDouble$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/util/Map;)Lo/writeDouble$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/writeRawMessageSetExtension;",
            ">;)",
            "Lo/writeDouble$onPostMessage;"
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Lo/writeDouble$onPostMessage;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeDouble;

    invoke-static {v0}, Lo/writeDouble;->extraCallback(Lo/writeDouble;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/getCustomHeaders;)Lo/writeDouble$onPostMessage;
    .locals 1

    .line 1013
    invoke-virtual {p0}, Lo/writeDouble$onPostMessage;->copyOnWrite()V

    .line 1014
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeDouble;

    invoke-static {v0, p1}, Lo/writeDouble;->onNavigationEvent(Lo/writeDouble;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/writeDouble$onPostMessage;
    .locals 1

    .line 598
    invoke-virtual {p0}, Lo/writeDouble$onPostMessage;->copyOnWrite()V

    .line 599
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeDouble;

    invoke-static {v0, p1}, Lo/writeDouble;->ICustomTabsCallback(Lo/writeDouble;Ljava/lang/String;)V

    return-object p0
.end method
