.class public Lo/CrashlyticsController$$Lambda$1;
.super Lo/isRooted;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/CrashlyticsController$$Lambda$1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lo/getColumnConstraint;

.field private zzb:Lo/access$2400;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/access$2400;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/Boolean;

.field private zzi:Lo/CrashlyticsController$11;

.field private zzj:Z

.field private zzk:Lo/CrashlyticsController$4;

.field private zzl:Lo/deleteFiles;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lo/CrashlyticsController$1;

    invoke-direct {v0}, Lo/CrashlyticsController$1;-><init>()V

    sput-object v0, Lo/CrashlyticsController$$Lambda$1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/util/List<",
            "+",
            "Lo/hideKeyboard;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lo/isRooted;-><init>()V

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzc:Ljava/lang/String;

    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    .line 18
    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzd:Ljava/lang/String;

    const-string p1, "2"

    .line 19
    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzg:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p2}, Lo/isRooted;->zza(Ljava/util/List;)Lo/isRooted;

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lo/getColumnConstraint;Lo/access$2400;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lo/CrashlyticsController$11;ZLo/CrashlyticsController$4;Lo/deleteFiles;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getColumnConstraint;",
            "Lo/access$2400;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/access$2400;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lo/CrashlyticsController$11;",
            "Z",
            "Lo/CrashlyticsController$4;",
            "Lo/deleteFiles;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/isRooted;-><init>()V

    .line 2
    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zza:Lo/getColumnConstraint;

    .line 3
    iput-object p2, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    .line 4
    iput-object p3, p0, Lo/CrashlyticsController$$Lambda$1;->zzc:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lo/CrashlyticsController$$Lambda$1;->zzd:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lo/CrashlyticsController$$Lambda$1;->zze:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lo/CrashlyticsController$$Lambda$1;->zzf:Ljava/util/List;

    .line 8
    iput-object p7, p0, Lo/CrashlyticsController$$Lambda$1;->zzg:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lo/CrashlyticsController$$Lambda$1;->zzh:Ljava/lang/Boolean;

    .line 10
    iput-object p9, p0, Lo/CrashlyticsController$$Lambda$1;->zzi:Lo/CrashlyticsController$11;

    .line 11
    iput-boolean p10, p0, Lo/CrashlyticsController$$Lambda$1;->zzj:Z

    .line 12
    iput-object p11, p0, Lo/CrashlyticsController$$Lambda$1;->zzk:Lo/CrashlyticsController$4;

    .line 13
    iput-object p12, p0, Lo/CrashlyticsController$$Lambda$1;->zzl:Lo/deleteFiles;

    return-void
.end method

.method public static zza(Lcom/google/firebase/FirebaseApp;Lo/isRooted;)Lo/isRooted;
    .locals 2

    .line 137
    new-instance v0, Lo/CrashlyticsController$$Lambda$1;

    invoke-virtual {p1}, Lo/isRooted;->getProviderData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsController$$Lambda$1;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    .line 138
    instance-of p0, p1, Lo/CrashlyticsController$$Lambda$1;

    if-eqz p0, :cond_0

    .line 139
    move-object p0, p1

    check-cast p0, Lo/CrashlyticsController$$Lambda$1;

    .line 141
    iget-object v1, p0, Lo/CrashlyticsController$$Lambda$1;->zzg:Ljava/lang/String;

    .line 143
    iput-object v1, v0, Lo/CrashlyticsController$$Lambda$1;->zzg:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lo/CrashlyticsController$$Lambda$1;->zzd:Ljava/lang/String;

    .line 147
    iput-object v1, v0, Lo/CrashlyticsController$$Lambda$1;->zzd:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lo/isRooted;->getMetadata()Lo/getBooleanResourceValue;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsController$11;

    .line 149
    iput-object p0, v0, Lo/CrashlyticsController$$Lambda$1;->zzi:Lo/CrashlyticsController$11;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 152
    iput-object p0, v0, Lo/CrashlyticsController$$Lambda$1;->zzi:Lo/CrashlyticsController$11;

    .line 153
    :goto_0
    invoke-virtual {p1}, Lo/isRooted;->zzd()Lo/getColumnConstraint;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {p1}, Lo/isRooted;->zzd()Lo/getColumnConstraint;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/isRooted;->zza(Lo/getColumnConstraint;)V

    .line 155
    :cond_1
    invoke-virtual {p1}, Lo/isRooted;->isAnonymous()Z

    move-result p0

    if-nez p0, :cond_2

    .line 156
    invoke-virtual {v0}, Lo/isRooted;->zzb()Lo/isRooted;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    invoke-virtual {v0}, Lo/access$2400;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    invoke-virtual {v0}, Lo/access$2400;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lo/getBooleanResourceValue;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzi:Lo/CrashlyticsController$11;

    return-object v0
.end method

.method public synthetic getMultiFactor()Lo/hexify;
    .locals 1

    .line 159
    new-instance v0, Lo/CrashlyticsController$12;

    invoke-direct {v0, p0}, Lo/CrashlyticsController$12;-><init>(Lo/CrashlyticsController$$Lambda$1;)V

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    invoke-virtual {v0}, Lo/access$2400;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl()Landroid/net/Uri;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    invoke-virtual {v0}, Lo/access$2400;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getProviderData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/hideKeyboard;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zze:Ljava/util/List;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    invoke-virtual {v0}, Lo/access$2400;->getProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 3

    .line 27
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zza:Lo/getColumnConstraint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getColumnConstraint;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zza:Lo/getColumnConstraint;

    .line 29
    invoke-virtual {v0}, Lo/getColumnConstraint;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->zza(Ljava/lang/String;)Lo/isClsTrace;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lo/isClsTrace;->getClaims()Ljava/util/Map;

    move-result-object v0

    const-string v2, "firebase"

    .line 31
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "tenant"

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    invoke-virtual {v0}, Lo/access$2400;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 3

    .line 43
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzh:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zza:Lo/getColumnConstraint;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lo/getColumnConstraint;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->zza(Ljava/lang/String;)Lo/isClsTrace;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Lo/isClsTrace;->getSignInProvider()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lo/isRooted;->getProviderData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    if-eqz v1, :cond_3

    const-string v0, "custom"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 52
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzh:Ljava/lang/Boolean;

    .line 53
    :cond_4
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzh:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEmailVerified()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    invoke-virtual {v0}, Lo/access$2400;->isEmailVerified()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v0, -0xb0bb

    .line 4008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 4009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 93
    invoke-virtual {p0}, Lo/isRooted;->zzd()Lo/getColumnConstraint;

    move-result-object v2

    const/4 v3, 0x1

    .line 94
    invoke-static {p1, v3, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 96
    iget-object v2, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    const/4 v3, 0x2

    .line 98
    invoke-static {p1, v3, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 100
    iget-object v2, p0, Lo/CrashlyticsController$$Lambda$1;->zzc:Ljava/lang/String;

    const/4 v3, 0x3

    .line 102
    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 104
    iget-object v2, p0, Lo/CrashlyticsController$$Lambda$1;->zzd:Ljava/lang/String;

    const/4 v3, 0x4

    .line 106
    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 108
    iget-object v2, p0, Lo/CrashlyticsController$$Lambda$1;->zze:Ljava/util/List;

    const/4 v4, 0x5

    .line 110
    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 112
    invoke-virtual {p0}, Lo/isRooted;->zza()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x6

    .line 113
    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 115
    iget-object v2, p0, Lo/CrashlyticsController$$Lambda$1;->zzg:Ljava/lang/String;

    const/4 v4, 0x7

    .line 117
    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 119
    invoke-virtual {p0}, Lo/isRooted;->isAnonymous()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v4, 0x8

    .line 4027
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4028
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    const/16 v2, 0x9

    .line 122
    invoke-virtual {p0}, Lo/isRooted;->getMetadata()Lo/getBooleanResourceValue;

    move-result-object v4

    .line 123
    invoke-static {p1, v2, v4, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 125
    iget-boolean v2, p0, Lo/CrashlyticsController$$Lambda$1;->zzj:Z

    const/16 v4, 0xa

    .line 5020
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5021
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0xb

    .line 128
    iget-object v4, p0, Lo/CrashlyticsController$$Lambda$1;->zzk:Lo/CrashlyticsController$4;

    .line 130
    invoke-static {p1, v2, v4, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v2, 0xc

    .line 132
    iget-object v4, p0, Lo/CrashlyticsController$$Lambda$1;->zzl:Lo/deleteFiles;

    .line 134
    invoke-static {p1, v2, v4, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 7013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzf:Ljava/util/List;

    return-object v0
.end method

.method public final zza(Ljava/lang/String;)Lo/CrashlyticsController$$Lambda$1;
    .locals 0

    .line 37
    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(Ljava/util/List;)Lo/isRooted;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/hideKeyboard;",
            ">;)",
            "Lo/isRooted;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zze:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzf:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/hideKeyboard;

    .line 60
    invoke-interface {v2}, Lo/hideKeyboard;->getProviderId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    move-object v3, v2

    check-cast v3, Lo/access$2400;

    iput-object v3, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    goto :goto_1

    .line 62
    :cond_0
    iget-object v3, p0, Lo/CrashlyticsController$$Lambda$1;->zzf:Ljava/util/List;

    invoke-interface {v2}, Lo/hideKeyboard;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :goto_1
    iget-object v3, p0, Lo/CrashlyticsController$$Lambda$1;->zze:Ljava/util/List;

    check-cast v2, Lo/access$2400;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    if-nez p1, :cond_2

    .line 66
    iget-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zze:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/access$2400;

    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzb:Lo/access$2400;

    :cond_2
    return-object p0

    .line 2002
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/CrashlyticsController$11;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzi:Lo/CrashlyticsController$11;

    return-void
.end method

.method public final zza(Lo/CrashlyticsController$4;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzk:Lo/CrashlyticsController$4;

    return-void
.end method

.method public final zza(Lo/getColumnConstraint;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    check-cast p1, Lo/getColumnConstraint;

    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zza:Lo/getColumnConstraint;

    return-void

    .line 3002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzj:Z

    return-void
.end method

.method public final synthetic zzb()Lo/isRooted;
    .locals 1

    .line 162
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzh:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/createCipher;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lo/deleteFiles;->zza(Ljava/util/List;)Lo/deleteFiles;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsController$$Lambda$1;->zzl:Lo/deleteFiles;

    return-void
.end method

.method public final zzc()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lo/getColumnConstraint;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zza:Lo/getColumnConstraint;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zza:Lo/getColumnConstraint;

    invoke-virtual {v0}, Lo/getColumnConstraint;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lo/isRooted;->zzd()Lo/getColumnConstraint;

    move-result-object v0

    invoke-virtual {v0}, Lo/getColumnConstraint;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/access$2400;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zze:Ljava/util/List;

    return-object v0
.end method

.method public final zzh()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzj:Z

    return v0
.end method

.method public final zzi()Lo/CrashlyticsController$4;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzk:Lo/CrashlyticsController$4;

    return-object v0
.end method

.method public final zzj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/createCipher;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lo/CrashlyticsController$$Lambda$1;->zzl:Lo/deleteFiles;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lo/deleteFiles;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    invoke-static {}, Lo/setResponseTimeExpectationsFetchInterval;->onRelationshipValidationResult()Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object v0

    return-object v0
.end method
