.class public final Lo/getFatalSessionFilesDir;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lo/getFilesDir;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getFilesDir;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getFatalSessionFilesDir;->zza:Lo/getFilesDir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iput-object p2, p0, Lo/getFatalSessionFilesDir;->zzb:Ljava/lang/String;

    return-void

    .line 1005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 4
    iget-object v0, p0, Lo/getFatalSessionFilesDir;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lo/isRooted;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 8
    invoke-static {}, Lo/getFilesDir;->zzd()Lo/getFarmBackgroundImage;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Token refreshing started"

    invoke-virtual {v1, v3, v2}, Lo/getFarmBackgroundImage;->onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v1, Lo/setMoveDuration$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/setMoveDuration$onNavigationEvent;-><init>(Lo/getFatalSessionFilesDir;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
