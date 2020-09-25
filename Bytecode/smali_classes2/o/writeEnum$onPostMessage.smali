.class public final Lo/writeEnum$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeEnum;",
        "Lo/writeEnum$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6080
    invoke-static {}, Lo/writeEnum;->asInterface()Lo/writeEnum;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 6073
    invoke-direct {p0}, Lo/writeEnum$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;)Lo/writeEnum$onPostMessage;
    .locals 1

    .line 6249
    invoke-virtual {p0}, Lo/writeEnum$onPostMessage;->copyOnWrite()V

    .line 6250
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/writeEnum;->onMessageChannelReady(Lo/writeEnum;Lo/writeEnum$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/writeEnum$ICustomTabsCallback$Stub;)Lo/writeEnum$onPostMessage;
    .locals 1

    .line 6335
    invoke-virtual {p0}, Lo/writeEnum$onPostMessage;->copyOnWrite()V

    .line 6336
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum;

    invoke-static {v0, p1}, Lo/writeEnum;->onNavigationEvent(Lo/writeEnum;Lo/writeEnum$ICustomTabsCallback$Stub;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/getInProgressFile;)Lo/writeEnum$onPostMessage;
    .locals 1

    .line 6783
    invoke-virtual {p0}, Lo/writeEnum$onPostMessage;->copyOnWrite()V

    .line 6784
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum;

    invoke-static {v0, p1}, Lo/writeEnum;->onPostMessage(Lo/writeEnum;Lo/getInProgressFile;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeEnum$onTransact;)Lo/writeEnum$onPostMessage;
    .locals 1

    .line 6522
    invoke-virtual {p0}, Lo/writeEnum$onPostMessage;->copyOnWrite()V

    .line 6523
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum;

    invoke-static {v0, p1}, Lo/writeEnum;->onMessageChannelReady(Lo/writeEnum;Lo/writeEnum$onTransact;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/getEventDeviceSize$onMessageChannelReady;)Lo/writeEnum$onPostMessage;
    .locals 1

    .line 6921
    invoke-virtual {p0}, Lo/writeEnum$onPostMessage;->copyOnWrite()V

    .line 6922
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getEventDeviceSize;

    invoke-static {v0, p1}, Lo/writeEnum;->onPostMessage(Lo/writeEnum;Lo/getEventDeviceSize;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/getInProgressFile;)Lo/writeEnum$onPostMessage;
    .locals 1

    .line 6712
    invoke-virtual {p0}, Lo/writeEnum$onPostMessage;->copyOnWrite()V

    .line 6713
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum;

    invoke-static {v0, p1}, Lo/writeEnum;->onNavigationEvent(Lo/writeEnum;Lo/getInProgressFile;)V

    return-object p0
.end method
