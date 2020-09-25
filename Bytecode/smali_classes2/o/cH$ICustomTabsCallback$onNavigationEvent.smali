.class public final Lo/cH$ICustomTabsCallback$onNavigationEvent;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cH$ICustomTabsCallback;",
        "Lo/cH$ICustomTabsCallback$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cH$ICustomTabsCallback;->ICustomTabsService()Lo/cH$ICustomTabsCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cI;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lo/cH$ICustomTabsCallback$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 69
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 72
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0, p1, p2}, Lo/cH$ICustomTabsCallback;->onPostMessage(Lo/cH$ICustomTabsCallback;J)V

    return-object p0
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/cH$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()J
    .locals 2

    .line 67
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/cH$ICustomTabsCallback;->ICustomTabsCallback$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Lo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 32
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$onNavigationEvent;

    invoke-static {v0, p1}, Lo/cH$ICustomTabsCallback;->onNavigationEvent(Lo/cH$ICustomTabsCallback;Lo/cH$onNavigationEvent;)V

    return-object p0
.end method

.method public final extraCallback(I)Lo/cH$onNavigationEvent;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/cH$ICustomTabsCallback;->extraCallback(I)Lo/cH$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/cH$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    .line 4
    invoke-virtual {v0}, Lo/cH$ICustomTabsCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(I)Lo/cH$ICustomTabsCallback$onNavigationEvent;
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
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/cH$ICustomTabsCallback;->onPostMessage(Lo/cH$ICustomTabsCallback;I)V

    return-object p0
.end method

.method public final onMessageChannelReady(ILo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 18
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    .line 19
    invoke-virtual {p2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p2

    check-cast p2, Lo/fa;

    check-cast p2, Lo/cH$onNavigationEvent;

    .line 20
    invoke-static {v0, p1, p2}, Lo/cH$ICustomTabsCallback;->extraCallback(Lo/cH$ICustomTabsCallback;ILo/cH$onNavigationEvent;)V

    return-object p0
.end method

.method public final onMessageChannelReady(ILo/cH$onNavigationEvent;)Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 9
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 12
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0, p1, p2}, Lo/cH$ICustomTabsCallback;->extraCallback(Lo/cH$ICustomTabsCallback;ILo/cH$onNavigationEvent;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 54
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 57
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/cH$ICustomTabsCallback;->ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent()Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 41
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 44
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0}, Lo/cH$ICustomTabsCallback;->extraCallback(Lo/cH$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/cH$onNavigationEvent;)Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 26
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/cH$ICustomTabsCallback;->onNavigationEvent(Lo/cH$ICustomTabsCallback;Lo/cH$onNavigationEvent;)V

    return-object p0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 6
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/cH$ICustomTabsCallback;->onPostMessage()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(J)Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 62
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 65
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0, p1, p2}, Lo/cH$ICustomTabsCallback;->onNavigationEvent(Lo/cH$ICustomTabsCallback;J)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/Iterable;)Lo/cH$ICustomTabsCallback$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$onNavigationEvent;",
            ">;)",
            "Lo/cH$ICustomTabsCallback$onNavigationEvent;"
        }
    .end annotation

    .line 35
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 38
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/cH$ICustomTabsCallback;->onNavigationEvent(Lo/cH$ICustomTabsCallback;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final onTransact()J
    .locals 2

    .line 60
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/cH$ICustomTabsCallback;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method
