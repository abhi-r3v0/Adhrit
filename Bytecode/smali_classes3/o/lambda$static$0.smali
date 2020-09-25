.class final Lo/lambda$static$0;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private final zza:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/firebase/auth/FirebaseAuth;

.field private final zzd:Lo/isRooted;

.field private final synthetic zze:Lo/sendSessionReports;


# direct methods
.method constructor <init>(Lo/sendSessionReports;Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/removeBackgroundStateChangeListener<",
            "Lo/isLoggingEnabled;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Lo/isRooted;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo/lambda$static$0;->zze:Lo/sendSessionReports;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/lambda$static$0;->zza:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p3, p0, Lo/lambda$static$0;->zzb:Lo/removeBackgroundStateChangeListener;

    .line 4
    iput-object p4, p0, Lo/lambda$static$0;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    .line 5
    iput-object p5, p0, Lo/lambda$static$0;->zzd:Lo/isRooted;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 7
    iget-object p1, p0, Lo/lambda$static$0;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    const-string p1, "FederatedAuthReceiver"

    const-string p2, "Failed to unregister BroadcastReceiver because the Activity that launched this flow has been garbage collected; please do not finish() your Activity while performing a FederatedAuthProvider operation."

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lo/lambda$static$0;->zzb:Lo/removeBackgroundStateChangeListener;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x445b

    const-string v1, "Activity that started the web operation is no longer alive; see logcat for details"

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 11
    invoke-static {p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 1011
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p2}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 13
    invoke-static {}, Lo/sendSessionReports;->zzb()V

    return-void

    .line 15
    :cond_0
    invoke-static {p1}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lo/fromMediaSession;->onNavigationEvent(Landroid/content/BroadcastReceiver;)V

    const-string p1, "com.google.firebase.auth.internal.OPERATION"

    .line 17
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.firebase.auth.internal.SIGN_IN"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object p1, p0, Lo/lambda$static$0;->zze:Lo/sendSessionReports;

    iget-object v0, p0, Lo/lambda$static$0;->zzb:Lo/removeBackgroundStateChangeListener;

    iget-object v1, p0, Lo/lambda$static$0;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {p1, p2, v0, v1}, Lo/sendSessionReports;->zza(Lo/sendSessionReports;Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void

    :cond_1
    const-string v0, "com.google.firebase.auth.internal.LINK"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object p1, p0, Lo/lambda$static$0;->zze:Lo/sendSessionReports;

    iget-object v0, p0, Lo/lambda$static$0;->zzb:Lo/removeBackgroundStateChangeListener;

    iget-object v1, p0, Lo/lambda$static$0;->zzd:Lo/isRooted;

    invoke-static {p1, p2, v0, v1}, Lo/sendSessionReports;->zza(Lo/sendSessionReports;Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lo/isRooted;)V

    return-void

    :cond_2
    const-string v0, "com.google.firebase.auth.internal.REAUTHENTICATE"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    iget-object p1, p0, Lo/lambda$static$0;->zze:Lo/sendSessionReports;

    iget-object v0, p0, Lo/lambda$static$0;->zzb:Lo/removeBackgroundStateChangeListener;

    iget-object v1, p0, Lo/lambda$static$0;->zzd:Lo/isRooted;

    invoke-static {p1, p2, v0, v1}, Lo/sendSessionReports;->zzb(Lo/sendSessionReports;Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;Lo/isRooted;)V

    return-void

    .line 25
    :cond_3
    iget-object p2, p0, Lo/lambda$static$0;->zzb:Lo/removeBackgroundStateChangeListener;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "WEB_CONTEXT_CANCELED:Unknown operation received ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lo/extraCallback;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 2011
    iget-object p2, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 29
    :cond_4
    invoke-static {p2}, Lo/access$1600;->zza(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    invoke-static {p2}, Lo/access$1600;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 31
    iget-object p2, p0, Lo/lambda$static$0;->zzb:Lo/removeBackgroundStateChangeListener;

    .line 32
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 3011
    iget-object p2, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 34
    invoke-static {}, Lo/sendSessionReports;->zzb()V

    return-void

    :cond_5
    const-string p1, "com.google.firebase.auth.internal.EXTRA_CANCELED"

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 36
    iget-object p1, p0, Lo/lambda$static$0;->zzb:Lo/removeBackgroundStateChangeListener;

    const-string p2, "WEB_CONTEXT_CANCELED"

    .line 37
    invoke-static {p2}, Lo/extraCallback;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 38
    invoke-static {p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 4011
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p2}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 40
    invoke-static {}, Lo/sendSessionReports;->zzb()V

    :cond_6
    return-void
.end method
