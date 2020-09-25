.class final Lo/setCompatElevationResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setStartIconVisible;

.field private final synthetic extraCallback:Z

.field private final synthetic onMessageChannelReady:Lo/setCounterTextAppearance;

.field private final synthetic onNavigationEvent:Lo/setStartIconVisible;

.field private final synthetic onPostMessage:Z

.field private final synthetic onTransact:Lo/setChipSpacingResource;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;ZZLo/setStartIconVisible;Lo/setCounterTextAppearance;Lo/setStartIconVisible;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCompatElevationResource;->onTransact:Lo/setChipSpacingResource;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/setCompatElevationResource;->extraCallback:Z

    iput-boolean p3, p0, Lo/setCompatElevationResource;->onPostMessage:Z

    iput-object p4, p0, Lo/setCompatElevationResource;->onNavigationEvent:Lo/setStartIconVisible;

    iput-object p5, p0, Lo/setCompatElevationResource;->onMessageChannelReady:Lo/setCounterTextAppearance;

    iput-object p6, p0, Lo/setCompatElevationResource;->ICustomTabsCallback:Lo/setStartIconVisible;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setCompatElevationResource;->onTransact:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/setCompatElevationResource;->onTransact:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 6
    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-boolean v1, p0, Lo/setCompatElevationResource;->extraCallback:Z

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lo/setCompatElevationResource;->onTransact:Lo/setChipSpacingResource;

    iget-boolean v2, p0, Lo/setCompatElevationResource;->onPostMessage:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lo/setCompatElevationResource;->onNavigationEvent:Lo/setStartIconVisible;

    :goto_0
    iget-object v3, p0, Lo/setCompatElevationResource;->onMessageChannelReady:Lo/setCounterTextAppearance;

    invoke-virtual {v1, v0, v2, v3}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setStatusBarForeground;Lo/getTags;Lo/setCounterTextAppearance;)V

    goto :goto_1

    .line 10
    :cond_2
    :try_start_0
    iget-object v1, p0, Lo/setCompatElevationResource;->ICustomTabsCallback:Lo/setStartIconVisible;

    iget-object v1, v1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lo/setCompatElevationResource;->onNavigationEvent:Lo/setStartIconVisible;

    iget-object v2, p0, Lo/setCompatElevationResource;->onMessageChannelReady:Lo/setCounterTextAppearance;

    invoke-interface {v0, v1, v2}, Lo/setStatusBarForeground;->onMessageChannelReady(Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, p0, Lo/setCompatElevationResource;->onNavigationEvent:Lo/setStartIconVisible;

    invoke-interface {v0, v1}, Lo/setStatusBarForeground;->ICustomTabsCallback(Lo/setStartIconVisible;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lo/setCompatElevationResource;->onTransact:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    .line 17
    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :goto_1
    iget-object v0, p0, Lo/setCompatElevationResource;->onTransact:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onPostMessage(Lo/setChipSpacingResource;)V

    return-void
.end method
