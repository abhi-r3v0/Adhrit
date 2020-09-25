.class public final Lo/sendSessionReports;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zzb:Lo/sendSessionReports;


# instance fields
.field private zza:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/sendSessionReports;->zza:Z

    return-void
.end method

.method private static zza(Landroid/content/Intent;)Lo/calculateUsedDiskSpaceInBytes;
    .locals 2

    if-eqz p0, :cond_1

    .line 34
    sget-object v0, Lo/getCsatId;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v1, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST"

    .line 1032
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1035
    :cond_0
    invoke-static {p0, v0}, Lo/CategoryResult;->ICustomTabsCallback([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    .line 35
    :goto_0
    check-cast p0, Lo/getCsatId;

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lo/getCsatId;->onPostMessage(Z)Lo/getCsatId;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lo/CrashlyticsController$4;->zza(Lo/getCsatId;)Lo/CrashlyticsController$4;

    move-result-object p0

    return-object p0

    .line 1002
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza()Lo/sendSessionReports;
    .locals 1

    .line 4
    sget-object v0, Lo/sendSessionReports;->zzb:Lo/sendSessionReports;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/sendSessionReports;

    invoke-direct {v0}, Lo/sendSessionReports;-><init>()V

    sput-object v0, Lo/sendSessionReports;->zzb:Lo/sendSessionReports;

    .line 6
    :cond_0
    sget-object v0, Lo/sendSessionReports;->zzb:Lo/sendSessionReports;

    return-object v0
.end method

.method private final zza(Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lo/removeBackgroundStateChangeListener<",
            "Lo/isLoggingEnabled;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-static {p1}, Lo/sendSessionReports;->zza(Landroid/content/Intent;)Lo/calculateUsedDiskSpaceInBytes;

    move-result-object p1

    .line 16
    invoke-virtual {p3, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 17
    new-instance p3, Lo/logAnalyticsAppExceptionEvents;

    invoke-direct {p3, p0, p2}, Lo/logAnalyticsAppExceptionEvents;-><init>(Lo/sendSessionReports;Lo/removeBackgroundStateChangeListener;)V

    .line 18
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lo/setAddDuration;

    invoke-direct {p3, p0, p2}, Lo/setAddDuration;-><init>(Lo/sendSessionReports;Lo/removeBackgroundStateChangeListener;)V

    .line 19
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private final zza(Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lo/isRooted;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lo/removeBackgroundStateChangeListener<",
            "Lo/isLoggingEnabled;",
            ">;",
            "Lo/isRooted;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lo/sendSessionReports;->zza(Landroid/content/Intent;)Lo/calculateUsedDiskSpaceInBytes;

    move-result-object p1

    .line 22
    invoke-virtual {p3, p1}, Lo/isRooted;->linkWithCredential(Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 23
    new-instance p3, Lo/getNonFatalSessionFilesDir;

    invoke-direct {p3, p0, p2}, Lo/getNonFatalSessionFilesDir;-><init>(Lo/sendSessionReports;Lo/removeBackgroundStateChangeListener;)V

    .line 24
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lo/obtainHolderInfo$ICustomTabsCallback;

    invoke-direct {p3, p0, p2}, Lo/obtainHolderInfo$ICustomTabsCallback;-><init>(Lo/sendSessionReports;Lo/removeBackgroundStateChangeListener;)V

    .line 25
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static synthetic zza(Lo/sendSessionReports;Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lo/sendSessionReports;->zza(Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method

.method static synthetic zza(Lo/sendSessionReports;Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lo/isRooted;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lo/sendSessionReports;->zza(Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lo/isRooted;)V

    return-void
.end method

.method public static zzb()V
    .locals 2

    .line 38
    sget-object v0, Lo/sendSessionReports;->zzb:Lo/sendSessionReports;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/sendSessionReports;->zza:Z

    return-void
.end method

.method private final zzb(Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lo/isRooted;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lo/removeBackgroundStateChangeListener<",
            "Lo/isLoggingEnabled;",
            ">;",
            "Lo/isRooted;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-static {p1}, Lo/sendSessionReports;->zza(Landroid/content/Intent;)Lo/calculateUsedDiskSpaceInBytes;

    move-result-object p1

    .line 28
    invoke-virtual {p3, p1}, Lo/isRooted;->reauthenticateAndRetrieveData(Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 29
    new-instance p3, Lo/firebaseCrashExists;

    invoke-direct {p3, p0, p2}, Lo/firebaseCrashExists;-><init>(Lo/sendSessionReports;Lo/removeBackgroundStateChangeListener;)V

    .line 30
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lo/onAnimationStarted$extraCallback;

    invoke-direct {p3, p0, p2}, Lo/onAnimationStarted$extraCallback;-><init>(Lo/sendSessionReports;Lo/removeBackgroundStateChangeListener;)V

    .line 31
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static synthetic zzb(Lo/sendSessionReports;Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lo/isRooted;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lo/sendSessionReports;->zzb(Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lo/isRooted;)V

    return-void
.end method


# virtual methods
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

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/sendSessionReports;->zza(Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)Z

    move-result p1

    return p1
.end method

.method public final zza(Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)Z
    .locals 8
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

    .line 8
    iget-boolean v0, p0, Lo/sendSessionReports;->zza:Z

    if-nez v0, :cond_0

    .line 10
    invoke-static {p1}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object v0

    new-instance v7, Lo/lambda$static$0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/lambda$static$0;-><init>(Lo/sendSessionReports;Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v7, p1}, Lo/fromMediaSession;->onMessageChannelReady(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lo/sendSessionReports;->zza:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
