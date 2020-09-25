.class public final Lo/setIconEndPadding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/setChipIconSize;

.field private final synthetic onNavigationEvent:Z


# direct methods
.method public constructor <init>(Lo/setChipIconSize;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    iput-boolean p2, p0, Lo/setIconEndPadding;->onNavigationEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    iget-object v0, v0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->cancel()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    iget-object v1, v1, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->IPostMessageService$Stub$Proxy()Z

    move-result v1

    .line 4
    iget-object v2, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    iget-object v2, v2, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    iget-boolean v3, p0, Lo/setIconEndPadding;->onNavigationEvent:Z

    invoke-virtual {v2, v3}, Lo/setCheckedIcon;->onMessageChannelReady(Z)V

    .line 5
    iget-boolean v2, p0, Lo/setIconEndPadding;->onNavigationEvent:Z

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    iget-object v1, v1, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 7
    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    iget-boolean v2, p0, Lo/setIconEndPadding;->onNavigationEvent:Z

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    iget-object v1, v1, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->cancel()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    iget-object v1, v1, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 11
    invoke-virtual {v1}, Lo/setCheckedIcon;->cancel()Z

    move-result v1

    iget-object v2, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    iget-object v2, v2, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->IPostMessageService$Stub$Proxy()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 12
    :cond_1
    iget-object v1, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    iget-object v1, v1, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 13
    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v1

    iget-boolean v2, p0, Lo/setIconEndPadding;->onNavigationEvent:Z

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    .line 17
    invoke-virtual {v1, v3, v2, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lo/setIconEndPadding;->extraCallback:Lo/setChipIconSize;

    invoke-static {v0}, Lo/setChipIconSize;->onNavigationEvent(Lo/setChipIconSize;)V

    return-void
.end method
