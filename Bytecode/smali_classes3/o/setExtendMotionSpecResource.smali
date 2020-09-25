.class final Lo/setExtendMotionSpecResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Z

.field private final synthetic extraCallback:Lo/setCounterTextAppearance;

.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Z

.field private final synthetic onPostMessage:Lo/zzir;

.field private final synthetic onRelationshipValidationResult:Lo/setChipSpacingResource;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;ZZLo/zzir;Lo/setCounterTextAppearance;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setExtendMotionSpecResource;->onRelationshipValidationResult:Lo/setChipSpacingResource;

    iput-boolean p2, p0, Lo/setExtendMotionSpecResource;->onNavigationEvent:Z

    iput-boolean p3, p0, Lo/setExtendMotionSpecResource;->ICustomTabsCallback:Z

    iput-object p4, p0, Lo/setExtendMotionSpecResource;->onPostMessage:Lo/zzir;

    iput-object p5, p0, Lo/setExtendMotionSpecResource;->extraCallback:Lo/setCounterTextAppearance;

    iput-object p6, p0, Lo/setExtendMotionSpecResource;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setExtendMotionSpecResource;->onRelationshipValidationResult:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/setExtendMotionSpecResource;->onRelationshipValidationResult:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lo/setExtendMotionSpecResource;->onNavigationEvent:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lo/setExtendMotionSpecResource;->onRelationshipValidationResult:Lo/setChipSpacingResource;

    iget-boolean v2, p0, Lo/setExtendMotionSpecResource;->ICustomTabsCallback:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lo/setExtendMotionSpecResource;->onPostMessage:Lo/zzir;

    :goto_0
    iget-object v3, p0, Lo/setExtendMotionSpecResource;->extraCallback:Lo/setCounterTextAppearance;

    invoke-virtual {v1, v0, v2, v3}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setStatusBarForeground;Lo/getTags;Lo/setCounterTextAppearance;)V

    goto :goto_1

    .line 8
    :cond_2
    :try_start_0
    iget-object v1, p0, Lo/setExtendMotionSpecResource;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lo/setExtendMotionSpecResource;->onPostMessage:Lo/zzir;

    iget-object v2, p0, Lo/setExtendMotionSpecResource;->extraCallback:Lo/setCounterTextAppearance;

    invoke-interface {v0, v1, v2}, Lo/setStatusBarForeground;->onMessageChannelReady(Lo/zzir;Lo/setCounterTextAppearance;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Lo/setExtendMotionSpecResource;->onPostMessage:Lo/zzir;

    iget-object v2, p0, Lo/setExtendMotionSpecResource;->onMessageChannelReady:Ljava/lang/String;

    iget-object v3, p0, Lo/setExtendMotionSpecResource;->onRelationshipValidationResult:Lo/setChipSpacingResource;

    invoke-virtual {v3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lo/setStatusBarForeground;->extraCallback(Lo/zzir;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lo/setExtendMotionSpecResource;->onRelationshipValidationResult:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :goto_1
    iget-object v0, p0, Lo/setExtendMotionSpecResource;->onRelationshipValidationResult:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onPostMessage(Lo/setChipSpacingResource;)V

    return-void
.end method
