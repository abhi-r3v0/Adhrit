.class public final Lo/writeInt64$onNavigationEvent;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeInt64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeInt64;",
        "Lo/writeInt64$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2419
    invoke-static {}, Lo/writeInt64;->asBinder()Lo/writeInt64;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 2412
    invoke-direct {p0}, Lo/writeInt64$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/writeInt64$onNavigationEvent;
    .locals 1

    .line 2459
    invoke-virtual {p0}, Lo/writeInt64$onNavigationEvent;->copyOnWrite()V

    .line 2460
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeInt64;

    invoke-static {v0, p1}, Lo/writeInt64;->onNavigationEvent(Lo/writeInt64;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeInt64$onPostMessage;)Lo/writeInt64$onNavigationEvent;
    .locals 1

    .line 2572
    invoke-virtual {p0}, Lo/writeInt64$onNavigationEvent;->copyOnWrite()V

    .line 2573
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeInt64;

    invoke-static {v0, p1}, Lo/writeInt64;->extraCallback(Lo/writeInt64;Lo/writeInt64$onPostMessage;)V

    return-object p0
.end method
