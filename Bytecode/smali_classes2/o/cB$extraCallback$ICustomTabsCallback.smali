.class public final Lo/cB$extraCallback$ICustomTabsCallback;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cB$extraCallback;",
        "Lo/cB$extraCallback$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cB$extraCallback;->asBinder()Lo/cB$extraCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/f$a;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/cB$extraCallback$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 13
    iget-object v0, p0, Lo/cB$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$extraCallback;

    invoke-virtual {v0}, Lo/cB$extraCallback;->onRelationshipValidationResult()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback(ILo/cB$onNavigationEvent$extraCallback;)Lo/cB$extraCallback$ICustomTabsCallback;
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lo/cB$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$extraCallback;

    .line 20
    invoke-virtual {p2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p2

    check-cast p2, Lo/fa;

    check-cast p2, Lo/cB$onNavigationEvent;

    .line 21
    invoke-static {v0, p1, p2}, Lo/cB$extraCallback;->onPostMessage(Lo/cB$extraCallback;ILo/cB$onNavigationEvent;)V

    return-object p0
.end method

.method public final extraCallback(I)Lo/cB$onNavigationEvent;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/cB$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$extraCallback;

    invoke-virtual {v0, p1}, Lo/cB$extraCallback;->onPostMessage(I)Lo/cB$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(ILo/cB$onPostMessage$onPostMessage;)Lo/cB$extraCallback$ICustomTabsCallback;
    .locals 1

    .line 6
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 9
    :cond_0
    iget-object v0, p0, Lo/cB$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$extraCallback;

    .line 10
    invoke-virtual {p2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p2

    check-cast p2, Lo/fa;

    check-cast p2, Lo/cB$onPostMessage;

    .line 11
    invoke-static {v0, p1, p2}, Lo/cB$extraCallback;->onPostMessage(Lo/cB$extraCallback;ILo/cB$onPostMessage;)V

    return-object p0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 3
    iget-object v0, p0, Lo/cB$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$extraCallback;

    invoke-virtual {v0}, Lo/cB$extraCallback;->extraCallback()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(I)Lo/cB$onPostMessage;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/cB$extraCallback$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$extraCallback;

    invoke-virtual {v0, p1}, Lo/cB$extraCallback;->ICustomTabsCallback(I)Lo/cB$onPostMessage;

    move-result-object p1

    return-object p1
.end method
