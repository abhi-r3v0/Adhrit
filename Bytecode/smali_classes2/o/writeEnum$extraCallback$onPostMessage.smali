.class public final Lo/writeEnum$extraCallback$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeEnum$extraCallback;",
        "Lo/writeEnum$extraCallback$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2812
    invoke-static {}, Lo/writeEnum$extraCallback;->onRelationshipValidationResult()Lo/writeEnum$extraCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 2805
    invoke-direct {p0}, Lo/writeEnum$extraCallback$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/writeEnum$asBinder;)Lo/writeEnum$extraCallback$onPostMessage;
    .locals 1

    .line 2846
    invoke-virtual {p0}, Lo/writeEnum$extraCallback$onPostMessage;->copyOnWrite()V

    .line 2847
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$extraCallback;

    invoke-static {v0, p1}, Lo/writeEnum$extraCallback;->extraCallback(Lo/writeEnum$extraCallback;Lo/writeEnum$asBinder;)V

    return-object p0
.end method

.method public final extraCallback(Lo/writeEnum$extraCallback$onMessageChannelReady;)Lo/writeEnum$extraCallback$onPostMessage;
    .locals 1

    .line 2935
    invoke-virtual {p0}, Lo/writeEnum$extraCallback$onPostMessage;->copyOnWrite()V

    .line 2936
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$extraCallback;

    invoke-static {v0, p1}, Lo/writeEnum$extraCallback;->extraCallback(Lo/writeEnum$extraCallback;Lo/writeEnum$extraCallback$onMessageChannelReady;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeRawMessageSetExtension;)Lo/writeEnum$extraCallback$onPostMessage;
    .locals 1

    .line 2983
    invoke-virtual {p0}, Lo/writeEnum$extraCallback$onPostMessage;->copyOnWrite()V

    .line 2984
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$extraCallback;

    invoke-static {v0, p1}, Lo/writeEnum$extraCallback;->onPostMessage(Lo/writeEnum$extraCallback;Lo/writeRawMessageSetExtension;)V

    return-object p0
.end method
