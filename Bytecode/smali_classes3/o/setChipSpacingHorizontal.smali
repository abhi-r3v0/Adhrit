.class final Lo/setChipSpacingHorizontal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/setChipSpacingResource;

.field private final synthetic onMessageChannelReady:Lo/setCounterTextAppearance;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipSpacingHorizontal;->extraCallback:Lo/setChipSpacingResource;

    iput-object p2, p0, Lo/setChipSpacingHorizontal;->onMessageChannelReady:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setChipSpacingHorizontal;->extraCallback:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/setChipSpacingHorizontal;->extraCallback:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Failed to reset data on the service: not connected to service"

    .line 6
    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v1, p0, Lo/setChipSpacingHorizontal;->onMessageChannelReady:Lo/setCounterTextAppearance;

    invoke-interface {v0, v1}, Lo/setStatusBarForeground;->ICustomTabsCallback(Lo/setCounterTextAppearance;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lo/setChipSpacingHorizontal;->extraCallback:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to reset data on the service: remote exception"

    .line 13
    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lo/setChipSpacingHorizontal;->extraCallback:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onPostMessage(Lo/setChipSpacingResource;)V

    return-void
.end method
