.class final synthetic Lo/setCloseIcon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onNavigationEvent:Lo/setChipIconSize;


# direct methods
.method constructor <init>(Lo/setChipIconSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCloseIcon;->onNavigationEvent:Lo/setChipIconSize;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/setCloseIcon;->onNavigationEvent:Lo/setChipIconSize;

    .line 2
    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 3
    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->extraCommand:Lo/setIconSize;

    invoke-virtual {v1}, Lo/setIconSize;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->mayLaunchUrl:Lo/setIconTint;

    invoke-virtual {v1}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v1

    .line 7
    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v3

    iget-object v3, v3, Lo/setBackgroundTintList;->mayLaunchUrl:Lo/setIconTint;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lo/setIconTint;->ICustomTabsCallback(J)V

    const-wide/16 v3, 0x5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 9
    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 11
    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->extraCommand:Lo/setIconSize;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/setIconSize;->onMessageChannelReady(Z)V

    return-void

    .line 14
    :cond_1
    iget-object v0, v0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->setDefaultImpl()V

    return-void
.end method
