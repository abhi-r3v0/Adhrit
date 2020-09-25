.class public abstract Lo/setUseMaterialThemeColors;
.super Lo/pathToString;
.source ""


# instance fields
.field private extraCallback:Z


# direct methods
.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/pathToString;-><init>(Lo/setCheckedIcon;)V

    .line 2
    iget-object p1, p0, Lo/setUseMaterialThemeColors;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p1, p0}, Lo/setCheckedIcon;->onPostMessage(Lo/setUseMaterialThemeColors;)V

    return-void
.end method


# virtual methods
.method protected ICustomTabsService$Stub()V
    .locals 0

    return-void
.end method

.method public final INotificationSideChannel$Default()V
    .locals 2

    .line 14
    iget-boolean v0, p0, Lo/setUseMaterialThemeColors;->extraCallback:Z

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsService$Stub()V

    .line 17
    iget-object v0, p0, Lo/setUseMaterialThemeColors;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->getDefaultImpl()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lo/setUseMaterialThemeColors;->extraCallback:Z

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final INotificationSideChannel$Stub()V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final INotificationSideChannel$Stub$Proxy()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lo/setUseMaterialThemeColors;->extraCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract IPostMessageService()Z
.end method

.method public final getDefaultImpl()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lo/setUseMaterialThemeColors;->extraCallback:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->IPostMessageService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/setUseMaterialThemeColors;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->getDefaultImpl()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lo/setUseMaterialThemeColors;->extraCallback:Z

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
