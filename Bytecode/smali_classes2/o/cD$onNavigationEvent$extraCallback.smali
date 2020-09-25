.class public final Lo/cD$onNavigationEvent$extraCallback;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cD$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cD$onNavigationEvent;",
        "Lo/cD$onNavigationEvent$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cD$onNavigationEvent;->ICustomTabsService()Lo/cD$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/fS;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/cD$onNavigationEvent$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 3
    iget-object v0, p0, Lo/cD$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onNavigationEvent;

    invoke-virtual {v0}, Lo/cD$onNavigationEvent;->asInterface()I

    move-result v0

    return v0
.end method

.method public final extraCallback()Lo/cD$onNavigationEvent$extraCallback;
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 20
    :cond_0
    iget-object v0, p0, Lo/cD$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onNavigationEvent;

    invoke-static {v0}, Lo/cD$onNavigationEvent;->ICustomTabsCallback(Lo/cD$onNavigationEvent;)V

    return-object p0
.end method

.method public final onMessageChannelReady()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cB$extraCallback;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/cD$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onNavigationEvent;

    .line 14
    invoke-virtual {v0}, Lo/cD$onNavigationEvent;->onTransact()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(I)Lo/cD$onPostMessage;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/cD$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/cD$onNavigationEvent;->onNavigationEvent(I)Lo/cD$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(ILo/cD$onPostMessage$ICustomTabsCallback;)Lo/cD$onNavigationEvent$extraCallback;
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
    iget-object v0, p0, Lo/cD$onNavigationEvent$extraCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onNavigationEvent;

    .line 10
    invoke-virtual {p2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p2

    check-cast p2, Lo/fa;

    check-cast p2, Lo/cD$onPostMessage;

    .line 11
    invoke-static {v0, p1, p2}, Lo/cD$onNavigationEvent;->onPostMessage(Lo/cD$onNavigationEvent;ILo/cD$onPostMessage;)V

    return-object p0
.end method
