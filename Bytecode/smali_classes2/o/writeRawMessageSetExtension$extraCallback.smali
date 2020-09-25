.class public final Lo/writeRawMessageSetExtension$extraCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeRawMessageSetExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeRawMessageSetExtension;",
        "Lo/writeRawMessageSetExtension$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 893
    invoke-static {}, Lo/writeRawMessageSetExtension;->asInterface()Lo/writeRawMessageSetExtension;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 886
    invoke-direct {p0}, Lo/writeRawMessageSetExtension$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/mergeStrings$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1426
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1427
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/mergeStrings;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->onMessageChannelReady(Lo/writeRawMessageSetExtension;Lo/mergeStrings;)V

    return-object p0
.end method

.method public final extraCallback(D)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1077
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1078
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1, p2}, Lo/writeRawMessageSetExtension;->onMessageChannelReady(Lo/writeRawMessageSetExtension;D)V

    return-object p0
.end method

.method public final extraCallback(J)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1037
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1038
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1, p2}, Lo/writeRawMessageSetExtension;->extraCallback(Lo/writeRawMessageSetExtension;J)V

    return-object p0
.end method

.method public final extraCallback(Lo/deleteReports;)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 957
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 958
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->onMessageChannelReady(Lo/writeRawMessageSetExtension;Lo/deleteReports;)V

    return-object p0
.end method

.method public final extraCallback(Lo/getCustomHeaders$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1146
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1147
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->extraCallback(Lo/writeRawMessageSetExtension;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1224
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1225
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->extraCallback(Lo/writeRawMessageSetExtension;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Z)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 997
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 998
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->onPostMessage(Lo/writeRawMessageSetExtension;Z)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/SessionProtobufHelper;)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1289
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1290
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback(Lo/writeRawMessageSetExtension;Lo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1348
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1349
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->onNavigationEvent(Lo/writeRawMessageSetExtension;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/toByteString$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1506
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1507
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/toByteString;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->extraCallback(Lo/writeRawMessageSetExtension;Lo/toByteString;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/writeBytes$ICustomTabsCallback;)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1582
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1583
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeBytes;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->onPostMessage(Lo/writeRawMessageSetExtension;Lo/writeBytes;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/writeBytes;)Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 1569
    invoke-virtual {p0}, Lo/writeRawMessageSetExtension$extraCallback;->copyOnWrite()V

    .line 1570
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1}, Lo/writeRawMessageSetExtension;->onPostMessage(Lo/writeRawMessageSetExtension;Lo/writeBytes;)V

    return-object p0
.end method
