.class public final Lo/Information;
.super Lo/setMinDue;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setMinDue<",
        "Lo/setTextChangeLisener;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/setUpdatedAt$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Lo/setUpdatedAt$ICustomTabsCallback;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/getMinDue;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    .line 2
    new-instance p1, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;

    if-nez p4, :cond_0

    .line 3
    sget-object p4, Lo/setUpdatedAt$ICustomTabsCallback;->onPostMessage:Lo/setUpdatedAt$ICustomTabsCallback;

    :cond_0
    invoke-direct {p1, p4}, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;-><init>(Lo/setUpdatedAt$ICustomTabsCallback;)V

    .line 4
    invoke-static {}, Lo/getBgAssetId;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->extraCallback(Ljava/lang/String;)Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->ICustomTabsCallback()Lo/setUpdatedAt$ICustomTabsCallback;

    move-result-object p1

    iput-object p1, p0, Lo/Information;->onMessageChannelReady:Lo/setUpdatedAt$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    .line 16
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lo/setTextChangeLisener;

    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Lo/setTextChangeLisener;

    return-object v0

    .line 19
    :cond_1
    new-instance v0, Lo/setPatternType;

    invoke-direct {v0, p1}, Lo/setPatternType;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/Information;->onMessageChannelReady:Lo/setUpdatedAt$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/setUpdatedAt$ICustomTabsCallback;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method
