.class public final Lo/cH$asBinder$onPostMessage;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cH$asBinder;",
        "Lo/cH$asBinder$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cH$asBinder;->newSession()Lo/cH$asBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cI;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/cH$asBinder$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/cH$asBinder$onPostMessage;
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
    iget-object v0, p0, Lo/cH$asBinder$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$asBinder;

    invoke-static {v0, p1}, Lo/cH$asBinder;->onNavigationEvent(Lo/cH$asBinder;I)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$onMessageChannelReady;",
            ">;)",
            "Lo/cH$asBinder$onPostMessage;"
        }
    .end annotation

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
    iget-object v0, p0, Lo/cH$asBinder$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$asBinder;

    invoke-static {v0, p1}, Lo/cH$asBinder;->ICustomTabsCallback(Lo/cH$asBinder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final extraCallback()Lo/cH$asBinder$onPostMessage;
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
    iget-object v0, p0, Lo/cH$asBinder$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$asBinder;

    invoke-static {v0}, Lo/cH$asBinder;->onPostMessage(Lo/cH$asBinder;)V

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/cH$asBinder$onPostMessage;"
        }
    .end annotation

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
    iget-object v0, p0, Lo/cH$asBinder$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$asBinder;

    invoke-static {v0, p1}, Lo/cH$asBinder;->onNavigationEvent(Lo/cH$asBinder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final onNavigationEvent(I)Lo/cH$asBinder$onPostMessage;
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
    iget-object v0, p0, Lo/cH$asBinder$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$asBinder;

    invoke-static {v0, p1}, Lo/cH$asBinder;->onPostMessage(Lo/cH$asBinder;I)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/cH$asInterface;",
            ">;)",
            "Lo/cH$asBinder$onPostMessage;"
        }
    .end annotation

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
    iget-object v0, p0, Lo/cH$asBinder$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$asBinder;

    invoke-static {v0, p1}, Lo/cH$asBinder;->extraCallback(Lo/cH$asBinder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final onPostMessage()Lo/cH$asBinder$onPostMessage;
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
    iget-object v0, p0, Lo/cH$asBinder$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$asBinder;

    invoke-static {v0}, Lo/cH$asBinder;->ICustomTabsCallback(Lo/cH$asBinder;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/cH$asBinder$onPostMessage;"
        }
    .end annotation

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
    iget-object v0, p0, Lo/cH$asBinder$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$asBinder;

    invoke-static {v0, p1}, Lo/cH$asBinder;->onMessageChannelReady(Lo/cH$asBinder;Ljava/lang/Iterable;)V

    return-object p0
.end method
