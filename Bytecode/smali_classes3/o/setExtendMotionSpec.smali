.class final Lo/setExtendMotionSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Landroid/os/Bundle;

.field private final synthetic onNavigationEvent:Lo/setChipSpacingResource;

.field private final synthetic onPostMessage:Lo/setCounterTextAppearance;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;Landroid/os/Bundle;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setExtendMotionSpec;->onNavigationEvent:Lo/setChipSpacingResource;

    iput-object p2, p0, Lo/setExtendMotionSpec;->extraCallback:Landroid/os/Bundle;

    iput-object p3, p0, Lo/setExtendMotionSpec;->onPostMessage:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setExtendMotionSpec;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v0

    const-string v1, "Failed to send default event parameters to service"

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/setExtendMotionSpec;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v2, p0, Lo/setExtendMotionSpec;->extraCallback:Landroid/os/Bundle;

    iget-object v3, p0, Lo/setExtendMotionSpec;->onPostMessage:Lo/setCounterTextAppearance;

    invoke-interface {v0, v2, v3}, Lo/setStatusBarForeground;->onNavigationEvent(Landroid/os/Bundle;Lo/setCounterTextAppearance;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    iget-object v2, p0, Lo/setExtendMotionSpec;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
