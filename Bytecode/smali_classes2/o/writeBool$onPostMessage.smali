.class public final Lo/writeBool$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeBool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeBool;",
        "Lo/writeBool$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 456
    invoke-static {}, Lo/writeBool;->onTransact()Lo/writeBool;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 449
    invoke-direct {p0}, Lo/writeBool$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/writeBool$onPostMessage;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lo/writeBool$onPostMessage;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeBool;

    invoke-static {v0, p1}, Lo/writeBool;->onPostMessage(Lo/writeBool;I)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/util/Map;)Lo/writeBool$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/writeBool$onPostMessage;"
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Lo/writeBool$onPostMessage;->copyOnWrite()V

    .line 780
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeBool;

    invoke-static {v0}, Lo/writeBool;->ICustomTabsCallback(Lo/writeBool;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/writeBool$onPostMessage;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lo/writeBool$onPostMessage;->copyOnWrite()V

    .line 512
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeBool;

    invoke-static {v0, p1}, Lo/writeBool;->ICustomTabsCallback(Lo/writeBool;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeString;)Lo/writeBool$onPostMessage;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lo/writeBool$onPostMessage;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeBool;

    invoke-static {v0, p1}, Lo/writeBool;->onMessageChannelReady(Lo/writeBool;Lo/writeString;)V

    return-object p0
.end method
