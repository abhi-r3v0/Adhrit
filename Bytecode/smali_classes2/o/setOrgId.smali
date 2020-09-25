.class public final Lo/setOrgId;
.super Lo/getOrgId;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/getOrgId;-><init>()V

    return-void
.end method


# virtual methods
.method public final getToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 1008
    iget-object v1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 1014
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object v0
.end method

.method public final invalidateToken()V
    .locals 0

    return-void
.end method

.method public final removeChangeListener()V
    .locals 0

    return-void
.end method

.method public final setChangeListener(Lo/retainAll;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/retainAll<",
            "Lo/AutoValue_CrashlyticsReport_FilesPayload$1;",
            ">;)V"
        }
    .end annotation

    .line 36
    sget-object v0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->UNAUTHENTICATED:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    invoke-interface {p1, v0}, Lo/retainAll;->onValue(Ljava/lang/Object;)V

    return-void
.end method
