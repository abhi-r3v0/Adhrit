.class public Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getNativeSessionFilesDir;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$onNavigationEvent;,
        Lcom/google/firebase/auth/FirebaseAuth$extraCallback;,
        Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;,
        Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;,
        Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private zza:Lcom/google/firebase/FirebaseApp;

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getUserMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Lo/CommonUtils$Architecture;

.field private zzf:Lo/isRooted;

.field private zzg:Lo/access$2500;

.field private final zzh:Ljava/lang/Object;

.field private zzi:Ljava/lang/String;

.field private final zzj:Ljava/lang/Object;

.field private zzk:Ljava/lang/String;

.field private final zzl:Lo/access$1000;

.field private final zzm:Lo/getNativeSessionFiles;

.field private zzn:Lo/access$1200;

.field private zzo:Lo/access$900;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 4

    .line 6
    new-instance v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$2$ICustomTabsCallback;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v1

    invoke-virtual {v1}, Lo/asGzippedBytes;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$2$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$2$ICustomTabsCallback;->zza()Lo/writeSessionPartFile;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 10
    invoke-static {v1, v0}, Lo/appendToProtoFile;->zza(Landroid/content/Context;Lo/writeSessionPartFile;)Lo/CommonUtils$Architecture;

    move-result-object v0

    .line 11
    new-instance v1, Lo/access$1000;

    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/access$1000;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lo/getNativeSessionFiles;->zza()Lo/getNativeSessionFiles;

    move-result-object v2

    .line 14
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lcom/google/firebase/FirebaseApp;Lo/CommonUtils$Architecture;Lo/access$1000;Lo/getNativeSessionFiles;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lo/CommonUtils$Architecture;Lo/access$1000;Lo/getNativeSessionFiles;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzj:Ljava/lang/Object;

    const-string v0, "null reference"

    if-eqz p1, :cond_4

    .line 19
    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    if-eqz p2, :cond_3

    .line 20
    check-cast p2, Lo/CommonUtils$Architecture;

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    if-eqz p3, :cond_2

    .line 21
    check-cast p3, Lo/access$1000;

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lo/access$1000;

    .line 22
    new-instance p1, Lo/access$2500;

    invoke-direct {p1}, Lo/access$2500;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lo/access$2500;

    if-eqz p4, :cond_1

    .line 23
    check-cast p4, Lo/getNativeSessionFiles;

    iput-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lo/getNativeSessionFiles;

    .line 24
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    .line 26
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    .line 27
    invoke-static {}, Lo/access$900;->zza()Lo/access$900;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lo/access$900;

    .line 29
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lo/access$1000;

    invoke-virtual {p1}, Lo/access$1000;->zza()Lo/isRooted;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    if-eqz p1, :cond_0

    .line 31
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lo/access$1000;

    invoke-virtual {p2, p1}, Lo/access$1000;->zzb(Lo/isRooted;)Lo/getColumnConstraint;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isRooted;Lo/getColumnConstraint;Z)V

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lo/getNativeSessionFiles;

    invoke-virtual {p1, p0}, Lo/getNativeSessionFiles;->zza(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void

    .line 4002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3002
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2002
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1002
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 3
    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private final zza(Lo/isRooted;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Lo/access$1700;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 22002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic zza(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    return-object p0
.end method

.method private final zza(Ljava/lang/String;Lo/copyStream$extraCallback;)Lo/copyStream$extraCallback;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lo/access$2500;

    invoke-virtual {v0}, Lo/access$2500;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lo/access$2500;

    .line 258
    invoke-virtual {v0}, Lo/access$2500;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    new-instance p1, Lo/CrashlyticsController$6;

    invoke-direct {p1, p0, p2}, Lo/CrashlyticsController$6;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lo/copyStream$extraCallback;)V

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method private final declared-synchronized zza(Lo/access$1200;)V
    .locals 0

    monitor-enter p0

    .line 88
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lo/access$1200;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zza(Lo/isNullOrEmpty;)V
    .locals 25

    .line 223
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 224
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zza()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 225
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzc()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 227
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzd()Lo/copyStream$extraCallback;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Lo/copyStream$extraCallback;)Lo/copyStream$extraCallback;

    move-result-object v12

    .line 229
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzg()Lo/closeOrLog;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lo/writeTo;

    .line 230
    invoke-virtual {v5}, Lo/writeTo;->zzc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    iget-object v4, v0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    .line 232
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzb()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 233
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzf()Lo/copyStream$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 234
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzi()Z

    move-result v11

    .line 235
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zze()Ljava/util/concurrent/Executor;

    move-result-object v13

    .line 236
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzj()Landroid/app/Activity;

    move-result-object v14

    .line 237
    invoke-virtual/range {v4 .. v14}, Lo/CommonUtils$Architecture;->zza(Lo/writeTo;Ljava/lang/String;Ljava/lang/String;JZZLo/copyStream$extraCallback;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 238
    :cond_1
    iget-object v4, v0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzk()Lo/getResourcePackageName;

    move-result-object v6

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 240
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzf()Lo/copyStream$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 241
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzi()Z

    move-result v11

    .line 242
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zze()Ljava/util/concurrent/Executor;

    move-result-object v13

    .line 243
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzj()Landroid/app/Activity;

    move-result-object v14

    .line 244
    invoke-virtual/range {v4 .. v14}, Lo/CommonUtils$Architecture;->zza(Lo/writeTo;Lo/getResourcePackageName;Ljava/lang/String;JZZLo/copyStream$extraCallback;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 247
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zza()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v15

    .line 248
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzb()Ljava/lang/String;

    move-result-object v16

    .line 249
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzc()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 250
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzd()Lo/copyStream$extraCallback;

    move-result-object v20

    .line 251
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzj()Landroid/app/Activity;

    move-result-object v21

    .line 252
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zze()Ljava/util/concurrent/Executor;

    move-result-object v22

    .line 253
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzf()Lo/copyStream$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v23, 0x1

    goto :goto_2

    :cond_4
    const/16 v23, 0x0

    .line 254
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lo/isNullOrEmpty;->zzh()Ljava/lang/String;

    move-result-object v24

    .line 255
    invoke-virtual/range {v15 .. v24}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lo/copyStream$extraCallback;Landroid/app/Activity;Ljava/util/concurrent/Executor;ZLjava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)Z
    .locals 1

    .line 451
    invoke-static {p1}, Lo/sha256;->parseLink(Ljava/lang/String;)Lo/sha256;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {p1}, Lo/sha256;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic zzb(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    return-object p0
.end method

.method private final declared-synchronized zzc()Lo/access$1200;
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lo/access$1200;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lo/access$1200;

    .line 92
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 93
    invoke-direct {v0, v1}, Lo/access$1200;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/access$1200;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lo/access$1200;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzc(Lo/isRooted;)V
    .locals 4

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notifying id token listeners about user ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Notifying id token listeners about a sign-out event."

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p1}, Lo/isRooted;->zzf()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 121
    :goto_1
    new-instance v0, Lo/joinMapsEntries;

    invoke-direct {v0, p1}, Lo/joinMapsEntries;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lo/access$900;

    new-instance v1, Lo/CrashlyticsController$8;

    invoke-direct {v1, p0, v0}, Lo/CrashlyticsController$8;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lo/joinMapsEntries;)V

    invoke-virtual {p1, v1}, Lo/access$900;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic zzd(Lcom/google/firebase/auth/FirebaseAuth;)Lo/access$2500;
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lo/access$2500;

    return-object p0
.end method

.method private final zzd(Lo/isRooted;)V
    .locals 3

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Notifying auth state listeners about user ( "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Notifying auth state listeners about a sign-out event."

    .line 126
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lo/access$900;

    new-instance v0, Lo/CrashlyticsController$6$1;

    invoke-direct {v0, p0}, Lo/CrashlyticsController$6$1;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p1, v0}, Lo/access$900;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic zze(Lcom/google/firebase/auth/FirebaseAuth;)Lo/isRooted;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    return-object p0
.end method


# virtual methods
.method public addAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lo/access$900;

    new-instance v1, Lo/CrashlyticsController$5;

    invoke-direct {v1, p0, p1}, Lo/CrashlyticsController$5;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;)V

    invoke-virtual {v0, v1}, Lo/access$900;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addIdTokenListener(Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzo:Lo/access$900;

    new-instance v1, Lo/onUncaughtException;

    invoke-direct {v1, p0, p1}, Lo/onUncaughtException;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;)V

    invoke-virtual {v0, v1}, Lo/access$900;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addIdTokenListener(Lo/getUserMetadata;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc()Lo/access$1200;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/access$1200;->zza(I)V

    return-void

    .line 9002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 39004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lo/CommonUtils$Architecture;->zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 39005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lo/CommonUtils$Architecture;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 38005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public confirmPasswordReset(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 41004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Given String is empty or null"

    if-nez v0, :cond_1

    .line 42004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 42005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 25004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Given String is empty or null"

    if-nez v0, :cond_1

    .line 26004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v7, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v7, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 26005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fetchSignInMethodsForEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 27004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 27005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessToken(Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isClsTrace;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isRooted;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public getCurrentUser()Lo/isRooted;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    return-object v0
.end method

.method public getFirebaseAuthSettings()Lo/isEmulator;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzg:Lo/access$2500;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 438
    monitor-exit v0

    throw v1
.end method

.method public getPendingAuthResult()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lo/getNativeSessionFiles;

    invoke-virtual {v0}, Lo/getNativeSessionFiles;->zzb()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzj:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 445
    monitor-exit v0

    throw v1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSignInWithEmailLink(Ljava/lang/String;)Z
    .locals 0

    .line 323
    invoke-static {p1}, Lo/logControlledError;->zza(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIdTokenListener(Lcom/google/firebase/auth/FirebaseAuth$ICustomTabsCallback;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIdTokenListener(Lo/getUserMetadata;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc()Lo/access$1200;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/access$1200;->zza(I)V

    return-void

    .line 10002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 34004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->sendPasswordResetEmail(Ljava/lang/String;Lo/calculateFreeRamInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 34005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;Lo/calculateFreeRamInBytes;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/calculateFreeRamInBytes;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 35004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    .line 311
    invoke-static {}, Lo/calculateFreeRamInBytes;->zza()Lo/calculateFreeRamInBytes;

    move-result-object p2

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p2, v0}, Lo/calculateFreeRamInBytes;->zza(Ljava/lang/String;)V

    .line 314
    :cond_1
    sget-object v0, Lo/getReadUpto;->extraCallback:Lo/getReadUpto;

    invoke-virtual {p2, v0}, Lo/calculateFreeRamInBytes;->zza(Lo/getReadUpto;)V

    .line 315
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lo/calculateFreeRamInBytes;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 35005
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendSignInLinkToEmail(Ljava/lang/String;Lo/calculateFreeRamInBytes;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/calculateFreeRamInBytes;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 36004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 318
    invoke-virtual {p2}, Lo/calculateFreeRamInBytes;->canHandleCodeInApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p2, v0}, Lo/calculateFreeRamInBytes;->zza(Ljava/lang/String;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lo/calculateFreeRamInBytes;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 319
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must set canHandleCodeInApp in your ActionCodeSettings to true for Email-Link Sign-in."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37002
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36005
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFirebaseUIVersion(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    invoke-virtual {v0, p1}, Lo/CommonUtils$Architecture;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 1

    .line 50048
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 435
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 50049
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 1

    .line 50051
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzj:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    .line 442
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 50052
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public signInAnonymously()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/isRooted;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    check-cast v0, Lo/CrashlyticsController$$Lambda$1;

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Lo/CrashlyticsController$$Lambda$1;->zza(Z)V

    .line 212
    new-instance v1, Lo/access$2100;

    invoke-direct {v1, v0}, Lo/access$2100;-><init>(Lo/CrashlyticsController$$Lambda$1;)V

    .line 20001
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 20002
    invoke-virtual {v0, v1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/access$1100;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public signInWithCredential(Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/calculateUsedDiskSpaceInBytes;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 143
    invoke-virtual {p1}, Lo/calculateUsedDiskSpaceInBytes;->zza()Lo/calculateUsedDiskSpaceInBytes;

    move-result-object p1

    .line 144
    instance-of v0, p1, Lo/logControlledError;

    if-eqz v0, :cond_2

    .line 145
    check-cast p1, Lo/logControlledError;

    .line 146
    invoke-virtual {p1}, Lo/logControlledError;->zzg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 148
    invoke-virtual {p1}, Lo/logControlledError;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {p1}, Lo/logControlledError;->zzc()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 150
    invoke-virtual/range {v1 .. v6}, Lo/CommonUtils$Architecture;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    invoke-virtual {p1}, Lo/logControlledError;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 153
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 12004
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 12005
    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/logControlledError;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 155
    :cond_2
    instance-of v0, p1, Lo/flushOrLog;

    if-eqz v0, :cond_3

    .line 156
    check-cast p1, Lo/flushOrLog;

    .line 157
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/flushOrLog;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 12002
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public signInWithCustomToken(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 17004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 17005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 18004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Given String is empty or null"

    if-nez v0, :cond_1

    .line 19004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v7, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v7, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lo/CommonUtils$Architecture;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 19005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public signInWithEmailLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-static {p1, p2}, Lo/component22;->getCredentialWithLink(Ljava/lang/String;Ljava/lang/String;)Lo/calculateUsedDiskSpaceInBytes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signOut()V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zza()V

    .line 429
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzn:Lo/access$1200;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lo/access$1200;->zza()V

    :cond_0
    return-void
.end method

.method public startActivityForSignInWithProvider(Landroid/app/Activity;Lo/getResourcesIdentifier;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/getResourcesIdentifier;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 352
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a7

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 355
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 47004
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 47005
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 357
    :cond_0
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lo/getNativeSessionFiles;

    .line 359
    invoke-virtual {v1, p1, v0, p0}, Lo/getNativeSessionFiles;->zza(Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 362
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 48004
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 48005
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 364
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 365
    invoke-static {v1, p0}, Lo/access$800;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 366
    invoke-virtual {p2, p1}, Lo/getResourcesIdentifier;->zza(Landroid/app/Activity;)V

    .line 48014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1

    .line 47002
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46002
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateCurrentUser(Lo/isRooted;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 265
    invoke-virtual {p1}, Lo/isRooted;->getTenantId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/isRooted;->getTenantId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {p1}, Lo/isRooted;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 268
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 20004
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 20005
    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v0

    .line 270
    :cond_2
    invoke-virtual {p1}, Lo/isRooted;->zzc()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v1

    invoke-virtual {v1}, Lo/asGzippedBytes;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {p1}, Lo/isRooted;->zzd()Lo/getColumnConstraint;

    move-result-object v2

    invoke-virtual {v2}, Lo/getColumnConstraint;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0, p1}, Lo/CrashlyticsController$$Lambda$1;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;)Lo/isRooted;

    move-result-object v0

    .line 274
    invoke-virtual {p1}, Lo/isRooted;->zzd()Lo/getColumnConstraint;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isRooted;Lo/getColumnConstraint;Z)V

    .line 21001
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 21002
    invoke-virtual {p1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1

    .line 276
    :cond_3
    new-instance v0, Lcom/google/firebase/auth/FirebaseAuth$onNavigationEvent;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth$onNavigationEvent;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isRooted;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 264
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot update current user with null user!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useAppLanguage()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzh:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    invoke-static {}, Lo/extraCallback;->zza()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    .line 448
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public verifyPasswordResetCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lo/CommonUtils$Architecture;->zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 40005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Landroid/app/Activity;Lo/getResourcesIdentifier;Lo/isRooted;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/getResourcesIdentifier;",
            "Lo/isRooted;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 371
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a7

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 374
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 50007
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 50008
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 376
    :cond_0
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 377
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lo/getNativeSessionFiles;

    .line 378
    invoke-virtual {v1, p1, v0, p0, p3}, Lo/getNativeSessionFiles;->zza(Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 381
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 50010
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 50011
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 384
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 386
    invoke-static {v1, p0, p3}, Lo/access$800;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)V

    .line 387
    invoke-virtual {p2, p1}, Lo/getResourcesIdentifier;->zzb(Landroid/app/Activity;)V

    .line 50013
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1

    .line 50005
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50002
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49002
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lo/calculateFreeRamInBytes;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/calculateFreeRamInBytes;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 50033
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Given String is empty or null"

    if-nez v0, :cond_3

    .line 50036
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    .line 417
    invoke-static {}, Lo/calculateFreeRamInBytes;->zza()Lo/calculateFreeRamInBytes;

    move-result-object p3

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p3, v0}, Lo/calculateFreeRamInBytes;->zza(Ljava/lang/String;)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    invoke-virtual {v0, p1, p2, p3}, Lo/CommonUtils$Architecture;->zza(Ljava/lang/String;Ljava/lang/String;Lo/calculateFreeRamInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 50037
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50034
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/calculateFreeRamInBytes;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/calculateFreeRamInBytes;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 37004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 327
    invoke-static {}, Lo/calculateFreeRamInBytes;->zza()Lo/calculateFreeRamInBytes;

    move-result-object p1

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/calculateFreeRamInBytes;->zza(Ljava/lang/String;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1, p1, p2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/calculateFreeRamInBytes;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 37005
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/getDeviceState;Lo/writeTo;Lo/isRooted;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getDeviceState;",
            "Lo/writeTo;",
            "Lo/isRooted;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 347
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v4, p1

    check-cast v4, Lo/logPriorityToString;

    .line 348
    invoke-virtual {p2}, Lo/writeTo;->zzb()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v3, p3

    .line 349
    invoke-virtual/range {v1 .. v6}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/logPriorityToString;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 45002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/isRooted;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isRooted;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lo/isRooted;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 24004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zzd(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 25002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Lo/calculateUsedDiskSpaceInBytes;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 161
    invoke-virtual {p2}, Lo/calculateUsedDiskSpaceInBytes;->zza()Lo/calculateUsedDiskSpaceInBytes;

    move-result-object v4

    .line 162
    instance-of p2, v4, Lo/logControlledError;

    if-eqz p2, :cond_2

    .line 163
    check-cast v4, Lo/logControlledError;

    .line 165
    invoke-virtual {v4}, Lo/calculateUsedDiskSpaceInBytes;->getSignInMethod()Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 167
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 168
    invoke-virtual {v4}, Lo/logControlledError;->zzb()Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-virtual {v4}, Lo/logControlledError;->zzc()Ljava/lang/String;

    move-result-object v9

    .line 170
    invoke-virtual {p1}, Lo/isRooted;->getTenantId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v11, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v7, p1

    .line 171
    invoke-virtual/range {v5 .. v11}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    invoke-virtual {v4}, Lo/logControlledError;->zzd()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 173
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42b0

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 174
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 14004
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 14005
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 175
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v1, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p2, v0, p1, v4, v1}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/logControlledError;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 176
    :cond_2
    instance-of p2, v4, Lo/flushOrLog;

    if-eqz p2, :cond_3

    .line 177
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v8, v4

    check-cast v8, Lo/flushOrLog;

    iget-object v9, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v10, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v10, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/flushOrLog;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 179
    invoke-virtual {p1}, Lo/isRooted;->getTenantId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v3, p1

    .line 180
    invoke-virtual/range {v1 .. v6}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 14002
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13002
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/isRooted;Lo/flushOrLog;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Lo/flushOrLog;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 302
    invoke-virtual {p2}, Lo/calculateUsedDiskSpaceInBytes;->zza()Lo/calculateUsedDiskSpaceInBytes;

    move-result-object p2

    check-cast p2, Lo/flushOrLog;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 303
    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/flushOrLog;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 32002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/isRooted;Lo/getAppIconHashOrNull;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Lo/getAppIconHashOrNull;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/getAppIconHashOrNull;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 29002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/isRooted;Lo/getDeviceState;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Lo/getDeviceState;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 423
    instance-of v0, p2, Lo/logPriorityToString;

    if-eqz v0, :cond_0

    .line 424
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v3, p2

    check-cast v3, Lo/logPriorityToString;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/logPriorityToString;Lo/isRooted;Ljava/lang/String;Lo/access$1100;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 425
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x445b

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 426
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 50045
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 50046
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 50043
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50040
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/isRooted;Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isClsTrace;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 131
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4457

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 132
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 10004
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 10005
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 134
    :cond_0
    invoke-virtual {p1}, Lo/isRooted;->zzd()Lo/getColumnConstraint;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lo/getColumnConstraint;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 137
    invoke-virtual {v0}, Lo/getColumnConstraint;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->zza(Ljava/lang/String;)Lo/isClsTrace;

    move-result-object p1

    .line 11001
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 11002
    invoke-virtual {p2, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p2

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 140
    invoke-virtual {v0}, Lo/getColumnConstraint;->extraCallback()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lo/CrashlyticsController$8$1;

    invoke-direct {v2, p0}, Lo/CrashlyticsController$8$1;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 141
    invoke-virtual {p2, v1, p1, v0, v2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza()V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 79
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lo/access$1000;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 81
    invoke-virtual {v0}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lo/access$1000;->zza(Ljava/lang/String;)V

    .line 82
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    goto :goto_0

    .line 8002
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lo/access$1000;

    const-string v2, "com.google.firebase.auth.FIREBASE_USER"

    .line 84
    invoke-virtual {v0, v2}, Lo/access$1000;->zza(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lo/isRooted;)V

    .line 86
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzd(Lo/isRooted;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lo/copyStream$extraCallback;Landroid/app/Activity;Ljava/util/concurrent/Executor;ZLjava/lang/String;)V
    .locals 12

    move-object v0, p0

    .line 215
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-object/from16 v4, p4

    invoke-virtual {v1, p2, p3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-ltz v3, :cond_0

    const-wide/16 v1, 0x78

    cmp-long v3, v4, v1

    if-gtz v3, :cond_0

    .line 219
    new-instance v1, Lo/getCsat;

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzi:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    move-object v2, v1

    move-object v3, p1

    move/from16 v6, p8

    move-object/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Lo/getCsat;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object/from16 v3, p5

    .line 220
    invoke-direct {p0, p1, v3}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;Lo/copyStream$extraCallback;)Lo/copyStream$extraCallback;

    move-result-object v9

    .line 221
    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v8, v1

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/getCsat;Lo/copyStream$extraCallback;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V

    return-void

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zza(Lo/isRooted;Lo/getColumnConstraint;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isRooted;Lo/getColumnConstraint;ZZ)V

    return-void
.end method

.method public final zza(Lo/isRooted;Lo/getColumnConstraint;ZZ)V
    .locals 5

    const-string v0, "null reference"

    if-eqz p1, :cond_e

    if-eqz p2, :cond_d

    .line 42
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    invoke-virtual {v4}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-eqz p4, :cond_1

    return-void

    .line 45
    :cond_1
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    if-nez p4, :cond_2

    :goto_1
    const/4 v2, 0x1

    goto :goto_3

    .line 48
    :cond_2
    invoke-virtual {p4}, Lo/isRooted;->zzd()Lo/getColumnConstraint;

    move-result-object p4

    .line 49
    invoke-virtual {p4}, Lo/getColumnConstraint;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p4

    .line 50
    invoke-virtual {p2}, Lo/getColumnConstraint;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {p4, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    xor-int/2addr p4, v3

    if-eqz v1, :cond_3

    if-nez p4, :cond_3

    const/4 p4, 0x0

    goto :goto_2

    :cond_3
    const/4 p4, 0x1

    :goto_2
    move v3, p4

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz p1, :cond_c

    .line 58
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    if-nez p4, :cond_5

    .line 59
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    goto :goto_4

    .line 60
    :cond_5
    invoke-virtual {p1}, Lo/isRooted;->getProviderData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Lo/isRooted;->zza(Ljava/util/List;)Lo/isRooted;

    .line 61
    invoke-virtual {p1}, Lo/isRooted;->isAnonymous()Z

    move-result p4

    if-nez p4, :cond_6

    .line 62
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    invoke-virtual {p4}, Lo/isRooted;->zzb()Lo/isRooted;

    .line 63
    :cond_6
    invoke-virtual {p1}, Lo/isRooted;->getMultiFactor()Lo/hexify;

    move-result-object p4

    invoke-virtual {p4}, Lo/hexify;->getEnrolledFactors()Ljava/util/List;

    move-result-object p4

    .line 64
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    invoke-virtual {v0, p4}, Lo/isRooted;->zzb(Ljava/util/List;)V

    :goto_4
    if-eqz p3, :cond_7

    .line 66
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lo/access$1000;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    invoke-virtual {p4, v0}, Lo/access$1000;->zza(Lo/isRooted;)V

    :cond_7
    if-eqz v3, :cond_9

    .line 68
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    if-eqz p4, :cond_8

    .line 69
    invoke-virtual {p4, p2}, Lo/isRooted;->zza(Lo/getColumnConstraint;)V

    .line 70
    :cond_8
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    invoke-direct {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lo/isRooted;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 72
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    invoke-direct {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->zzd(Lo/isRooted;)V

    :cond_a
    if-eqz p3, :cond_b

    .line 74
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzl:Lo/access$1000;

    invoke-virtual {p3, p1, p2}, Lo/access$1000;->zza(Lo/isRooted;Lo/getColumnConstraint;)V

    .line 76
    :cond_b
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc()Lo/access$1200;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzf:Lo/isRooted;

    invoke-virtual {p2}, Lo/isRooted;->zzd()Lo/getColumnConstraint;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/access$1200;->zza(Lo/getColumnConstraint;)V

    return-void

    .line 7002
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6002
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5002
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Landroid/app/Activity;Lo/getResourcesIdentifier;Lo/isRooted;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/getResourcesIdentifier;",
            "Lo/isRooted;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 392
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a7

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 395
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 50023
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 50024
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 397
    :cond_0
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 398
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzm:Lo/getNativeSessionFiles;

    .line 399
    invoke-virtual {v1, p1, v0, p0, p3}, Lo/getNativeSessionFiles;->zza(Landroid/app/Activity;Lo/removeBackgroundStateChangeListener;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 402
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 50026
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 50027
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 405
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 407
    invoke-static {v1, p0, p3}, Lo/access$800;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)V

    .line 408
    invoke-virtual {p2, p1}, Lo/getResourcesIdentifier;->zzc(Landroid/app/Activity;)V

    .line 50029
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1

    .line 50021
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50018
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50015
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lo/isRooted;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    new-instance v1, Lo/CrashlyticsController$7;

    invoke-direct {v1, p0, p1}, Lo/CrashlyticsController$7;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)V

    invoke-virtual {v0, p1, v1}, Lo/CommonUtils$Architecture;->zza(Lo/isRooted;Lo/getCreateReportSpiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 50031
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lo/isRooted;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 30004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 30005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Lo/calculateUsedDiskSpaceInBytes;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 183
    invoke-virtual {p2}, Lo/calculateUsedDiskSpaceInBytes;->zza()Lo/calculateUsedDiskSpaceInBytes;

    move-result-object v4

    .line 184
    instance-of p2, v4, Lo/logControlledError;

    if-eqz p2, :cond_2

    .line 185
    check-cast v4, Lo/logControlledError;

    .line 187
    invoke-virtual {v4}, Lo/calculateUsedDiskSpaceInBytes;->getSignInMethod()Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    .line 188
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 189
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 190
    invoke-virtual {v4}, Lo/logControlledError;->zzb()Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-virtual {v4}, Lo/logControlledError;->zzc()Ljava/lang/String;

    move-result-object v9

    .line 192
    invoke-virtual {p1}, Lo/isRooted;->getTenantId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v11, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v7, p1

    .line 193
    invoke-virtual/range {v5 .. v11}, Lo/CommonUtils$Architecture;->zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 194
    :cond_0
    invoke-virtual {v4}, Lo/logControlledError;->zzd()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 195
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42b0

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 196
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 16004
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 16005
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2

    .line 197
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v1, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p2, v0, p1, v4, v1}, Lo/CommonUtils$Architecture;->zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/logControlledError;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 198
    :cond_2
    instance-of p2, v4, Lo/flushOrLog;

    if-eqz p2, :cond_3

    .line 199
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    move-object v8, v4

    check-cast v8, Lo/flushOrLog;

    iget-object v9, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzk:Ljava/lang/String;

    new-instance v10, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v10, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lo/CommonUtils$Architecture;->zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/flushOrLog;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 201
    invoke-virtual {p1}, Lo/isRooted;->getTenantId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v3, p1

    .line 202
    invoke-virtual/range {v1 .. v6}, Lo/CommonUtils$Architecture;->zzb(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 16002
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15002
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public final zzc(Lo/isRooted;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 33004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zzc(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 33005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Lo/calculateUsedDiskSpaceInBytes;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    const-string v0, "null reference"

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    .line 283
    invoke-virtual {p2}, Lo/calculateUsedDiskSpaceInBytes;->zza()Lo/calculateUsedDiskSpaceInBytes;

    move-result-object p2

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 284
    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 24002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzd(Lo/isRooted;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isRooted;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 43004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zze:Lo/CommonUtils$Architecture;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zza:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 342
    invoke-virtual {v0, v1, p1, p2, v2}, Lo/CommonUtils$Architecture;->zze(Lcom/google/firebase/FirebaseApp;Lo/isRooted;Ljava/lang/String;Lo/access$1700;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lo/CrashlyticsController$8$1$1;

    invoke-direct {p2, p0}, Lo/CrashlyticsController$8$1$1;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 343
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 43005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
