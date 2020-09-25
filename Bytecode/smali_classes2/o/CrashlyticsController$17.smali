.class public final Lo/CrashlyticsController$17;
.super Lo/isAppDebuggable;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/CrashlyticsController$17;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getResourcePackageName;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lo/writeTo;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lo/CrashlyticsController$4;

.field private final zze:Lo/CrashlyticsController$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lo/CrashlyticsController$18;

    invoke-direct {v0}, Lo/CrashlyticsController$18;-><init>()V

    sput-object v0, Lo/CrashlyticsController$17;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lo/writeTo;Ljava/lang/String;Lo/CrashlyticsController$4;Lo/CrashlyticsController$$Lambda$1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getResourcePackageName;",
            ">;",
            "Lo/writeTo;",
            "Ljava/lang/String;",
            "Lo/CrashlyticsController$4;",
            "Lo/CrashlyticsController$$Lambda$1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/isAppDebuggable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsController$17;->zza:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/createCipher;

    .line 4
    instance-of v1, v0, Lo/getResourcePackageName;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lo/CrashlyticsController$17;->zza:Ljava/util/List;

    check-cast v0, Lo/getResourcePackageName;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 7
    check-cast p2, Lo/writeTo;

    iput-object p2, p0, Lo/CrashlyticsController$17;->zzb:Lo/writeTo;

    .line 1004
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iput-object p3, p0, Lo/CrashlyticsController$17;->zzc:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lo/CrashlyticsController$17;->zzd:Lo/CrashlyticsController$4;

    .line 10
    iput-object p5, p0, Lo/CrashlyticsController$17;->zze:Lo/CrashlyticsController$$Lambda$1;

    return-void

    .line 1005
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1002
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lo/setCustomResponseTimeMessage;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)Lo/CrashlyticsController$17;
    .locals 7

    .line 13
    invoke-virtual {p0}, Lo/setCustomResponseTimeMessage;->extraCallback()Ljava/util/List;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/createCipher;

    .line 16
    instance-of v3, v1, Lo/getResourcePackageName;

    if-eqz v3, :cond_0

    .line 17
    check-cast v1, Lo/getResourcePackageName;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lo/setCustomResponseTimeMessage;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lo/setCustomResponseTimeMessage;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lo/writeTo;->zza(Ljava/util/List;Ljava/lang/String;)Lo/writeTo;

    move-result-object v3

    .line 24
    new-instance v0, Lo/CrashlyticsController$17;

    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {p0}, Lo/setCustomResponseTimeMessage;->onNavigationEvent()Lo/CrashlyticsController$4;

    move-result-object v5

    move-object v6, p2

    check-cast v6, Lo/CrashlyticsController$$Lambda$1;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/CrashlyticsController$17;-><init>(Ljava/util/List;Lo/writeTo;Ljava/lang/String;Lo/CrashlyticsController$4;Lo/CrashlyticsController$$Lambda$1;)V

    return-object v0
.end method

.method static synthetic zza(Lo/CrashlyticsController$17;)Lo/CrashlyticsController$4;
    .locals 0

    .line 62
    iget-object p0, p0, Lo/CrashlyticsController$17;->zzd:Lo/CrashlyticsController$4;

    return-object p0
.end method


# virtual methods
.method public final getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/CrashlyticsController$17;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method public final getHints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/createCipher;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v1, p0, Lo/CrashlyticsController$17;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getResourcePackageName;

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSession()Lo/closeOrLog;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/CrashlyticsController$17;->zzb:Lo/writeTo;

    return-object v0
.end method

.method public final resolveSignIn(Lo/getDeviceState;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getDeviceState;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lo/isAppDebuggable;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsController$17;->zzb:Lo/writeTo;

    iget-object v2, p0, Lo/CrashlyticsController$17;->zze:Lo/CrashlyticsController$$Lambda$1;

    .line 35
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/getDeviceState;Lo/writeTo;Lo/isRooted;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lo/CrashlyticsController$13;

    invoke-direct {v0, p0}, Lo/CrashlyticsController$13;-><init>(Lo/CrashlyticsController$17;)V

    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v0, -0xb0bb

    .line 2008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 42
    iget-object v2, p0, Lo/CrashlyticsController$17;->zza:Ljava/util/List;

    const/4 v3, 0x1

    .line 44
    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 46
    invoke-virtual {p0}, Lo/isAppDebuggable;->getSession()Lo/closeOrLog;

    move-result-object v2

    const/4 v3, 0x2

    .line 47
    invoke-static {p1, v3, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 49
    iget-object v2, p0, Lo/CrashlyticsController$17;->zzc:Ljava/lang/String;

    const/4 v3, 0x3

    .line 51
    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 53
    iget-object v2, p0, Lo/CrashlyticsController$17;->zzd:Lo/CrashlyticsController$4;

    const/4 v3, 0x4

    .line 55
    invoke-static {p1, v3, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 57
    iget-object v2, p0, Lo/CrashlyticsController$17;->zze:Lo/CrashlyticsController$$Lambda$1;

    const/4 v4, 0x5

    .line 59
    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 3013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
