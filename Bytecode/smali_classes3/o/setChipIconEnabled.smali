.class abstract Lo/setChipIconEnabled;
.super Lo/setChipTextResource;
.source ""


# instance fields
.field private onNavigationEvent:Z


# direct methods
.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setChipTextResource;-><init>(Lo/setCheckedIcon;)V

    .line 2
    iget-object p1, p0, Lo/setChipIconEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p1, p0}, Lo/setCheckedIcon;->onPostMessage(Lo/setChipIconEnabled;)V

    return-void
.end method


# virtual methods
.method final INotificationSideChannel()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lo/setChipIconEnabled;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final IPostMessageService$Stub$Proxy()V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lo/setChipIconEnabled;->INotificationSideChannel()Z

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

.method protected Q_()V
    .locals 0

    return-void
.end method

.method public final cancel()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lo/setChipIconEnabled;->onNavigationEvent:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lo/setChipIconEnabled;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/setChipIconEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->getDefaultImpl()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lo/setChipIconEnabled;->onNavigationEvent:Z

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final cancelAll()V
    .locals 2

    .line 14
    iget-boolean v0, p0, Lo/setChipIconEnabled;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lo/setChipIconEnabled;->Q_()V

    .line 17
    iget-object v0, p0, Lo/setChipIconEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->getDefaultImpl()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lo/setChipIconEnabled;->onNavigationEvent:Z

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract onPostMessage()Z
.end method
