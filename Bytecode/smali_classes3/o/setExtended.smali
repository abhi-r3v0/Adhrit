.class final Lo/setExtended;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/setCloseIconEndPadding;

.field private final synthetic onPostMessage:Lo/setChipSpacingResource;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;Lo/setCloseIconEndPadding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setExtended;->onPostMessage:Lo/setChipSpacingResource;

    iput-object p2, p0, Lo/setExtended;->onNavigationEvent:Lo/setCloseIconEndPadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lo/setExtended;->onPostMessage:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lo/setExtended;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/setExtended;->onNavigationEvent:Lo/setCloseIconEndPadding;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    iget-object v0, p0, Lo/setExtended;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lo/setStatusBarForeground;->extraCallback(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lo/setExtended;->onNavigationEvent:Lo/setCloseIconEndPadding;

    iget-wide v2, v0, Lo/setCloseIconEndPadding;->extraCallback:J

    iget-object v0, p0, Lo/setExtended;->onNavigationEvent:Lo/setCloseIconEndPadding;

    iget-object v4, v0, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    iget-object v0, p0, Lo/setExtended;->onNavigationEvent:Lo/setCloseIconEndPadding;

    iget-object v5, v0, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    iget-object v0, p0, Lo/setExtended;->onPostMessage:Lo/setChipSpacingResource;

    .line 9
    invoke-virtual {v0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-interface/range {v1 .. v6}, Lo/setStatusBarForeground;->extraCallback(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lo/setExtended;->onPostMessage:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onPostMessage(Lo/setChipSpacingResource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lo/setExtended;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
