.class public final Lo/cH$newSession$onPostMessage;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$newSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cH$newSession;",
        "Lo/cH$newSession$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cH$newSession;->newSession()Lo/cH$newSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cI;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/cH$newSession$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/cH$newSession$onPostMessage;
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
    iget-object v0, p0, Lo/cH$newSession$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$newSession;

    invoke-static {v0}, Lo/cH$newSession;->ICustomTabsCallback(Lo/cH$newSession;)V

    return-object p0
.end method

.method public final onMessageChannelReady()Lo/cH$newSession$onPostMessage;
    .locals 1

    .line 34
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 37
    :cond_0
    iget-object v0, p0, Lo/cH$newSession$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$newSession;

    invoke-static {v0}, Lo/cH$newSession;->onNavigationEvent(Lo/cH$newSession;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/cH$newSession$onPostMessage;
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
    iget-object v0, p0, Lo/cH$newSession$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$newSession;

    invoke-static {v0, p1}, Lo/cH$newSession;->extraCallback(Lo/cH$newSession;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent(J)Lo/cH$newSession$onPostMessage;
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
    iget-object v0, p0, Lo/cH$newSession$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$newSession;

    invoke-static {v0, p1, p2}, Lo/cH$newSession;->extraCallback(Lo/cH$newSession;J)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/cH$newSession$onPostMessage;
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
    iget-object v0, p0, Lo/cH$newSession$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$newSession;

    invoke-static {v0, p1}, Lo/cH$newSession;->onPostMessage(Lo/cH$newSession;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPostMessage()Lo/cH$newSession$onPostMessage;
    .locals 1

    .line 46
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 49
    :cond_0
    iget-object v0, p0, Lo/cH$newSession$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$newSession;

    invoke-static {v0}, Lo/cH$newSession;->onMessageChannelReady(Lo/cH$newSession;)V

    return-object p0
.end method

.method public final onPostMessage(D)Lo/cH$newSession$onPostMessage;
    .locals 1

    .line 40
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 43
    :cond_0
    iget-object v0, p0, Lo/cH$newSession$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$newSession;

    invoke-static {v0, p1, p2}, Lo/cH$newSession;->onPostMessage(Lo/cH$newSession;D)V

    return-object p0
.end method

.method public final onPostMessage(J)Lo/cH$newSession$onPostMessage;
    .locals 1

    .line 28
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lo/cH$newSession$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$newSession;

    invoke-static {v0, p1, p2}, Lo/cH$newSession;->onPostMessage(Lo/cH$newSession;J)V

    return-object p0
.end method
