.class public Lo/getDefaultImpl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/getLaunchPendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:J

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Landroid/view/animation/Interpolator;

.field onPostMessage:Lo/setVolumeTo;

.field private final onRelationshipValidationResult:Lo/getTag;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lo/getDefaultImpl;->extraCallback:J

    .line 120
    new-instance v0, Lo/getDefaultImpl$3;

    invoke-direct {v0, p0}, Lo/getDefaultImpl$3;-><init>(Lo/getDefaultImpl;)V

    iput-object v0, p0, Lo/getDefaultImpl;->onRelationshipValidationResult:Lo/getTag;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getDefaultImpl;->ICustomTabsCallback:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/getLaunchPendingIntent;)Lo/getDefaultImpl;
    .locals 1

    .line 53
    iget-boolean v0, p0, Lo/getDefaultImpl;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lo/getDefaultImpl;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public ICustomTabsCallback()V
    .locals 7

    .line 68
    iget-boolean v0, p0, Lo/getDefaultImpl;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lo/getDefaultImpl;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getLaunchPendingIntent;

    .line 70
    iget-wide v2, p0, Lo/getDefaultImpl;->extraCallback:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 71
    invoke-virtual {v1, v2, v3}, Lo/getLaunchPendingIntent;->onMessageChannelReady(J)Lo/getLaunchPendingIntent;

    .line 73
    :cond_1
    iget-object v2, p0, Lo/getDefaultImpl;->onNavigationEvent:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v1, v2}, Lo/getLaunchPendingIntent;->extraCallback(Landroid/view/animation/Interpolator;)Lo/getLaunchPendingIntent;

    .line 76
    :cond_2
    iget-object v2, p0, Lo/getDefaultImpl;->onPostMessage:Lo/setVolumeTo;

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lo/getDefaultImpl;->onRelationshipValidationResult:Lo/getTag;

    invoke-virtual {v1, v2}, Lo/getLaunchPendingIntent;->onPostMessage(Lo/setVolumeTo;)Lo/getLaunchPendingIntent;

    .line 79
    :cond_3
    invoke-virtual {v1}, Lo/getLaunchPendingIntent;->onPostMessage()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lo/getDefaultImpl;->onMessageChannelReady:Z

    return-void
.end method

.method public extraCallback(Landroid/view/animation/Interpolator;)Lo/getDefaultImpl;
    .locals 1

    .line 107
    iget-boolean v0, p0, Lo/getDefaultImpl;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Lo/getDefaultImpl;->onNavigationEvent:Landroid/view/animation/Interpolator;

    :cond_0
    return-object p0
.end method

.method public extraCallback(Lo/getLaunchPendingIntent;Lo/getLaunchPendingIntent;)Lo/getDefaultImpl;
    .locals 2

    .line 61
    iget-object v0, p0, Lo/getDefaultImpl;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p1}, Lo/getLaunchPendingIntent;->extraCallback()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lo/getLaunchPendingIntent;->onNavigationEvent(J)Lo/getLaunchPendingIntent;

    .line 63
    iget-object p1, p0, Lo/getDefaultImpl;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public onMessageChannelReady()V
    .locals 2

    .line 90
    iget-boolean v0, p0, Lo/getDefaultImpl;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lo/getDefaultImpl;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getLaunchPendingIntent;

    .line 94
    invoke-virtual {v1}, Lo/getLaunchPendingIntent;->onNavigationEvent()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lo/getDefaultImpl;->onMessageChannelReady:Z

    return-void
.end method

.method public onNavigationEvent(J)Lo/getDefaultImpl;
    .locals 1

    .line 100
    iget-boolean v0, p0, Lo/getDefaultImpl;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 101
    iput-wide p1, p0, Lo/getDefaultImpl;->extraCallback:J

    :cond_0
    return-object p0
.end method

.method public onNavigationEvent(Lo/setVolumeTo;)Lo/getDefaultImpl;
    .locals 1

    .line 114
    iget-boolean v0, p0, Lo/getDefaultImpl;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lo/getDefaultImpl;->onPostMessage:Lo/setVolumeTo;

    :cond_0
    return-object p0
.end method

.method onPostMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lo/getDefaultImpl;->onMessageChannelReady:Z

    return-void
.end method
