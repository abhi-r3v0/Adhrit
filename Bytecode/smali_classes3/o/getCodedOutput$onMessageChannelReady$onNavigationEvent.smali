.class public final Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/getCodedOutput$onMessageChannelReady;",
        "Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2633
    invoke-static {}, Lo/getCodedOutput$onMessageChannelReady;->access$5200()Lo/getCodedOutput$onMessageChannelReady;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCodedOutput$4;)V
    .locals 0

    .line 2626
    invoke-direct {p0}, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearDeveloperModeEnabled()Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 2704
    invoke-virtual {p0}, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;->copyOnWrite()V

    .line 2705
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0}, Lo/getCodedOutput$onMessageChannelReady;->access$5600(Lo/getCodedOutput$onMessageChannelReady;)V

    return-object p0
.end method

.method public final clearLastFetchStatus()Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 2668
    invoke-virtual {p0}, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;->copyOnWrite()V

    .line 2669
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0}, Lo/getCodedOutput$onMessageChannelReady;->access$5400(Lo/getCodedOutput$onMessageChannelReady;)V

    return-object p0
.end method

.method public final clearLastKnownExperimentStartTime()Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 2740
    invoke-virtual {p0}, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;->copyOnWrite()V

    .line 2741
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0}, Lo/getCodedOutput$onMessageChannelReady;->access$5800(Lo/getCodedOutput$onMessageChannelReady;)V

    return-object p0
.end method

.method public final getDeveloperModeEnabled()Z
    .locals 1

    .line 2687
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCodedOutput$onMessageChannelReady;->getDeveloperModeEnabled()Z

    move-result v0

    return v0
.end method

.method public final getLastFetchStatus()I
    .locals 1

    .line 2651
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCodedOutput$onMessageChannelReady;->getLastFetchStatus()I

    move-result v0

    return v0
.end method

.method public final getLastKnownExperimentStartTime()J
    .locals 2

    .line 2723
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCodedOutput$onMessageChannelReady;->getLastKnownExperimentStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasDeveloperModeEnabled()Z
    .locals 1

    .line 2679
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCodedOutput$onMessageChannelReady;->hasDeveloperModeEnabled()Z

    move-result v0

    return v0
.end method

.method public final hasLastFetchStatus()Z
    .locals 1

    .line 2643
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCodedOutput$onMessageChannelReady;->hasLastFetchStatus()Z

    move-result v0

    return v0
.end method

.method public final hasLastKnownExperimentStartTime()Z
    .locals 1

    .line 2715
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCodedOutput$onMessageChannelReady;->hasLastKnownExperimentStartTime()Z

    move-result v0

    return v0
.end method

.method public final setDeveloperModeEnabled(Z)Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 2695
    invoke-virtual {p0}, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;->copyOnWrite()V

    .line 2696
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/getCodedOutput$onMessageChannelReady;->access$5500(Lo/getCodedOutput$onMessageChannelReady;Z)V

    return-object p0
.end method

.method public final setLastFetchStatus(I)Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 2659
    invoke-virtual {p0}, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;->copyOnWrite()V

    .line 2660
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/getCodedOutput$onMessageChannelReady;->access$5300(Lo/getCodedOutput$onMessageChannelReady;I)V

    return-object p0
.end method

.method public final setLastKnownExperimentStartTime(J)Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;
    .locals 1

    .line 2731
    invoke-virtual {p0}, Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;->copyOnWrite()V

    .line 2732
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onMessageChannelReady;->access$5700(Lo/getCodedOutput$onMessageChannelReady;J)V

    return-object p0
.end method
