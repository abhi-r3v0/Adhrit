.class public Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;
.super Landroid/app/Service;


# instance fields
.field private a:Lorg/npci/upi/security/services/CLRemoteService$Stub;

.field private b:Lorg/npci/upi/security/pinactivitycomponent/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;->a:Lorg/npci/upi/security/services/CLRemoteService$Stub;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;->b:Lorg/npci/upi/security/pinactivitycomponent/g;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLResultReceiver;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "keyCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "keyXmlPayload"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "controls"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "configuration"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "salt"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "payInfo"

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "trust"

    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "languagePref"

    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/CLServerResultReceiver;

    invoke-direct {p1, p9}, Lorg/npci/upi/security/pinactivitycomponent/CLServerResultReceiver;-><init>(Lorg/npci/upi/security/services/CLResultReceiver;)V

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/v;->a(Lorg/npci/upi/security/pinactivitycomponent/CLServerResultReceiver;)V

    return-object v0
.end method

.method static synthetic a(Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLResultReceiver;)Landroid/os/Bundle;
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLResultReceiver;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;)Lorg/npci/upi/security/pinactivitycomponent/g;
    .locals 0

    iget-object p0, p0, Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;->b:Lorg/npci/upi/security/pinactivitycomponent/g;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;->a:Lorg/npci/upi/security/services/CLRemoteService$Stub;

    if-nez p1, :cond_0

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/f;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/f;-><init>(Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;Landroid/content/Context;Lorg/npci/upi/security/pinactivitycomponent/e;)V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;->a:Lorg/npci/upi/security/services/CLRemoteService$Stub;

    :cond_0
    :try_start_0
    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/g;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;->b:Lorg/npci/upi/security/pinactivitycomponent/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/CLRemoteServiceImpl;->a:Lorg/npci/upi/security/services/CLRemoteService$Stub;

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not initialize service provider"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
