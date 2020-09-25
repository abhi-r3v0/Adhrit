.class public final Lo/FlagProviderImpl;
.super Lo/zzabk;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zzabk<",
        "Lo/getScopesForConnectionlessNonSignIn;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/triggerConnectionSuspended;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/triggerConnectionSuspended;)V
    .locals 2

    const-string v0, "BarcodeNativeHandle"

    const-string v1, "barcode"

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lo/zzabk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lo/FlagProviderImpl;->onPostMessage:Lo/triggerConnectionSuspended;

    .line 3
    invoke-virtual {p0}, Lo/zzabk;->onNavigationEvent()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final extraCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lo/zzabk;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lo/zzabk;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getScopesForConnectionlessNonSignIn;

    invoke-interface {v0}, Lo/getScopesForConnectionlessNonSignIn;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/nio/ByteBuffer;Lo/getStringFlagValue;)[Lo/setDatabaseUrl;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lo/zzabk;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lo/setDatabaseUrl;

    return-object p1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lo/zzabk;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getScopesForConnectionlessNonSignIn;

    invoke-interface {v0, p1, p2}, Lo/getScopesForConnectionlessNonSignIn;->ICustomTabsCallback(Lo/getEventName;Lo/getStringFlagValue;)[Lo/setDatabaseUrl;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "BarcodeNativeHandle"

    const-string v0, "Error calling native barcode detector"

    .line 10
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [Lo/setDatabaseUrl;

    return-object p1
.end method

.method protected final synthetic onPostMessage(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const-string v0, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    .line 28
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 29
    instance-of v2, v1, Lo/getIntFlagValue;

    if-eqz v2, :cond_1

    .line 30
    check-cast v1, Lo/getIntFlagValue;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v1, Lo/ModuleDescriptor;

    invoke-direct {v1, p1}, Lo/ModuleDescriptor;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    .line 35
    :cond_2
    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lo/FlagProviderImpl;->onPostMessage:Lo/triggerConnectionSuspended;

    invoke-interface {v1, p1, p2}, Lo/getIntFlagValue;->ICustomTabsCallback(Lo/getEventName;Lo/triggerConnectionSuspended;)Lo/getScopesForConnectionlessNonSignIn;

    move-result-object p1

    return-object p1
.end method
