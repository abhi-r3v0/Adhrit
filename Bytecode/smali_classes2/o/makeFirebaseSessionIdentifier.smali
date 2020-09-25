.class public final Lo/makeFirebaseSessionIdentifier;
.super Lo/setMinDue;
.source ""

# interfaces
.implements Lo/finalizePreviousNativeSession;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setMinDue<",
        "Lo/doWriteNonFatal;",
        ">;",
        "Lo/finalizePreviousNativeSession;"
    }
.end annotation


# static fields
.field private static zza:Lo/getFarmBackgroundImage;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lo/writeSessionPartFile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lo/getFarmBackgroundImage;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lo/getFarmBackgroundImage;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/makeFirebaseSessionIdentifier;->zza:Lo/getFarmBackgroundImage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Lo/writeSessionPartFile;Lo/getIfsc;Lo/TransactionJsonAdapter;)V
    .locals 7

    const/16 v3, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/getMinDue;Lo/getIfsc;Lo/TransactionJsonAdapter;)V

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lo/makeFirebaseSessionIdentifier;->zzb:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lo/makeFirebaseSessionIdentifier;->zzc:Lo/writeSessionPartFile;

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    .line 29
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lo/doWriteNonFatal;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lo/doWriteNonFatal;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lo/writeFatal;

    invoke-direct {v0, p1}, Lo/writeFatal;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getApiFeatures()[Lo/setAmountRefunded;
    .locals 1

    .line 24
    sget-object v0, Lo/getChannelAlias;->onNavigationEvent:[Lo/setAmountRefunded;

    return-object v0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 3

    .line 15
    invoke-super {p0}, Lo/setMinDue;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    :cond_0
    iget-object v1, p0, Lo/makeFirebaseSessionIdentifier;->zzc:Lo/writeSessionPartFile;

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Lo/writeSessionPartFile;->zzb()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.API_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_1
    invoke-static {}, Lo/writeSessionUser;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.LIBRARY_VERSION"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.gms.service.START"

    return-object v0
.end method

.method public final getStartServicePackage()Ljava/lang/String;
    .locals 3

    .line 7
    iget-object v0, p0, Lo/makeFirebaseSessionIdentifier;->zzc:Lo/writeSessionPartFile;

    .line 8
    iget-boolean v0, v0, Lo/getMappingFileId;->zza:Z

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lo/makeFirebaseSessionIdentifier;->zza:Lo/getFarmBackgroundImage;

    .line 1040
    iget-object v1, v0, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    .line 1054
    iget-object v0, v0, Lo/getFarmBackgroundImage;->extraCallback:Ljava/lang/String;

    const-string v2, "Preparing to create service connection to fallback implementation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lo/makeFirebaseSessionIdentifier;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lo/makeFirebaseSessionIdentifier;->zza:Lo/getFarmBackgroundImage;

    .line 2040
    iget-object v1, v0, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    .line 2054
    iget-object v0, v0, Lo/getFarmBackgroundImage;->extraCallback:Ljava/lang/String;

    const-string v2, "Preparing to create service connection to gms implementation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2040
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public final requiresGooglePlayServices()Z
    .locals 2

    .line 14
    iget-object v0, p0, Lo/makeFirebaseSessionIdentifier;->zzb:Landroid/content/Context;

    const-string v1, "com.google.firebase.auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic zza()Lo/doWriteNonFatal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lo/setMinDue;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/doWriteNonFatal;

    return-object v0
.end method
