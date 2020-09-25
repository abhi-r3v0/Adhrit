.class public final Lo/cB$onNavigationEvent$extraCallback;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cB$onNavigationEvent;",
        "Lo/cB$onNavigationEvent$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cB$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy()Lo/cB$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/f$a;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/cB$onNavigationEvent$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 10
    iget-object v0, p0, Lo/cB$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$onNavigationEvent;

    invoke-virtual {v0}, Lo/cB$onNavigationEvent;->onPostMessage()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(I)Lo/cB$onMessageChannelReady;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/cB$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/cB$onNavigationEvent;->extraCallback(I)Lo/cB$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(ILo/cB$onMessageChannelReady;)Lo/cB$onNavigationEvent$extraCallback;
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 16
    :cond_0
    iget-object v0, p0, Lo/cB$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$onNavigationEvent;

    invoke-static {v0, p1, p2}, Lo/cB$onNavigationEvent;->onNavigationEvent(Lo/cB$onNavigationEvent;ILo/cB$onMessageChannelReady;)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/cB$onNavigationEvent$extraCallback;
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
    iget-object v0, p0, Lo/cB$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$onNavigationEvent;

    invoke-static {v0, p1}, Lo/cB$onNavigationEvent;->extraCallback(Lo/cB$onNavigationEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lo/cB$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$onNavigationEvent;

    invoke-virtual {v0}, Lo/cB$onNavigationEvent;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
