.class public abstract Lo/getOrgId;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getToken()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract invalidateToken()V
.end method

.method public abstract removeChangeListener()V
.end method

.method public abstract setChangeListener(Lo/retainAll;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/retainAll<",
            "Lo/AutoValue_CrashlyticsReport_FilesPayload$1;",
            ">;)V"
        }
    .end annotation
.end method
