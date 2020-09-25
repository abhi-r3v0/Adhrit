.class public final Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeEnum$onRelationshipValidationResult;",
        "Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3599
    invoke-static {}, Lo/writeEnum$onRelationshipValidationResult;->asBinder()Lo/writeEnum$onRelationshipValidationResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 3592
    invoke-direct {p0}, Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/writeEnum$asBinder;)Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;
    .locals 1

    .line 3711
    invoke-virtual {p0}, Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;->copyOnWrite()V

    .line 3712
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/writeEnum$onRelationshipValidationResult;->ICustomTabsCallback(Lo/writeEnum$onRelationshipValidationResult;Lo/writeEnum$asBinder;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;)Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;
    .locals 1

    .line 3663
    invoke-virtual {p0}, Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;->copyOnWrite()V

    .line 3664
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/writeEnum$onRelationshipValidationResult;->ICustomTabsCallback(Lo/writeEnum$onRelationshipValidationResult;Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;)V

    return-object p0
.end method
