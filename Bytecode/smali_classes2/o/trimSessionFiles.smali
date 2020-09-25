.class final Lo/trimSessionFiles;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/getAppIconResourceId<",
        "Lo/writeSessionPartFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zza:Lo/writeSessionPartFile;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo/writeSessionPartFile;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/trimSessionFiles;->zza:Lo/writeSessionPartFile;

    .line 3
    iput-object p2, p0, Lo/trimSessionFiles;->zzb:Landroid/content/Context;

    return-void
.end method

.method private final zza(ZLandroid/content/Context;)Lo/setPaymentDueDateWeaklyTyped;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "Lo/writeSessionPartFile;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/trimSessionFiles;->zza:Lo/writeSessionPartFile;

    invoke-virtual {v0}, Lo/getMappingFileId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeSessionPartFile;

    .line 7
    iput-boolean p1, v0, Lo/getMappingFileId;->zza:Z

    .line 8
    new-instance p1, Lo/finishAffinity;

    sget-object v1, Lo/appendToProtoFile;->zza:Lo/setCustomAmount;

    new-instance v2, Lo/component19;

    invoke-direct {v2}, Lo/component19;-><init>()V

    invoke-direct {p1, p2, v1, v0, v2}, Lo/finishAffinity;-><init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/getPanMismatch;)V

    return-object p1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zzb()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zzc()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 11
    :cond_0
    iget-object v0, p0, Lo/trimSessionFiles;->zzb:Landroid/content/Context;

    const-string v2, "com.google.firebase.auth"

    .line 12
    invoke-static {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 1001
    :cond_1
    sget-object v2, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    .line 15
    iget-object v4, p0, Lo/trimSessionFiles;->zzb:Landroid/content/Context;

    const v5, 0xbdfcb8

    .line 16
    invoke-virtual {v2, v4, v5}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 18
    :cond_2
    iget-object v2, p0, Lo/trimSessionFiles;->zzb:Landroid/content/Context;

    const-string v4, "com.google.android.gms.firebase_auth"

    .line 1155
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    .line 22
    :goto_0
    invoke-static {v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zza(I)I

    .line 23
    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zzb(I)I

    .line 24
    :cond_3
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zzc()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lo/trimSessionFiles;->zzb:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lo/trimSessionFiles;->zza(ZLandroid/content/Context;)Lo/setPaymentDueDateWeaklyTyped;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 27
    :goto_1
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zzb()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lo/trimSessionFiles;->zzb:Landroid/content/Context;

    invoke-direct {p0, v3, v1}, Lo/trimSessionFiles;->zza(ZLandroid/content/Context;)Lo/setPaymentDueDateWeaklyTyped;

    move-result-object v2

    .line 28
    :goto_2
    new-instance v1, Lo/canTryConnection;

    .line 29
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zzb()I

    move-result v3

    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zzc()I

    move-result v4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lo/canTryConnection;-><init>(IILjava/util/Map;)V

    .line 30
    new-instance v3, Lo/getAppIconResourceId;

    invoke-direct {v3, v2, v0, v1}, Lo/getAppIconResourceId;-><init>(Lo/setPaymentDueDateWeaklyTyped;Lo/setPaymentDueDateWeaklyTyped;Lo/CommonUtils$1;)V

    return-object v3
.end method
