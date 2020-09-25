.class public final Lo/setWheelBackground;
.super Lcom/google/android/gms/dynamic/RemoteCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lo/SlotMachineResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdLoaderBuilderCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/SlotMachineResponse;

    if-eqz v1, :cond_1

    check-cast v0, Lo/SlotMachineResponse;

    return-object v0

    :cond_1
    new-instance v0, Lo/SlotMachinePlayResponse;

    invoke-direct {v0, p1}, Lo/SlotMachinePlayResponse;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final onPostMessage(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;)Lo/ReelSymbol;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v1

    invoke-virtual {p0, p1}, Lo/setWheelBackground;->onNavigationEvent(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SlotMachineResponse;

    const v2, 0xbdfcb8

    invoke-interface {p1, v1, p2, p3, v2}, Lo/SlotMachineResponse;->onNavigationEvent(Lo/getEventName;Ljava/lang/String;Lo/BankAccountData;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lo/ReelSymbol;

    if-eqz p3, :cond_1

    check-cast p2, Lo/ReelSymbol;

    return-object p2

    :cond_1
    new-instance p2, Lo/ReelSymbolJsonAdapter;

    invoke-direct {p2, p1}, Lo/ReelSymbolJsonAdapter;-><init>(Landroid/os/IBinder;)V
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
    const-string p2, "Could not create remote builder for AdLoader."

    invoke-static {p2, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
