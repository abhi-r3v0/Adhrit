.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final crypto_fingerprint_fallback_prefixes:I = 0x7f030005

.field public static final crypto_fingerprint_fallback_vendors:I = 0x7f030006

.field public static final hide_fingerprint_instantly_prefixes:I = 0x7f030008

.field private static zza:I = -0x1

.field private static zzb:I = -0x1


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:Landroid/app/Notification;

.field public final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/app/Notification;I)V
    .locals 0

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    .line 1064
    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onMessageChannelReady:Landroid/app/Notification;

    .line 1065
    iput p3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 2

    const/16 v0, 0xbba

    const/4 v1, 0x0

    .line 1045
    invoke-direct {p0, v0, p1, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;-><init>(ILandroid/app/Notification;I)V

    return-void
.end method

.method public static onPostMessage(II)[D
    .locals 12

    .line 2335
    new-array v0, p0, [D

    if-le p1, p0, :cond_0

    move p1, p0

    :cond_0
    sub-int v1, p0, p1

    .line 3214
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, p1

    .line 3215
    div-int/lit8 p0, p0, 0x2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide v6, 0x3fe147ae147ae148L    # 0.54

    div-double/2addr v2, v6

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v4

    const/4 p1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    const-wide v4, 0x3fe1642c8590b216L    # 0.5434782608695652

    const-wide v8, 0x3fdd37a6f4de9bd3L    # 0.45652173913043476

    int-to-double v10, p1

    mul-double v10, v10, v6

    .line 3219
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    sub-double/2addr v4, v10

    mul-double v4, v4, v2

    aput-wide v4, v0, p1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic zza(I)I
    .locals 0

    .line 4004
    sput p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zza:I

    return p0
.end method

.method public static zza()Z
    .locals 1

    .line 4001
    sget v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zza:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic zzb()I
    .locals 1

    .line 4002
    sget v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zza:I

    return v0
.end method

.method public static synthetic zzb(I)I
    .locals 0

    .line 4005
    sput p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zzb:I

    return p0
.end method

.method public static synthetic zzc()I
    .locals 1

    .line 4003
    sget v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->zzb:I

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1093
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1095
    :cond_1
    check-cast p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    .line 1097
    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    iget v2, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    if-eq v1, v2, :cond_2

    return v0

    .line 1098
    :cond_2
    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->ICustomTabsCallback:I

    iget v2, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->ICustomTabsCallback:I

    if-eq v1, v2, :cond_3

    return v0

    .line 1099
    :cond_3
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onMessageChannelReady:Landroid/app/Notification;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onMessageChannelReady:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1104
    iget v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1105
    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1106
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onMessageChannelReady:Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ForegroundInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mNotificationId="

    .line 1113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mForegroundServiceType="

    .line 1114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNotification="

    .line 1115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onMessageChannelReady:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
