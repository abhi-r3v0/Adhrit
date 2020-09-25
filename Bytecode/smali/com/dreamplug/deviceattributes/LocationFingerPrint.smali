.class public Lcom/dreamplug/deviceattributes/LocationFingerPrint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private accuracy:F

.field private transient context:Landroid/content/Context;

.field private transient fpDataReady:Lo/setArguments;

.field public latitude:D

.field public longitude:D

.field private transient mFusedLocationClient:Lo/zzad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setArguments;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->fpDataReady:Lo/setArguments;

    return-void
.end method

.method public static synthetic access$000(Lcom/dreamplug/deviceattributes/LocationFingerPrint;)Lo/setArguments;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->fpDataReady:Lo/setArguments;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dreamplug/deviceattributes/LocationFingerPrint;)Lo/zzad;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->mFusedLocationClient:Lo/zzad;

    return-object p0
.end method

.method static synthetic access$102(Lcom/dreamplug/deviceattributes/LocationFingerPrint;Lo/zzad;)Lo/zzad;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->mFusedLocationClient:Lo/zzad;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dreamplug/deviceattributes/LocationFingerPrint;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/dreamplug/deviceattributes/LocationFingerPrint;F)F
    .locals 0

    .line 12
    iput p1, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->accuracy:F

    return p1
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->context:Landroid/content/Context;

    new-instance v1, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;

    invoke-direct {v1, p0}, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;-><init>(Lcom/dreamplug/deviceattributes/LocationFingerPrint;)V

    .line 3010
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x17

    if-lt v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2015
    invoke-static {v0, v2}, Lo/getTitle;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 1023
    invoke-interface {v1}, Lo/getId$extraCallback;->onMessageChannelReady()V

    return-void

    .line 1025
    :cond_2
    invoke-interface {v1}, Lo/getId$extraCallback;->onNavigationEvent()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationFingerPrint{mFusedLocationClient="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->mFusedLocationClient:Lo/zzad;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
