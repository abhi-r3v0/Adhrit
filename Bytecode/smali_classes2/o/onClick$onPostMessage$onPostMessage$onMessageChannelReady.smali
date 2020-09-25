.class public final Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onClick$onPostMessage$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "Lo/onClick$onPostMessage$onPostMessage;",
        "Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/onClick$onPostMessage$onPostMessage;->requestPostMessageChannel()Lo/onClick$onPostMessage$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/Freshchat$1$1;)V
    .locals 0

    invoke-direct {p0}, Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(J)Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage()V

    iget-object v0, p0, Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    check-cast v0, Lo/onClick$onPostMessage$onPostMessage;

    invoke-static {v0, p1, p2}, Lo/onClick$onPostMessage$onPostMessage;->onNavigationEvent(Lo/onClick$onPostMessage$onPostMessage;J)V

    return-object p0
.end method

.method public final onNavigationEvent(J)Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage()V

    iget-object v0, p0, Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    check-cast v0, Lo/onClick$onPostMessage$onPostMessage;

    invoke-static {v0, p1, p2}, Lo/onClick$onPostMessage$onPostMessage;->onPostMessage(Lo/onClick$onPostMessage$onPostMessage;J)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage()V

    iget-object v0, p0, Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    check-cast v0, Lo/onClick$onPostMessage$onPostMessage;

    invoke-static {v0, p1}, Lo/onClick$onPostMessage$onPostMessage;->onPostMessage(Lo/onClick$onPostMessage$onPostMessage;Ljava/lang/String;)V

    return-object p0
.end method
