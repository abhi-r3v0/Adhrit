.class final Lo/getPaddingRight$extraCallback$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPaddingRight$extraCallback;->onNavigationEvent(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

.field private synthetic onPostMessage:Lo/getPaddingRight$extraCallback;


# direct methods
.method constructor <init>(Lo/getPaddingRight$extraCallback;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
    .locals 0

    iput-object p1, p0, Lo/getPaddingRight$extraCallback$onNavigationEvent;->onPostMessage:Lo/getPaddingRight$extraCallback;

    iput-object p2, p0, Lo/getPaddingRight$extraCallback$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lo/getPaddingRight$extraCallback$onNavigationEvent;->onPostMessage:Lo/getPaddingRight$extraCallback;

    iget-object v0, v0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {v0}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object v0

    .line 1078
    iget-boolean v0, v0, Lo/initState;->extraCallback:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lo/getPaddingRight$extraCallback$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 2022
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->extraCallback:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lo/getPaddingRight$extraCallback$onNavigationEvent;->onPostMessage:Lo/getPaddingRight$extraCallback;

    iget-object v0, v0, Lo/getPaddingRight$extraCallback;->extraCallback:Lo/getPaddingRight;

    invoke-static {v0}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/initState;->onPostMessage(Z)V

    :cond_1
    return-void
.end method
