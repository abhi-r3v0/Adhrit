.class public Lorg/npci/upi/security/services/CLServices;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static f:Lorg/npci/upi/security/services/CLServices;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lorg/npci/upi/security/services/CLRemoteService;

.field private g:Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;

.field private h:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://org.npci.upi.security.pinactivitycomponent.clservices/getChallenge"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/npci/upi/security/services/CLServices;->a:Landroid/net/Uri;

    const-string v0, "content://org.npci.upi.security.pinactivitycomponent.clservices/registerApp"

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/npci/upi/security/services/CLServices;->b:Landroid/net/Uri;

    const-string v0, "content://org.npci.upi.security.pinactivitycomponent.clservices/getCredential"

    .line 21
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/npci/upi/security/services/CLServices;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lorg/npci/upi/security/services/CLServices;->f:Lorg/npci/upi/security/services/CLServices;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lorg/npci/upi/security/services/CLServices;->e:Lorg/npci/upi/security/services/CLRemoteService;

    .line 49
    new-instance v0, Lorg/npci/upi/security/services/CLServices$1;

    invoke-direct {v0, p0}, Lorg/npci/upi/security/services/CLServices$1;-><init>(Lorg/npci/upi/security/services/CLServices;)V

    iput-object v0, p0, Lorg/npci/upi/security/services/CLServices;->h:Landroid/content/ServiceConnection;

    .line 41
    iput-object p1, p0, Lorg/npci/upi/security/services/CLServices;->d:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lorg/npci/upi/security/services/CLServices;->g:Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;

    .line 43
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "org.npci.upi.security.services.CLRemoteService"

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object p2, p0, Lorg/npci/upi/security/services/CLServices;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object p2, p0, Lorg/npci/upi/security/services/CLServices;->d:Landroid/content/Context;

    iget-object v0, p0, Lorg/npci/upi/security/services/CLServices;->h:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic a(Lorg/npci/upi/security/services/CLServices;Lorg/npci/upi/security/services/CLRemoteService;)Lorg/npci/upi/security/services/CLRemoteService;
    .locals 0

    .line 16
    iput-object p1, p0, Lorg/npci/upi/security/services/CLServices;->e:Lorg/npci/upi/security/services/CLRemoteService;

    return-object p1
.end method

.method static synthetic a(Lorg/npci/upi/security/services/CLServices;)Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/npci/upi/security/services/CLServices;->g:Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;)V
    .locals 1

    .line 30
    sget-object v0, Lorg/npci/upi/security/services/CLServices;->f:Lorg/npci/upi/security/services/CLServices;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lorg/npci/upi/security/services/CLServices;

    invoke-direct {v0, p0, p1}, Lorg/npci/upi/security/services/CLServices;-><init>(Landroid/content/Context;Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;)V

    sput-object v0, Lorg/npci/upi/security/services/CLServices;->f:Lorg/npci/upi/security/services/CLServices;

    return-void

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Service already initiated"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b()Lorg/npci/upi/security/services/CLServices;
    .locals 1

    .line 16
    sget-object v0, Lorg/npci/upi/security/services/CLServices;->f:Lorg/npci/upi/security/services/CLServices;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 66
    const-class v0, Lorg/npci/upi/security/services/CLServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetChallenge called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/npci/upi/security/services/CLServices;->e:Lorg/npci/upi/security/services/CLRemoteService;

    invoke-interface {v0, p1, p2}, Lorg/npci/upi/security/services/CLRemoteService;->getChallenge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v1

    .line 69
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "In-sufficient arguments provided"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public a()V
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/npci/upi/security/services/CLServices;->d:Landroid/content/Context;

    iget-object v1, p0, Lorg/npci/upi/security/services/CLServices;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;)V
    .locals 12

    .line 128
    const-class v0, Lorg/npci/upi/security/services/CLServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get Credential called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    .line 130
    :try_start_0
    iget-object v2, v1, Lorg/npci/upi/security/services/CLServices;->e:Lorg/npci/upi/security/services/CLRemoteService;

    invoke-virtual/range {p9 .. p9}, Lorg/npci/upi/security/services/CLRemoteResultReceiver;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/npci/upi/security/services/CLResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lorg/npci/upi/security/services/CLResultReceiver;

    move-result-object v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v11}, Lorg/npci/upi/security/services/CLRemoteService;->getCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 96
    const-class v0, Lorg/npci/upi/security/services/CLServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Register App called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/npci/upi/security/services/CLServices;->e:Lorg/npci/upi/security/services/CLRemoteService;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/npci/upi/security/services/CLRemoteService;->registerApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1

    .line 101
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "In-sufficient arguments provided"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
