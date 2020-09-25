.class public final Lo/writeString$ICustomTabsCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeString;",
        "Lo/writeString$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1736
    invoke-static {}, Lo/writeString;->ICustomTabsCallback()Lo/writeString;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1729
    invoke-direct {p0}, Lo/writeString$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/writeString$onNavigationEvent;)Lo/writeString$ICustomTabsCallback;
    .locals 1

    .line 1866
    invoke-virtual {p0}, Lo/writeString$ICustomTabsCallback;->copyOnWrite()V

    .line 1867
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeString;

    invoke-static {v0, p1}, Lo/writeString;->extraCallback(Lo/writeString;Lo/writeString$onNavigationEvent;)V

    return-object p0
.end method

.method public final extraCallback(I)Lo/writeString$ICustomTabsCallback;
    .locals 1

    .line 2061
    invoke-virtual {p0}, Lo/writeString$ICustomTabsCallback;->copyOnWrite()V

    .line 2062
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeString;

    invoke-static {v0, p1}, Lo/writeString;->onMessageChannelReady(Lo/writeString;I)V

    return-object p0
.end method

.method public final extraCallback(Lo/SessionProtobufHelper;)Lo/writeString$ICustomTabsCallback;
    .locals 1

    .line 1932
    invoke-virtual {p0}, Lo/writeString$ICustomTabsCallback;->copyOnWrite()V

    .line 1933
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeString;

    invoke-static {v0, p1}, Lo/writeString;->onMessageChannelReady(Lo/writeString;Lo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/writeString$extraCallback;)Lo/writeString$ICustomTabsCallback;
    .locals 1

    .line 1794
    invoke-virtual {p0}, Lo/writeString$ICustomTabsCallback;->copyOnWrite()V

    .line 1795
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeString;

    invoke-static {v0, p1}, Lo/writeString;->onMessageChannelReady(Lo/writeString;Lo/writeString$extraCallback;)V

    return-object p0
.end method
