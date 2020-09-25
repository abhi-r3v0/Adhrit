.class public final Lo/shouldOverrideUrlLoading$onMessageChannelReady;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldOverrideUrlLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/shouldOverrideUrlLoading;",
        "Lo/shouldOverrideUrlLoading$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/shouldOverrideUrlLoading;->extraCallback()Lo/shouldOverrideUrlLoading;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/o;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/shouldOverrideUrlLoading$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/shouldOverrideUrlLoading$onMessageChannelReady;
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
    iget-object v0, p0, Lo/shouldOverrideUrlLoading$onMessageChannelReady;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/shouldOverrideUrlLoading;

    invoke-static {v0, p1}, Lo/shouldOverrideUrlLoading;->extraCallback(Lo/shouldOverrideUrlLoading;I)V

    return-object p0
.end method

.method public final onNavigationEvent(I)Lo/shouldOverrideUrlLoading$onMessageChannelReady;
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
    iget-object v0, p0, Lo/shouldOverrideUrlLoading$onMessageChannelReady;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/shouldOverrideUrlLoading;

    invoke-static {v0, p1}, Lo/shouldOverrideUrlLoading;->onPostMessage(Lo/shouldOverrideUrlLoading;I)V

    return-object p0
.end method

.method public final onPostMessage(I)Lo/shouldOverrideUrlLoading$onMessageChannelReady;
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 25
    :cond_0
    iget-object v0, p0, Lo/shouldOverrideUrlLoading$onMessageChannelReady;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/shouldOverrideUrlLoading;

    invoke-static {v0, p1}, Lo/shouldOverrideUrlLoading;->ICustomTabsCallback(Lo/shouldOverrideUrlLoading;I)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/shouldOverrideUrlLoading$onMessageChannelReady;
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
    iget-object v0, p0, Lo/shouldOverrideUrlLoading$onMessageChannelReady;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/shouldOverrideUrlLoading;

    invoke-static {v0, p1}, Lo/shouldOverrideUrlLoading;->ICustomTabsCallback(Lo/shouldOverrideUrlLoading;Ljava/lang/String;)V

    return-object p0
.end method
