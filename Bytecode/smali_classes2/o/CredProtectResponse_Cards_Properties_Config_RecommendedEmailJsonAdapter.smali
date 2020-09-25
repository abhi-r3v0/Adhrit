.class public final Lo/CredProtectResponse_Cards_Properties_Config_RecommendedEmailJsonAdapter;
.super Lcom/google/android/gms/dynamic/RemoteCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lo/CredProtectResponse$Cards$Properties$Config$Pitch;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl"

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
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/CredProtectResponse$Cards$Properties$Config$Pitch;

    if-eqz v1, :cond_1

    check-cast v0, Lo/CredProtectResponse$Cards$Properties$Config$Pitch;

    return-object v0

    :cond_1
    new-instance v0, Lo/CredProtectResponse$Cards$Properties$Config;

    invoke-direct {v0, p1}, Lo/CredProtectResponse$Cards$Properties$Config;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
