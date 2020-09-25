.class public final Lo/bc$ICustomTabsCallback;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/bc;",
        "Lo/bc$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/bc;->onPostMessage()Lo/bc;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/bd;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/bc$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)Lo/bc$ICustomTabsCallback;
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
    iget-object v0, p0, Lo/bc$ICustomTabsCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/bc;

    invoke-static {v0, p1}, Lo/bc;->ICustomTabsCallback(Lo/bc;I)V

    return-object p0
.end method

.method public final onMessageChannelReady(J)Lo/bc$ICustomTabsCallback;
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
    iget-object v0, p0, Lo/bc$ICustomTabsCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/bc;

    invoke-static {v0, p1, p2}, Lo/bc;->onPostMessage(Lo/bc;J)V

    return-object p0
.end method
