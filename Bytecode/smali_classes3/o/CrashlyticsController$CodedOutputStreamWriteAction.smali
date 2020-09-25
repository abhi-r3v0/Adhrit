.class final Lo/CrashlyticsController$CodedOutputStreamWriteAction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/isDefaultApp<",
        "Lo/isClsTrace;",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lo/calculateFreeRamInBytes;

.field private final synthetic zzb:Lo/isRooted;


# direct methods
.method constructor <init>(Lo/isRooted;Lo/calculateFreeRamInBytes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CrashlyticsController$CodedOutputStreamWriteAction;->zzb:Lo/isRooted;

    iput-object p2, p0, Lo/CrashlyticsController$CodedOutputStreamWriteAction;->zza:Lo/calculateFreeRamInBytes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isClsTrace;

    .line 4
    iget-object v0, p0, Lo/CrashlyticsController$CodedOutputStreamWriteAction;->zzb:Lo/isRooted;

    .line 5
    invoke-virtual {v0}, Lo/isRooted;->zzc()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lo/CrashlyticsController$CodedOutputStreamWriteAction;->zza:Lo/calculateFreeRamInBytes;

    .line 7
    invoke-virtual {p1}, Lo/isClsTrace;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/calculateFreeRamInBytes;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
