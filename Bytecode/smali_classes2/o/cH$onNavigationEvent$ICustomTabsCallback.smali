.class public final Lo/cH$onNavigationEvent$ICustomTabsCallback;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cH$onNavigationEvent;",
        "Lo/cH$onNavigationEvent$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy()Lo/cH$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cI;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lo/cH$onNavigationEvent$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/cH$onNavigationEvent$ICustomTabsCallback;
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
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-static {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback(Lo/cH$onNavigationEvent;)V

    return-object p0
.end method

.method public final ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;
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
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-static {v0, p1, p2}, Lo/cH$onNavigationEvent;->onMessageChannelReady(Lo/cH$onNavigationEvent;J)V

    return-object p0
.end method

.method public final extraCallback()Lo/cH$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 59
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 62
    :cond_0
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-static {v0}, Lo/cH$onNavigationEvent;->onPostMessage(Lo/cH$onNavigationEvent;)V

    return-object p0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 45
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->getInterfaceDescriptor()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;
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
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-static {v0, p1}, Lo/cH$onNavigationEvent;->onNavigationEvent(Lo/cH$onNavigationEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent()Lo/cH$onNavigationEvent$ICustomTabsCallback;
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
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-static {v0}, Lo/cH$onNavigationEvent;->extraCallback(Lo/cH$onNavigationEvent;)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;
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
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-static {v0, p1}, Lo/cH$onNavigationEvent;->onMessageChannelReady(Lo/cH$onNavigationEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPostMessage()Lo/cH$onNavigationEvent$ICustomTabsCallback;
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
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-static {v0}, Lo/cH$onNavigationEvent;->onNavigationEvent(Lo/cH$onNavigationEvent;)V

    return-object p0
.end method

.method public final onPostMessage(D)Lo/cH$onNavigationEvent$ICustomTabsCallback;
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
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-static {v0, p1, p2}, Lo/cH$onNavigationEvent;->extraCallback(Lo/cH$onNavigationEvent;D)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/Iterable;)Lo/cH$onNavigationEvent$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$onNavigationEvent;",
            ">;)",
            "Lo/cH$onNavigationEvent$ICustomTabsCallback;"
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 56
    :cond_0
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-static {v0, p1}, Lo/cH$onNavigationEvent;->extraCallback(Lo/cH$onNavigationEvent;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 47
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 50
    :cond_0
    iget-object v0, p0, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onNavigationEvent;

    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$onNavigationEvent;

    invoke-static {v0, p1}, Lo/cH$onNavigationEvent;->ICustomTabsCallback(Lo/cH$onNavigationEvent;Lo/cH$onNavigationEvent;)V

    return-object p0
.end method
