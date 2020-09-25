.class public final Lo/getNativeSessionFiles;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzc:Lo/getNativeSessionFiles;


# instance fields
.field private final zza:Lo/access$800;

.field private final zzb:Lo/sendSessionReports;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/getNativeSessionFiles;

    invoke-direct {v0}, Lo/getNativeSessionFiles;-><init>()V

    sput-object v0, Lo/getNativeSessionFiles;->zzc:Lo/getNativeSessionFiles;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lo/access$800;->zza()Lo/access$800;

    move-result-object v0

    invoke-static {}, Lo/sendSessionReports;->zza()Lo/sendSessionReports;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/getNativeSessionFiles;-><init>(Lo/access$800;Lo/sendSessionReports;)V

    return-void
.end method

.method private constructor <init>(Lo/access$800;Lo/sendSessionReports;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/getNativeSessionFiles;->zza:Lo/access$800;

    .line 5
    iput-object p2, p0, Lo/getNativeSessionFiles;->zzb:Lo/sendSessionReports;

    return-void
.end method

.method public static zza()Lo/getNativeSessionFiles;
    .locals 1

    .line 7
    sget-object v0, Lo/getNativeSessionFiles;->zzc:Lo/getNativeSessionFiles;

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lo/getCsatId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-static {p0, p1, p2, p3}, Lo/access$800;->zza(Landroid/content/Context;Lo/getCsatId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lo/getNativeSessionFiles;->zza:Lo/access$800;

    invoke-virtual {v0, p1}, Lo/access$800;->zza(Landroid/content/Context;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lo/getNativeSessionFiles;->zza:Lo/access$800;

    invoke-virtual {v0, p1}, Lo/access$800;->zza(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method

.method public final zza(Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/removeBackgroundStateChangeListener<",
            "Lo/isLoggingEnabled;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ")Z"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/getNativeSessionFiles;->zzb:Lo/sendSessionReports;

    invoke-virtual {v0, p1, p2, p3}, Lo/sendSessionReports;->zza(Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;)Z

    move-result p1

    return p1
.end method

.method public final zza(Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/removeBackgroundStateChangeListener<",
            "Lo/isLoggingEnabled;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Lo/isRooted;",
            ")Z"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lo/getNativeSessionFiles;->zzb:Lo/sendSessionReports;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/sendSessionReports;->zza(Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)Z

    move-result p1

    return p1
.end method

.method public final zzb()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lo/getNativeSessionFiles;->zza:Lo/access$800;

    invoke-virtual {v0}, Lo/access$800;->zzb()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
