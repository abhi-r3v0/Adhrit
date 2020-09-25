.class public final Lo/writeSInt32$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/writeDoubleNoTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSInt32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeSInt32;",
        "Lo/writeSInt32$onPostMessage;",
        ">;",
        "Lo/writeDoubleNoTag;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 661
    invoke-static {}, Lo/writeSInt32;->onPostMessage()Lo/writeSInt32;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 654
    invoke-direct {p0}, Lo/writeSInt32$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/writeSInt32$onPostMessage;
    .locals 1

    .line 865
    invoke-virtual {p0}, Lo/writeSInt32$onPostMessage;->copyOnWrite()V

    .line 866
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSInt32;

    invoke-static {v0, p1}, Lo/writeSInt32;->onMessageChannelReady(Lo/writeSInt32;Ljava/lang/String;)V

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/writeSInt32$onPostMessage;
    .locals 1

    .line 788
    invoke-virtual {p0}, Lo/writeSInt32$onPostMessage;->copyOnWrite()V

    .line 789
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSInt32;

    invoke-static {v0, p1}, Lo/writeSInt32;->onNavigationEvent(Lo/writeSInt32;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeDouble;)Lo/writeSInt32$onPostMessage;
    .locals 1

    .line 707
    invoke-virtual {p0}, Lo/writeSInt32$onPostMessage;->copyOnWrite()V

    .line 708
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSInt32;

    invoke-static {v0, p1}, Lo/writeSInt32;->extraCallback(Lo/writeSInt32;Lo/writeDouble;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeInt64$onNavigationEvent;)Lo/writeSInt32$onPostMessage;
    .locals 1

    .line 957
    invoke-virtual {p0}, Lo/writeSInt32$onPostMessage;->copyOnWrite()V

    .line 958
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSInt32;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeInt64;

    invoke-static {v0, p1}, Lo/writeSInt32;->onNavigationEvent(Lo/writeSInt32;Lo/writeInt64;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeSFixed32;)Lo/writeSInt32$onPostMessage;
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lo/writeSInt32$onPostMessage;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSInt32;

    invoke-static {v0, p1}, Lo/writeSInt32;->onMessageChannelReady(Lo/writeSInt32;Lo/writeSFixed32;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/writeUInt64;)Lo/writeSInt32$onPostMessage;
    .locals 1

    .line 1046
    invoke-virtual {p0}, Lo/writeSInt32$onPostMessage;->copyOnWrite()V

    .line 1047
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSInt32;

    invoke-static {v0, p1}, Lo/writeSInt32;->onPostMessage(Lo/writeSInt32;Lo/writeUInt64;)V

    return-object p0
.end method
