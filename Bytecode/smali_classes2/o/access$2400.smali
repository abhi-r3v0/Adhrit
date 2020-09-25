.class public final Lo/access$2400;
.super Lo/getTags;
.source ""

# interfaces
.implements Lo/hideKeyboard;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/access$2400;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Landroid/net/Uri;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lo/access$1900;

    invoke-direct {v0}, Lo/access$1900;-><init>()V

    sput-object v0, Lo/access$2400;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/access$2400;->zza:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/access$2400;->zzb:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lo/access$2400;->zzf:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lo/access$2400;->zzg:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lo/access$2400;->zzc:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lo/access$2400;->zzd:Ljava/lang/String;

    .line 8
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lo/access$2400;->zzd:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lo/access$2400;->zze:Landroid/net/Uri;

    .line 10
    :cond_0
    iput-boolean p7, p0, Lo/access$2400;->zzh:Z

    .line 11
    iput-object p8, p0, Lo/access$2400;->zzi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/Conversation;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lo/getTags;-><init>()V

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p1}, Lo/Conversation;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/access$2400;->zza:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lo/Conversation;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    .line 3004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    iput-object v0, p0, Lo/access$2400;->zzb:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lo/Conversation;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/access$2400;->zzc:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lo/Conversation;->extraCallback()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/access$2400;->zzd:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lo/access$2400;->zze:Landroid/net/Uri;

    .line 37
    :cond_0
    invoke-virtual {p1}, Lo/Conversation;->asBinder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/access$2400;->zzf:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lo/Conversation;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/access$2400;->zzg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lo/access$2400;->zzh:Z

    .line 40
    invoke-virtual {p1}, Lo/Conversation;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/access$2400;->zzi:Ljava/lang/String;

    return-void

    .line 3005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3002
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lo/getColumnName;Ljava/lang/String;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lo/getTags;-><init>()V

    if-eqz p1, :cond_3

    .line 1004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Given String is empty or null"

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p1}, Lo/getColumnName;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    .line 2004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    iput-object v0, p0, Lo/access$2400;->zza:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lo/access$2400;->zzb:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lo/getColumnName;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/access$2400;->zzf:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lo/getColumnName;->onPostMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/access$2400;->zzc:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lo/getColumnName;->extraCallback()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/access$2400;->zzd:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lo/access$2400;->zze:Landroid/net/Uri;

    .line 24
    :cond_0
    invoke-virtual {p1}, Lo/getColumnName;->onNavigationEvent()Z

    move-result p2

    iput-boolean p2, p0, Lo/access$2400;->zzh:Z

    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lo/access$2400;->zzi:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lo/getColumnName;->asInterface()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/access$2400;->zzg:Ljava/lang/String;

    return-void

    .line 2005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1005
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1002
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Ljava/lang/String;)Lo/access$2400;
    .locals 10

    .line 65
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "userId"

    .line 66
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "providerId"

    .line 67
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "email"

    .line 68
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "phoneNumber"

    .line 69
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "displayName"

    .line 70
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "photoUrl"

    .line 71
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p0, "isEmailVerified"

    .line 72
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string p0, "rawUserInfo"

    .line 73
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    new-instance p0, Lo/access$2400;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lo/access$2400;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DefaultAuthUserInfo"

    const-string v1, "Failed to unpack UserInfo from JSON"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/google/firebase/auth/api/zza;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/api/zza;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/access$2400;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/access$2400;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/access$2400;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoUrl()Landroid/net/Uri;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/access$2400;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/access$2400;->zze:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lo/access$2400;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lo/access$2400;->zze:Landroid/net/Uri;

    .line 47
    :cond_0
    iget-object v0, p0, Lo/access$2400;->zze:Landroid/net/Uri;

    return-object v0
.end method

.method public final getProviderId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/access$2400;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/access$2400;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final isEmailVerified()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lo/access$2400;->zzh:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const p2, -0xb0bb

    .line 4008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 4009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lo/access$2400;->getUid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 82
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 84
    invoke-virtual {p0}, Lo/access$2400;->getProviderId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 85
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 87
    invoke-virtual {p0}, Lo/access$2400;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 88
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 90
    iget-object v1, p0, Lo/access$2400;->zzd:Ljava/lang/String;

    const/4 v2, 0x4

    .line 92
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 94
    invoke-virtual {p0}, Lo/access$2400;->getEmail()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    .line 95
    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 97
    invoke-virtual {p0}, Lo/access$2400;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    .line 98
    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 100
    invoke-virtual {p0}, Lo/access$2400;->isEmailVerified()Z

    move-result v1

    const/4 v3, 0x7

    .line 4020
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4021
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x8

    .line 103
    iget-object v3, p0, Lo/access$2400;->zzi:Ljava/lang/String;

    .line 105
    invoke-static {p1, v1, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 6013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/access$2400;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    .line 53
    iget-object v2, p0, Lo/access$2400;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "providerId"

    .line 54
    iget-object v2, p0, Lo/access$2400;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayName"

    .line 55
    iget-object v2, p0, Lo/access$2400;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "photoUrl"

    .line 56
    iget-object v2, p0, Lo/access$2400;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "email"

    .line 57
    iget-object v2, p0, Lo/access$2400;->zzf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phoneNumber"

    .line 58
    iget-object v2, p0, Lo/access$2400;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isEmailVerified"

    .line 59
    iget-boolean v2, p0, Lo/access$2400;->zzh:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rawUserInfo"

    .line 60
    iget-object v2, p0, Lo/access$2400;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultAuthUserInfo"

    const-string v2, "Failed to jsonify this object"

    .line 63
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Lcom/google/firebase/auth/api/zza;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/api/zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
