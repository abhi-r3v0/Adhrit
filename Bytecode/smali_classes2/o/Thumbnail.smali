.class public Lo/Thumbnail;
.super Lo/setMinDue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setMinDue<",
        "Lo/ButtonFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field protected final onNavigationEvent:Lo/setContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setContent<",
            "Lo/ButtonFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;Ljava/lang/String;Lo/getMinDue;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/getMinDue;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    new-instance p1, Lo/UnknownFragment;

    invoke-direct {p1, p0}, Lo/UnknownFragment;-><init>(Lo/Thumbnail;)V

    iput-object p1, p0, Lo/Thumbnail;->onNavigationEvent:Lo/setContent;

    iput-object p5, p0, Lo/Thumbnail;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/Thumbnail;)V
    .locals 0

    invoke-virtual {p0}, Lo/Thumbnail;->checkConnected()V

    return-void
.end method


# virtual methods
.method public synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/ButtonFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lo/ButtonFragment;

    return-object v0

    :cond_1
    new-instance v0, Lo/setLabel;

    invoke-direct {v0, p1}, Lo/setLabel;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lo/Thumbnail;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "client_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1

    const v0, 0xb5f608

    return v0
.end method

.method public getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method
