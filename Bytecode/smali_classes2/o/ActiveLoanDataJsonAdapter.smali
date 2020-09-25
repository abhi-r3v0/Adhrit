.class public final Lo/ActiveLoanDataJsonAdapter;
.super Lo/getPrimaryButtonText;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getPrimaryButtonText<",
        "Lo/getScreen_data;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;)V
    .locals 7

    const/16 v3, 0x74

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lo/getPrimaryButtonText;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/getScreen_data;

    if-eqz v1, :cond_1

    check-cast v0, Lo/getScreen_data;

    return-object v0

    :cond_1
    new-instance v0, Lo/getIdentifier_name;

    invoke-direct {v0, p1}, Lo/getIdentifier_name;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.gass.START"

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/getScreen_data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lo/getPrimaryButtonText;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/getScreen_data;

    return-object v0
.end method
