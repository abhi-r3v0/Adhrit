.class final Lo/setCompatHoveredFocusedTranslationZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setStatusBarForeground;

.field private final synthetic onMessageChannelReady:Lo/setCompatPressedTranslationZResource;


# direct methods
.method constructor <init>(Lo/setCompatPressedTranslationZResource;Lo/setStatusBarForeground;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCompatHoveredFocusedTranslationZ;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    iput-object p2, p0, Lo/setCompatHoveredFocusedTranslationZ;->ICustomTabsCallback:Lo/setStatusBarForeground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setCompatHoveredFocusedTranslationZ;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo/setCompatHoveredFocusedTranslationZ;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/setCompatPressedTranslationZResource;->onNavigationEvent(Lo/setCompatPressedTranslationZResource;Z)Z

    .line 4
    iget-object v1, p0, Lo/setCompatHoveredFocusedTranslationZ;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    iget-object v1, v1, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipSpacingResource;->IPostMessageService$Stub()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lo/setCompatHoveredFocusedTranslationZ;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    iget-object v1, v1, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lo/setCompatHoveredFocusedTranslationZ;->onMessageChannelReady:Lo/setCompatPressedTranslationZResource;

    iget-object v1, v1, Lo/setCompatPressedTranslationZResource;->ICustomTabsCallback:Lo/setChipSpacingResource;

    iget-object v2, p0, Lo/setCompatHoveredFocusedTranslationZ;->ICustomTabsCallback:Lo/setStatusBarForeground;

    invoke-virtual {v1, v2}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setStatusBarForeground;)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
