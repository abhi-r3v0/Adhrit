.class final Lo/moveRedLeft;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/moveRedLeft$onNavigationEvent;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/listen;

.field volatile extraCallback:J

.field final onMessageChannelReady:Lo/listen;

.field final onNavigationEvent:Lo/listen;

.field final onPostMessage:Lo/sendUnauth;


# direct methods
.method constructor <init>(Lo/sendUnauth;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {}, Lo/shouldReconnect;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    new-instance v0, Lo/shouldReconnect;

    invoke-direct {v0}, Lo/shouldReconnect;-><init>()V

    goto :goto_0

    .line 1031
    :cond_0
    new-instance v0, Lo/addMerge$onNavigationEvent;

    invoke-direct {v0}, Lo/addMerge$onNavigationEvent;-><init>()V

    .line 29
    :goto_0
    iput-object v0, p0, Lo/moveRedLeft;->ICustomTabsCallback:Lo/listen;

    .line 2028
    invoke-static {}, Lo/shouldReconnect;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2029
    new-instance v0, Lo/shouldReconnect;

    invoke-direct {v0}, Lo/shouldReconnect;-><init>()V

    goto :goto_1

    .line 2031
    :cond_1
    new-instance v0, Lo/addMerge$onNavigationEvent;

    invoke-direct {v0}, Lo/addMerge$onNavigationEvent;-><init>()V

    .line 30
    :goto_1
    iput-object v0, p0, Lo/moveRedLeft;->onMessageChannelReady:Lo/listen;

    .line 3028
    invoke-static {}, Lo/shouldReconnect;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3029
    new-instance v0, Lo/shouldReconnect;

    invoke-direct {v0}, Lo/shouldReconnect;-><init>()V

    goto :goto_2

    .line 3031
    :cond_2
    new-instance v0, Lo/addMerge$onNavigationEvent;

    invoke-direct {v0}, Lo/addMerge$onNavigationEvent;-><init>()V

    .line 31
    :goto_2
    iput-object v0, p0, Lo/moveRedLeft;->onNavigationEvent:Lo/listen;

    .line 35
    iput-object p1, p0, Lo/moveRedLeft;->onPostMessage:Lo/sendUnauth;

    return-void
.end method
