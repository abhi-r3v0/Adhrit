.class public final Lo/cH$extraCallback$onMessageChannelReady;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cH$extraCallback;",
        "Lo/cH$extraCallback$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cH$extraCallback;->asInterface()Lo/cH$extraCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cI;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/cH$extraCallback$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/cH$asBinder;)Lo/cH$extraCallback$onMessageChannelReady;
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
    iget-object v0, p0, Lo/cH$extraCallback$onMessageChannelReady;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$extraCallback;

    invoke-static {v0, p1}, Lo/cH$extraCallback;->onNavigationEvent(Lo/cH$extraCallback;Lo/cH$asBinder;)V

    return-object p0
.end method

.method public final onNavigationEvent(I)Lo/cH$extraCallback$onMessageChannelReady;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lo/cH$extraCallback$onMessageChannelReady;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$extraCallback;

    invoke-static {v0, p1}, Lo/cH$extraCallback;->extraCallback(Lo/cH$extraCallback;I)V

    return-object p0
.end method

.method public final onNavigationEvent(Z)Lo/cH$extraCallback$onMessageChannelReady;
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 25
    :cond_0
    iget-object v0, p0, Lo/cH$extraCallback$onMessageChannelReady;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$extraCallback;

    invoke-static {v0, p1}, Lo/cH$extraCallback;->onMessageChannelReady(Lo/cH$extraCallback;Z)V

    return-object p0
.end method

.method public final onPostMessage(Lo/cH$asBinder$onPostMessage;)Lo/cH$extraCallback$onMessageChannelReady;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lo/cH$extraCallback$onMessageChannelReady;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$extraCallback;

    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$asBinder;

    invoke-static {v0, p1}, Lo/cH$extraCallback;->onMessageChannelReady(Lo/cH$extraCallback;Lo/cH$asBinder;)V

    return-object p0
.end method
