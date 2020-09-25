.class public final Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeEnum$ICustomTabsCallback$Stub;",
        "Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1039
    invoke-static {}, Lo/writeEnum$ICustomTabsCallback$Stub;->asBinder()Lo/writeEnum$ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1032
    invoke-direct {p0}, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;)Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;
    .locals 1

    .line 1242
    invoke-virtual {p0}, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;->copyOnWrite()V

    .line 1243
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$ICustomTabsCallback$Stub;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/writeEnum$ICustomTabsCallback$Stub;->onPostMessage(Lo/writeEnum$ICustomTabsCallback$Stub;Lo/writeEnum$onRelationshipValidationResult;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/writeEnum$onMessageChannelReady$onNavigationEvent;)Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$ICustomTabsCallback$Stub;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/writeEnum$ICustomTabsCallback$Stub;->onNavigationEvent(Lo/writeEnum$ICustomTabsCallback$Stub;Lo/writeEnum$onMessageChannelReady;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeEnum$extraCallback$onPostMessage;)Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;
    .locals 1

    .line 1170
    invoke-virtual {p0}, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;->copyOnWrite()V

    .line 1171
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$ICustomTabsCallback$Stub;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$extraCallback;

    invoke-static {v0, p1}, Lo/writeEnum$ICustomTabsCallback$Stub;->extraCallback(Lo/writeEnum$ICustomTabsCallback$Stub;Lo/writeEnum$extraCallback;)V

    return-object p0
.end method
