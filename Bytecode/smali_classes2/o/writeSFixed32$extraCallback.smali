.class public final Lo/writeSFixed32$extraCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSFixed32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeSFixed32;",
        "Lo/writeSFixed32$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 278
    invoke-static {}, Lo/writeSFixed32;->onRelationshipValidationResult()Lo/writeSFixed32;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lo/writeSFixed32$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/getCustomHeaders;)Lo/writeSFixed32$extraCallback;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lo/writeSFixed32$extraCallback;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSFixed32;

    invoke-static {v0, p1}, Lo/writeSFixed32;->ICustomTabsCallback(Lo/writeSFixed32;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final onPostMessage(Z)Lo/writeSFixed32$extraCallback;
    .locals 1

    .line 318
    invoke-virtual {p0}, Lo/writeSFixed32$extraCallback;->copyOnWrite()V

    .line 319
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeSFixed32;

    invoke-static {v0, p1}, Lo/writeSFixed32;->ICustomTabsCallback(Lo/writeSFixed32;Z)V

    return-object p0
.end method
