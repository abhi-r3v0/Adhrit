.class Lo/pathToString;
.super Lo/setChipTextResource;
.source ""


# direct methods
.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setChipTextResource;-><init>(Lo/setCheckedIcon;)V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 1

    .line 11
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    return-void
.end method

.method public ICustomTabsCallback$Stub()Lo/setChipSpacingResource;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    return-object v0
.end method

.method public asBinder()Lo/AppBarLayout$Behavior;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public asInterface()Lo/setForegroundGravity;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->extraCallback()Lo/setForegroundGravity;

    move-result-object v0

    return-object v0
.end method

.method public extraCallback()V
    .locals 1

    .line 13
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCallback()V

    return-void
.end method

.method public onMessageChannelReady()V
    .locals 1

    .line 15
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->INotificationSideChannel$Stub$Proxy()V

    return-void
.end method

.method public onNavigationEvent()Lo/zzbfb;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub$Proxy()Lo/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage()Lo/setChipIconSize;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    return-object v0
.end method

.method public onRelationshipValidationResult()Lo/setExpanded;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v0

    return-object v0
.end method

.method public onTransact()Lo/setChipEndPadding;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/pathToString;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub()Lo/setChipEndPadding;

    move-result-object v0

    return-object v0
.end method
