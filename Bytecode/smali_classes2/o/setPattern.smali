.class public final Lo/setPattern;
.super Lo/setMinDue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setMinDue<",
        "Lo/setBackground;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Lo/setCreatedAt;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V
    .locals 7

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/getMinDue;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    if-nez p4, :cond_0

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iput-object p1, p0, Lo/setPattern;->extraCallback:Landroid/os/Bundle;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    .line 18
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 19
    instance-of v1, v0, Lo/setBackground;

    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Lo/setBackground;

    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lo/setInterval;

    invoke-direct {v0, p1}, Lo/setInterval;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/setPattern;->extraCallback:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method public final requiresSignIn()Z
    .locals 2

    .line 6
    invoke-virtual {p0}, Lo/setPattern;->getClientSettings()Lo/getMinDue;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lo/getMinDue;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lo/getPreferredBanks;->onMessageChannelReady:Lo/setCustomAmount;

    .line 8
    invoke-virtual {v0, v1}, Lo/getMinDue;->onNavigationEvent(Lo/setCustomAmount;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
