.class public final Lo/l$onPostMessage;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/l;",
        "Lo/l$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/l;->ICustomTabsCallback()Lo/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/bM;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/l$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(J)Lo/l$onPostMessage;
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
    iget-object v0, p0, Lo/l$onPostMessage;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/l;

    invoke-static {v0, p1, p2}, Lo/l;->ICustomTabsCallback(Lo/l;J)V

    return-object p0
.end method

.method public final onNavigationEvent(J)Lo/l$onPostMessage;
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
    iget-object v0, p0, Lo/l$onPostMessage;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/l;

    invoke-static {v0, p1, p2}, Lo/l;->onPostMessage(Lo/l;J)V

    return-object p0
.end method

.method public final onPostMessage(J)Lo/l$onPostMessage;
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
    iget-object v0, p0, Lo/l$onPostMessage;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/l;

    invoke-static {v0, p1, p2}, Lo/l;->extraCallback(Lo/l;J)V

    return-object p0
.end method
