.class final Lo/CrashlyticsController$AnySessionPartFileFilter;
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
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Lo/calculateFreeRamInBytes;

.field private final synthetic zzc:Lo/isRooted;


# direct methods
.method constructor <init>(Lo/isRooted;Ljava/lang/String;Lo/calculateFreeRamInBytes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CrashlyticsController$AnySessionPartFileFilter;->zzc:Lo/isRooted;

    iput-object p2, p0, Lo/CrashlyticsController$AnySessionPartFileFilter;->zza:Ljava/lang/String;

    iput-object p3, p0, Lo/CrashlyticsController$AnySessionPartFileFilter;->zzb:Lo/calculateFreeRamInBytes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3
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
    iget-object v0, p0, Lo/CrashlyticsController$AnySessionPartFileFilter;->zzc:Lo/isRooted;

    .line 5
    invoke-virtual {v0}, Lo/isRooted;->zzc()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lo/isClsTrace;->getToken()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lo/CrashlyticsController$AnySessionPartFileFilter;->zza:Ljava/lang/String;

    iget-object v2, p0, Lo/CrashlyticsController$AnySessionPartFileFilter;->zzb:Lo/calculateFreeRamInBytes;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Ljava/lang/String;Lo/calculateFreeRamInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
