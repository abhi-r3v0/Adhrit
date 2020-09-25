.class public final Lo/writeEnum$onMessageChannelReady$onNavigationEvent;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeEnum$onMessageChannelReady;",
        "Lo/writeEnum$onMessageChannelReady$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1831
    invoke-static {}, Lo/writeEnum$onMessageChannelReady;->onRelationshipValidationResult()Lo/writeEnum$onMessageChannelReady;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1824
    invoke-direct {p0}, Lo/writeEnum$onMessageChannelReady$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;)Lo/writeEnum$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 1883
    invoke-virtual {p0}, Lo/writeEnum$onMessageChannelReady$onNavigationEvent;->copyOnWrite()V

    .line 1884
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/writeEnum$onMessageChannelReady;->onPostMessage(Lo/writeEnum$onMessageChannelReady;Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/Iterable;)Lo/writeEnum$onMessageChannelReady$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/writeEnum$ICustomTabsCallback$Stub;",
            ">;)",
            "Lo/writeEnum$onMessageChannelReady$onNavigationEvent;"
        }
    .end annotation

    .line 2032
    invoke-virtual {p0}, Lo/writeEnum$onMessageChannelReady$onNavigationEvent;->copyOnWrite()V

    .line 2033
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/writeEnum$onMessageChannelReady;->extraCallback(Lo/writeEnum$onMessageChannelReady;Ljava/lang/Iterable;)V

    return-object p0
.end method
