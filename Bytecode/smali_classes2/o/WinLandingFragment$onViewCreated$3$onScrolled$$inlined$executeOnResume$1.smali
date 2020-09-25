.class public final Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;
.super Lcom/google/android/gms/dynamic/RemoteCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lo/SpinTheWheelResponse$TemplateProperties;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;I)Lo/SpinDetail;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    invoke-virtual {p0, p1}, Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;->onNavigationEvent(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lo/SpinTheWheelResponse$TemplateProperties;

    const v6, 0xbdfcb8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lo/SpinTheWheelResponse$TemplateProperties;->ICustomTabsCallback(Lo/getEventName;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;II)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lo/SpinDetail;

    if-eqz p3, :cond_1

    check-cast p2, Lo/SpinDetail;

    return-object p2

    :cond_1
    new-instance p2, Lo/SlotMachineResponseJsonAdapter;

    invoke-direct {p2, p1}, Lo/SlotMachineResponseJsonAdapter;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "Could not create remote AdManager."

    invoke-static {p2, p1}, Lo/getText1;->onPostMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final synthetic onMessageChannelReady(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/SpinTheWheelResponse$TemplateProperties;

    if-eqz v1, :cond_1

    check-cast v0, Lo/SpinTheWheelResponse$TemplateProperties;

    return-object v0

    :cond_1
    new-instance v0, Lo/SpinDetailJsonAdapter;

    invoke-direct {v0, p1}, Lo/SpinDetailJsonAdapter;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
