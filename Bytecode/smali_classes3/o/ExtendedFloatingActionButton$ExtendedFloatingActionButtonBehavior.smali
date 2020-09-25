.class final Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onMessageChannelReady:Lo/setShowBuffering;

.field private final synthetic onNavigationEvent:Lo/zzir;

.field private final synthetic onPostMessage:Lo/setChipSpacingResource;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;Lo/zzir;Ljava/lang/String;Lo/setShowBuffering;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage:Lo/setChipSpacingResource;

    iput-object p2, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent:Lo/zzir;

    iput-object p3, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onMessageChannelReady:Lo/setShowBuffering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage:Lo/setChipSpacingResource;

    invoke-static {v1}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 7
    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v1

    iget-object v2, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onMessageChannelReady:Lo/setShowBuffering;

    invoke-virtual {v1, v2, v0}, Lo/setHelperTextEnabled;->onPostMessage(Lo/setShowBuffering;[B)V

    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v2, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onNavigationEvent:Lo/zzir;

    iget-object v3, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->extraCallback:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lo/setStatusBarForeground;->onNavigationEvent(Lo/zzir;Ljava/lang/String;)[B

    move-result-object v0

    .line 11
    iget-object v1, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage:Lo/setChipSpacingResource;

    invoke-static {v1}, Lo/setChipSpacingResource;->onPostMessage(Lo/setChipSpacingResource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v1, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v1

    iget-object v2, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onMessageChannelReady:Lo/setShowBuffering;

    invoke-virtual {v1, v2, v0}, Lo/setHelperTextEnabled;->onPostMessage(Lo/setShowBuffering;[B)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    :try_start_2
    iget-object v2, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-object v1, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v1

    iget-object v2, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onMessageChannelReady:Lo/setShowBuffering;

    invoke-virtual {v1, v2, v0}, Lo/setHelperTextEnabled;->onPostMessage(Lo/setShowBuffering;[B)V

    return-void

    .line 18
    :goto_0
    iget-object v2, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v2

    iget-object v3, p0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->onMessageChannelReady:Lo/setShowBuffering;

    invoke-virtual {v2, v3, v0}, Lo/setHelperTextEnabled;->onPostMessage(Lo/setShowBuffering;[B)V

    .line 19
    throw v1
.end method
