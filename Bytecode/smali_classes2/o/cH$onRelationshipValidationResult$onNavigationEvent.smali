.class public final Lo/cH$onRelationshipValidationResult$onNavigationEvent;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cH$onRelationshipValidationResult;",
        "Lo/cH$onRelationshipValidationResult$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cH$onRelationshipValidationResult;->ICustomTabsCallback()Lo/cH$onRelationshipValidationResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cI;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/cH$onRelationshipValidationResult$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/cH$onTransact$extraCallback;)Lo/cH$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lo/cH$onRelationshipValidationResult$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onRelationshipValidationResult;

    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$onTransact;

    invoke-static {v0, p1}, Lo/cH$onRelationshipValidationResult;->extraCallback(Lo/cH$onRelationshipValidationResult;Lo/cH$onTransact;)V

    return-object p0
.end method

.method public final onMessageChannelReady(I)Lo/cH$onTransact;
    .locals 1

    .line 3
    iget-object p1, p0, Lo/cH$onRelationshipValidationResult$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast p1, Lo/cH$onRelationshipValidationResult;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/cH$onRelationshipValidationResult;->onMessageChannelReady(I)Lo/cH$onTransact;

    move-result-object p1

    return-object p1
.end method
