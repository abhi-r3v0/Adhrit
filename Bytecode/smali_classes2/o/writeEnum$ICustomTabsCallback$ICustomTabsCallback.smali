.class public final Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeEnum$ICustomTabsCallback;",
        "Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 412
    invoke-static {}, Lo/writeEnum$ICustomTabsCallback;->onNavigationEvent()Lo/writeEnum$ICustomTabsCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 405
    invoke-direct {p0}, Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;->copyOnWrite()V

    .line 456
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/writeEnum$ICustomTabsCallback;->onMessageChannelReady(Lo/writeEnum$ICustomTabsCallback;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent()Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;
    .locals 2

    .line 516
    invoke-virtual {p0}, Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$ICustomTabsCallback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/writeEnum$ICustomTabsCallback;->onNavigationEvent(Lo/writeEnum$ICustomTabsCallback;Z)V

    return-object p0
.end method
