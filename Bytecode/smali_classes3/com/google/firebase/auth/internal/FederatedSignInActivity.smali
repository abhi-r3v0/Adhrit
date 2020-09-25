.class public Lcom/google/firebase/auth/internal/FederatedSignInActivity;
.super Lo/onSessionEvent;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# static fields
.field private static zza:J

.field private static final zzc:Lo/getNativeSessionFiles;

.field private static zzd:Landroid/os/Handler;

.field private static zze:Ljava/lang/Runnable;


# instance fields
.field private zzb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    invoke-static {}, Lo/getNativeSessionFiles;->zza()Lo/getNativeSessionFiles;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzc:Lo/getNativeSessionFiles;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/onSessionEvent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    return-void
.end method

.method public static synthetic zza(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    const/4 p0, 0x0

    .line 119
    sput-object p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final zza()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 90
    sput-wide v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.firebase.auth.internal.EXTRA_CANCELED"

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-static {p0}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/fromMediaSession;->extraCallback(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WEB_CONTEXT_CANCELED"

    .line 98
    invoke-static {v0}, Lo/extraCallback;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 100
    invoke-static {p0, v0}, Lo/access$800;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 102
    :cond_0
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzc:Lo/getNativeSessionFiles;

    invoke-virtual {v0, p0}, Lo/getNativeSessionFiles;->zza(Landroid/content/Context;)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 105
    sput-wide v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    invoke-static {v0, p1}, Lo/access$1600;->zza(Landroid/content/Intent;Lcom/google/android/gms/common/api/Status;)V

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-static {p0}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/fromMediaSession;->extraCallback(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    invoke-static {v0, p1}, Lo/access$800;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 115
    :cond_0
    sget-object p1, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzc:Lo/getNativeSessionFiles;

    invoke-virtual {p1, p0}, Lo/getNativeSessionFiles;->zza(Landroid/content/Context;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic zza(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 3
    invoke-super {p0, p1}, Lo/onSessionEvent;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.internal.SIGN_IN"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "IdpSignInActivity"

    if-nez v1, :cond_1

    const-string v1, "com.google.firebase.auth.internal.LINK"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.firebase.auth.internal.REAUTHENTICATE"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Could not do operation - unknown action: "

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza()V

    return-void

    .line 1001
    :cond_1
    sget-object v0, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    .line 11
    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    .line 12
    sget-wide v3, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    const-string p1, "Could not start operation - already in progress"

    .line 13
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_2
    sput-wide v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    if-eqz p1, :cond_3

    const-string v0, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    :cond_3
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lo/onSessionEvent;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzd:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 10

    .line 23
    invoke-super {p0}, Lo/onSessionEvent;->onResume()V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.internal.WEB_SIGN_IN_FAILED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "IdpSignInActivity"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "com.google.firebase.auth.internal.OPERATION"

    if-eqz v1, :cond_1

    const-string v1, "Web sign-in failed, finishing"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {v0}, Lo/access$1600;->zza(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {v0}, Lo/access$1600;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza()V

    :goto_0
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 31
    :cond_1
    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 33
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.firebase.auth.internal.SIGN_IN"

    .line 34
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.google.firebase.auth.internal.LINK"

    .line 35
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.google.firebase.auth.internal.REAUTHENTICATE"

    .line 36
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 38
    :cond_2
    sget-object v7, Lo/getCsatId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1032
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    .line 1035
    :cond_3
    invoke-static {v8, v7}, Lo/CategoryResult;->ICustomTabsCallback([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v7

    .line 39
    :goto_1
    check-cast v7, Lo/getCsatId;

    const-string v8, "com.google.firebase.auth.internal.EXTRA_TENANT_ID"

    .line 40
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v7, v0}, Lo/getCsatId;->extraCallback(Ljava/lang/String;)Lo/getCsatId;

    const-wide/16 v8, 0x0

    .line 43
    sput-wide v8, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza:J

    .line 44
    iput-boolean v4, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    .line 45
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 3003
    invoke-interface {v7, v9, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3004
    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 3005
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v8, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 47
    invoke-virtual {v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 48
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {p0}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object v1

    invoke-virtual {v1, v8}, Lo/fromMediaSession;->extraCallback(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    invoke-static {v1, v7, v6, v0}, Lo/getNativeSessionFiles;->zza(Landroid/content/Context;Lo/getCsatId;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 54
    :cond_4
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzc:Lo/getNativeSessionFiles;

    invoke-virtual {v0, p0}, Lo/getNativeSessionFiles;->zza(Landroid/content/Context;)V

    .line 55
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    return-void

    .line 63
    :cond_6
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    if-nez v0, :cond_7

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.api.gms.ui.START_WEB_SIGN_IN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xa003

    .line 69
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v0, "Could not launch web sign-in Intent. Google Play service is unavailable"

    .line 73
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x445b

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 75
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 76
    :goto_4
    iput-boolean v3, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    return-void

    .line 79
    :cond_7
    new-instance v0, Lo/dispatchAttachedToWindow$extraCallback;

    invoke-direct {v0, p0}, Lo/dispatchAttachedToWindow$extraCallback;-><init>(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V

    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    .line 80
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzd:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 81
    new-instance v0, Lo/getAlias;

    invoke-direct {v0}, Lo/getAlias;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzd:Landroid/os/Handler;

    .line 82
    :cond_8
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzd:Landroid/os/Handler;

    sget-object v1, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zze:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Lo/onSessionEvent;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 21
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzb:Z

    const-string v1, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
