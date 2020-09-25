.class final Lo/setChipSpacingVertical;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Z

.field private final synthetic onMessageChannelReady:Lo/setError;

.field private final synthetic onNavigationEvent:Lo/setCounterTextAppearance;

.field private final synthetic onPostMessage:Lo/setChipSpacingResource;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;ZLo/setError;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipSpacingVertical;->onPostMessage:Lo/setChipSpacingResource;

    iput-boolean p2, p0, Lo/setChipSpacingVertical;->ICustomTabsCallback:Z

    iput-object p3, p0, Lo/setChipSpacingVertical;->onMessageChannelReady:Lo/setError;

    iput-object p4, p0, Lo/setChipSpacingVertical;->onNavigationEvent:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setChipSpacingVertical;->onPostMessage:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/setChipSpacingVertical;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user property"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lo/setChipSpacingVertical;->onPostMessage:Lo/setChipSpacingResource;

    iget-boolean v2, p0, Lo/setChipSpacingVertical;->ICustomTabsCallback:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lo/setChipSpacingVertical;->onMessageChannelReady:Lo/setError;

    :goto_0
    iget-object v3, p0, Lo/setChipSpacingVertical;->onNavigationEvent:Lo/setCounterTextAppearance;

    invoke-virtual {v1, v0, v2, v3}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setStatusBarForeground;Lo/getTags;Lo/setCounterTextAppearance;)V

    .line 7
    iget-object v0, p0, Lo/setChipSpacingVertical;->onPostMessage:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setChipSpacingResource;->onPostMessage(Lo/setChipSpacingResource;)V

    return-void
.end method
