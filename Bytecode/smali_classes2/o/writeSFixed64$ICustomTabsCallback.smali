.class public final Lo/writeSFixed64$ICustomTabsCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSFixed64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeSFixed64;",
        "Lo/writeSFixed64$ICustomTabsCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 645
    invoke-static {}, Lo/writeSFixed64;->onRelationshipValidationResult()Lo/writeSFixed64;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 638
    invoke-direct {p0}, Lo/writeSFixed64$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/writeSFixed64$ICustomTabsCallback;
    .locals 1

    .line 691
    invoke-virtual {p0}, Lo/writeSFixed64$ICustomTabsCallback;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSFixed64;

    invoke-static {v0, p1}, Lo/writeSFixed64;->onMessageChannelReady(Lo/writeSFixed64;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/SessionProtobufHelper;)Lo/writeSFixed64$ICustomTabsCallback;
    .locals 1

    .line 1045
    invoke-virtual {p0}, Lo/writeSFixed64$ICustomTabsCallback;->copyOnWrite()V

    .line 1046
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSFixed64;

    invoke-static {v0, p1}, Lo/writeSFixed64;->extraCallback(Lo/writeSFixed64;Lo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/writeSInt32;)Lo/writeSFixed64$ICustomTabsCallback;
    .locals 1

    .line 899
    invoke-virtual {p0}, Lo/writeSFixed64$ICustomTabsCallback;->copyOnWrite()V

    .line 900
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSFixed64;

    invoke-static {v0, p1}, Lo/writeSFixed64;->ICustomTabsCallback(Lo/writeSFixed64;Lo/writeSInt32;)V

    return-object p0
.end method
