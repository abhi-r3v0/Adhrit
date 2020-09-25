.class public final Lo/writeInt64$onPostMessage$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeInt64$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeInt64$onPostMessage;",
        "Lo/writeInt64$onPostMessage$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1236
    invoke-static {}, Lo/writeInt64$onPostMessage;->onRelationshipValidationResult()Lo/writeInt64$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1229
    invoke-direct {p0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/toByteString$onMessageChannelReady;)Lo/writeInt64$onPostMessage$onMessageChannelReady;
    .locals 1

    .line 1973
    invoke-virtual {p0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->copyOnWrite()V

    .line 1974
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeInt64$onPostMessage;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/toByteString;

    invoke-static {v0, p1}, Lo/writeInt64$onPostMessage;->onPostMessage(Lo/writeInt64$onPostMessage;Lo/toByteString;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/writeInt64$onPostMessage$onMessageChannelReady;
    .locals 1

    .line 1291
    invoke-virtual {p0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->copyOnWrite()V

    .line 1292
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeInt64$onPostMessage;

    invoke-static {v0, p1}, Lo/writeInt64$onPostMessage;->extraCallback(Lo/writeInt64$onPostMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeRawMessageSetExtension;)Lo/writeInt64$onPostMessage$onMessageChannelReady;
    .locals 1

    .line 1446
    invoke-virtual {p0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->copyOnWrite()V

    .line 1447
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeInt64$onPostMessage;

    invoke-static {v0, p1}, Lo/writeInt64$onPostMessage;->onNavigationEvent(Lo/writeInt64$onPostMessage;Lo/writeRawMessageSetExtension;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/toByteString$onMessageChannelReady;)Lo/writeInt64$onPostMessage$onMessageChannelReady;
    .locals 1

    .line 1855
    invoke-virtual {p0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->copyOnWrite()V

    .line 1856
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeInt64$onPostMessage;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/toByteString;

    invoke-static {v0, p1}, Lo/writeInt64$onPostMessage;->onMessageChannelReady(Lo/writeInt64$onPostMessage;Lo/toByteString;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/writeInt64$onPostMessage$onNavigationEvent;)Lo/writeInt64$onPostMessage$onMessageChannelReady;
    .locals 1

    .line 1374
    invoke-virtual {p0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->copyOnWrite()V

    .line 1375
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeInt64$onPostMessage;

    invoke-static {v0, p1}, Lo/writeInt64$onPostMessage;->extraCallback(Lo/writeInt64$onPostMessage;Lo/writeInt64$onPostMessage$onNavigationEvent;)V

    return-object p0
.end method
