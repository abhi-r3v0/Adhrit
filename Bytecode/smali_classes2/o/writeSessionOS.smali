.class public abstract Lo/writeSessionOS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/openKeyboard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSessionOS$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/openKeyboard<",
        "Lo/finalizePreviousNativeSession;",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private zza:Z

.field protected final zzb:I

.field public final zzc:Lo/synthesizeSessionFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/synthesizeSessionFile;"
        }
    .end annotation
.end field

.field protected zzd:Lcom/google/firebase/FirebaseApp;

.field public zze:Lo/isRooted;

.field protected zzf:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field protected zzg:Lo/logAnalyticsAppExceptionEvent;

.field public zzh:Lo/writeSessionPartsToSessionFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/writeSessionPartsToSessionFile<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field protected final zzi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/copyStream$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected zzj:Ljava/util/concurrent/Executor;

.field protected zzk:Lo/getColumnConstraint;

.field protected zzl:Lo/getColumnName;

.field protected zzm:Lo/ColDef;

.field protected zzn:Lo/setCsat;

.field protected zzo:Ljava/lang/String;

.field protected zzp:Ljava/lang/String;

.field protected zzq:Lo/calculateUsedDiskSpaceInBytes;

.field protected zzr:Ljava/lang/String;

.field protected zzs:Ljava/lang/String;

.field protected zzt:Lo/setCustomResponseTimeMessage;

.field public zzu:Z

.field protected zzv:Z

.field zzw:Z

.field private zzx:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field private zzy:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/synthesizeSessionFile;

    invoke-direct {v0, p0}, Lo/synthesizeSessionFile;-><init>(Lo/writeSessionOS;)V

    iput-object v0, p0, Lo/writeSessionOS;->zzc:Lo/synthesizeSessionFile;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/writeSessionOS;->zzi:Ljava/util/List;

    .line 4
    iput p1, p0, Lo/writeSessionOS;->zzb:I

    return-void
.end method

.method static synthetic zza(Lo/writeSessionOS;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/writeSessionOS;->zzf()V

    return-void
.end method

.method static synthetic zza(Lo/writeSessionOS;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/writeSessionOS;->zzb(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic zza(Lo/writeSessionOS;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lo/writeSessionOS;->zza:Z

    return p1
.end method

.method private final zzb(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lo/writeSessionOS;->zzg:Lo/logAnalyticsAppExceptionEvent;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Lo/logAnalyticsAppExceptionEvent;->zza(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method

.method private final zzf()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lo/writeSessionOS;->zze()V

    .line 36
    iget-boolean v0, p0, Lo/writeSessionOS;->zza:Z

    if-eqz v0, :cond_0

    return-void

    .line 6029
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no success or failure set on method implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/FirebaseApp;)Lo/writeSessionOS;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            ")",
            "Lo/writeSessionOS<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lo/writeSessionOS;->zzd:Lcom/google/firebase/FirebaseApp;

    return-object p0

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "firebaseApp cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Ljava/lang/Object;)Lo/writeSessionOS;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lo/writeSessionOS<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Lo/writeSessionOS;->zzf:Ljava/lang/Object;

    return-object p0

    .line 3011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "external callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/copyStream$extraCallback;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lo/writeSessionOS;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/copyStream$extraCallback;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/writeSessionOS<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lo/writeSessionOS;->zzi:Ljava/util/List;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lo/writeSessionOS;->zzi:Ljava/util/List;

    if-eqz p1, :cond_2

    check-cast p1, Lo/copyStream$extraCallback;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 18
    iget-object p1, p0, Lo/writeSessionOS;->zzi:Ljava/util/List;

    invoke-static {p2, p1}, Lo/writeSessionOS$onNavigationEvent;->zza(Landroid/app/Activity;Ljava/util/List;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 19
    check-cast p3, Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lo/writeSessionOS;->zzj:Ljava/util/concurrent/Executor;

    return-object p0

    .line 6002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5002
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    throw p1
.end method

.method public final zza(Lo/isRooted;)Lo/writeSessionOS;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            ")",
            "Lo/writeSessionOS<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 8
    check-cast p1, Lo/isRooted;

    iput-object p1, p0, Lo/writeSessionOS;->zze:Lo/isRooted;

    return-object p0

    .line 2011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "firebaseUser cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/logAnalyticsAppExceptionEvent;)Lo/writeSessionOS;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/logAnalyticsAppExceptionEvent;",
            ")",
            "Lo/writeSessionOS<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 12
    check-cast p1, Lo/logAnalyticsAppExceptionEvent;

    iput-object p1, p0, Lo/writeSessionOS;->zzg:Lo/logAnalyticsAppExceptionEvent;

    return-object p0

    .line 4011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "external failure callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lo/writeSessionOS;->zza:Z

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/writeSessionOS;->zzw:Z

    .line 32
    iput-object p1, p0, Lo/writeSessionOS;->zzy:Lcom/google/android/gms/common/api/Status;

    .line 33
    iget-object v0, p0, Lo/writeSessionOS;->zzh:Lo/writeSessionPartsToSessionFile;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lo/writeSessionPartsToSessionFile;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lo/writeSessionOS;->zza:Z

    .line 26
    iput-boolean v0, p0, Lo/writeSessionOS;->zzw:Z

    .line 27
    iput-object p1, p0, Lo/writeSessionOS;->zzx:Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lo/writeSessionOS;->zzh:Lo/writeSessionPartsToSessionFile;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/writeSessionPartsToSessionFile;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzc()Lo/openKeyboard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/openKeyboard<",
            "Lo/finalizePreviousNativeSession;",
            "TResultT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lo/writeSessionOS;->zzu:Z

    return-object p0
.end method

.method public final zzd()Lo/openKeyboard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/openKeyboard<",
            "Lo/finalizePreviousNativeSession;",
            "TResultT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lo/writeSessionOS;->zzv:Z

    return-object p0
.end method

.method public abstract zze()V
.end method
