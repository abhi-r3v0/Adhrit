.class final Lo/submit;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/isDefaultApp<",
        "TResultT;",
        "Lcom/google/android/gms/tasks/Task<",
        "TResultT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lo/openKeyboard;

.field private final synthetic zzb:Lo/CommonUtils$Architecture;


# direct methods
.method constructor <init>(Lo/CommonUtils$Architecture;Lo/openKeyboard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/submit;->zzb:Lo/CommonUtils$Architecture;

    iput-object p2, p0, Lo/submit;->zza:Lo/openKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lo/submit;->zzb:Lo/CommonUtils$Architecture;

    iget-object v0, p0, Lo/submit;->zza:Lo/openKeyboard;

    invoke-interface {v0}, Lo/openKeyboard;->zzc()Lo/openKeyboard;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/resolveUnityEditorVersion;->zza(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :cond_0
    return-object p1
.end method
