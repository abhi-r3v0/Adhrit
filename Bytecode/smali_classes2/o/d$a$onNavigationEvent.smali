.class public final Lo/d$a$onNavigationEvent;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/d$a;",
        "Lo/d$a$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/d$a;->onPostMessage()Lo/d$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/bb;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/d$a$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/d$a$onNavigationEvent;
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lo/d$a$onNavigationEvent;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/d$a;

    invoke-static {v0, p1}, Lo/d$a;->onNavigationEvent(Lo/d$a;Ljava/lang/String;)V

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/d$a$onNavigationEvent;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lo/d$a$onNavigationEvent;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/d$a;

    invoke-static {v0, p1}, Lo/d$a;->extraCallback(Lo/d$a;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/d$a$onNavigationEvent;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lo/d$a$onNavigationEvent;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/d$a;

    invoke-static {v0, p1}, Lo/d$a;->onMessageChannelReady(Lo/d$a;Ljava/lang/String;)V

    return-object p0
.end method
