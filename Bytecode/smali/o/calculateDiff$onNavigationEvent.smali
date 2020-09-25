.class final Lo/calculateDiff$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/calculateDiff;-><init>(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;ILo/setActive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/diffPartial;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/digest/StoryStates;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/calculateDiff;


# direct methods
.method constructor <init>(Lo/calculateDiff;)V
    .locals 0

    iput-object p1, p0, Lo/calculateDiff$onNavigationEvent;->onPostMessage:Lo/calculateDiff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 16
    check-cast p1, Lo/diffPartial;

    .line 1020
    instance-of v0, p1, Lo/diffPartial$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lo/calculateDiff$onNavigationEvent;->onPostMessage:Lo/calculateDiff;

    .line 2016
    iget v0, v0, Lo/calculateDiff;->onMessageChannelReady:I

    .line 3003
    iget p1, p1, Lo/diffPartial;->onNavigationEvent:I

    if-ne v0, p1, :cond_0

    .line 1021
    iget-object p1, p0, Lo/calculateDiff$onNavigationEvent;->onPostMessage:Lo/calculateDiff;

    invoke-virtual {p1}, Lo/calculateDiff;->onNavigationEvent()V

    return-void

    :cond_0
    iget-object p1, p0, Lo/calculateDiff$onNavigationEvent;->onPostMessage:Lo/calculateDiff;

    invoke-virtual {p1}, Lo/calculateDiff;->extraCallback()V

    return-void

    .line 1023
    :cond_1
    instance-of v0, p1, Lo/diffPartial$onNavigationEvent;

    if-eqz v0, :cond_2

    .line 1024
    iget-object v0, p0, Lo/calculateDiff$onNavigationEvent;->onPostMessage:Lo/calculateDiff;

    .line 5016
    iget v0, v0, Lo/calculateDiff;->onMessageChannelReady:I

    .line 6003
    iget v1, p1, Lo/diffPartial;->onNavigationEvent:I

    if-ne v0, v1, :cond_3

    .line 1024
    iget-object v0, p0, Lo/calculateDiff$onNavigationEvent;->onPostMessage:Lo/calculateDiff;

    .line 7003
    iget p1, p1, Lo/diffPartial;->onNavigationEvent:I

    .line 1024
    invoke-virtual {v0, p1}, Lo/calculateDiff;->ICustomTabsCallback(I)V

    return-void

    .line 1026
    :cond_2
    instance-of v0, p1, Lo/diffPartial$onPostMessage;

    if-eqz v0, :cond_3

    .line 1027
    iget-object v0, p0, Lo/calculateDiff$onNavigationEvent;->onPostMessage:Lo/calculateDiff;

    .line 7016
    iget v0, v0, Lo/calculateDiff;->onMessageChannelReady:I

    .line 8003
    iget v1, p1, Lo/diffPartial;->onNavigationEvent:I

    if-ne v0, v1, :cond_3

    .line 1027
    iget-object v0, p0, Lo/calculateDiff$onNavigationEvent;->onPostMessage:Lo/calculateDiff;

    .line 9003
    iget p1, p1, Lo/diffPartial;->onNavigationEvent:I

    .line 1027
    invoke-virtual {v0, p1}, Lo/calculateDiff;->onNavigationEvent(I)V

    :cond_3
    return-void
.end method
