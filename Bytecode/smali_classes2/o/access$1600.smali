.class public final Lo/access$1600;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

.field private final arg$2:Lcom/google/firebase/iid/MessengerIpcClient$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    sput-object v0, Lo/access$1600;->zza:Ljava/util/Map;

    const-string v1, "auth/invalid-provider-id"

    const-string v2, "INVALID_PROVIDER_ID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lo/access$1600;->zza:Ljava/util/Map;

    const-string v1, "auth/invalid-cert-hash"

    const-string v2, "INVALID_CERT_HASH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lo/access$1600;->zza:Ljava/util/Map;

    const-string v1, "auth/network-request-failed"

    const-string v2, "WEB_NETWORK_REQUEST_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lo/access$1600;->zza:Ljava/util/Map;

    const-string v1, "auth/web-storage-unsupported"

    const-string v2, "WEB_STORAGE_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lo/access$1600;->zza:Ljava/util/Map;

    const-string v1, "auth/operation-not-allowed"

    const-string v2, "OPERATION_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;Lcom/google/firebase/iid/MessengerIpcClient$onMessageChannelReady;)V
    .locals 0

    .line 6000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/access$1600;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    iput-object p2, p0, Lo/access$1600;->arg$2:Lcom/google/firebase/iid/MessengerIpcClient$onMessageChannelReady;

    return-void
.end method

.method public static zza(Landroid/content/Intent;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 2002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2003
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2004
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 2005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const-string v0, "com.google.firebase.auth.internal.STATUS"

    .line 1030
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-void
.end method

.method public static zza(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "com.google.firebase.auth.internal.STATUS"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 3002
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzb(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    if-eqz p0, :cond_2

    .line 6
    invoke-static {p0}, Lo/access$1600;->zza(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v1, "com.google.firebase.auth.internal.STATUS"

    .line 5032
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 5035
    :cond_0
    invoke-static {p0, v0}, Lo/CategoryResult;->ICustomTabsCallback([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    .line 8
    :goto_0
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    return-object p0

    .line 4041
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4002
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 7000
    iget-object v0, p0, Lo/access$1600;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    iget-object v1, p0, Lo/access$1600;->arg$2:Lcom/google/firebase/iid/MessengerIpcClient$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;->lambda$scheduleSendingRequests$1$MessengerIpcClient$Connection(Lcom/google/firebase/iid/MessengerIpcClient$onMessageChannelReady;)V

    return-void
.end method
