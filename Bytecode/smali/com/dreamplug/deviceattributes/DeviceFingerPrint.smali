.class public Lcom/dreamplug/deviceattributes/DeviceFingerPrint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private androidAPILevel:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "android_api_level"
    .end annotation
.end field

.field private androidId:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "android_id"
    .end annotation
.end field

.field public androidOs:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "os_version"
    .end annotation
.end field

.field private board:Ljava/lang/String;

.field private bootloaderValue:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "boot_loader_value"
    .end annotation
.end field

.field private brand:Ljava/lang/String;

.field private buildHost:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "build_host"
    .end annotation
.end field

.field private buildId:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "build_id"
    .end annotation
.end field

.field private buildUser:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "build_user"
    .end annotation
.end field

.field private transient context:Landroid/content/Context;

.field private fingerprint:Ljava/lang/String;

.field transient fpDataReady:Lo/setArguments;

.field private gaid:Ljava/lang/String;

.field private hardware:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field private imei1:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "imei_1"
    .end annotation
.end field

.field private imei2:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "imei_2"
    .end annotation
.end field

.field private isDualSim:Z
    .annotation runtime Lo/computeStringSize;
        extraCallback = "is_dual_sim"
    .end annotation
.end field

.field private isRooted:Z
    .annotation runtime Lo/computeStringSize;
        extraCallback = "is_rooted"
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private screenDensity:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "screen_density"
    .end annotation
.end field

.field private screenHeight:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "screen_height"
    .end annotation
.end field

.field private screenResolution:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "screen_resolution"
    .end annotation
.end field

.field private screenSize:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "screen_size"
    .end annotation
.end field

.field private screenWidth:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "screen_width"
    .end annotation
.end field

.field private serial:Ljava/lang/String;

.field transient ti:Lo/requireArguments;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setArguments;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->fpDataReady:Lo/setArguments;

    .line 71
    new-instance p2, Lo/requireArguments;

    invoke-direct {p2, p1}, Lo/requireArguments;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->ti:Lo/requireArguments;

    return-void
.end method

.method private getGAID()V
    .locals 2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->context:Landroid/content/Context;

    invoke-static {v0}, Lo/getTotalAmountDue;->getAdvertisingIdInfo(Landroid/content/Context;)Lo/getTotalAmountDue$onNavigationEvent;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lo/getTotalAmountDue$onNavigationEvent;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->gaid:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 155
    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei:Ljava/lang/String;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->fpDataReady:Lo/setArguments;

    invoke-interface {v0}, Lo/setArguments;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    return-void
.end method

.method public static synthetic onPostMessage(Lcom/dreamplug/deviceattributes/DeviceFingerPrint;)V
    .locals 0

    invoke-direct {p0}, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->getGAID()V

    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getGaid()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->model:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 9

    .line 108
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 109
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 110
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v2

    .line 112
    iget v4, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-float v7, v1

    .line 113
    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 114
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 115
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    .line 116
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x43200000    # 160.0f

    mul-float v0, v0, v5

    float-to-int v0, v0

    .line 119
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->manufacturer:Ljava/lang/String;

    .line 120
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->brand:Ljava/lang/String;

    .line 121
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->model:Ljava/lang/String;

    .line 122
    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->board:Ljava/lang/String;

    .line 123
    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->hardware:Ljava/lang/String;

    .line 124
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->serial:Ljava/lang/String;

    .line 125
    iget-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->ti:Lo/requireArguments;

    .line 1142
    iget-object v5, v5, Lo/requireArguments;->onPostMessage:Ljava/lang/String;

    .line 125
    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei:Ljava/lang/String;

    .line 126
    iget-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->ti:Lo/requireArguments;

    .line 2142
    iget-object v5, v5, Lo/requireArguments;->onPostMessage:Ljava/lang/String;

    .line 126
    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei1:Ljava/lang/String;

    .line 127
    iget-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->ti:Lo/requireArguments;

    .line 2146
    iget-object v5, v5, Lo/requireArguments;->ICustomTabsCallback:Ljava/lang/String;

    .line 127
    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei2:Ljava/lang/String;

    .line 128
    iget-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->ti:Lo/requireArguments;

    .line 2158
    iget-object v5, v5, Lo/requireArguments;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 128
    :goto_0
    iput-boolean v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->isDualSim:Z

    .line 129
    iget-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->androidId:Ljava/lang/String;

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "px"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenWidth:Ljava/lang/String;

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenHeight:Ljava/lang/String;

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Pixels"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenResolution:Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " Inches"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenSize:Ljava/lang/String;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dpi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenDensity:Ljava/lang/String;

    .line 136
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->bootloaderValue:Ljava/lang/String;

    .line 137
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->buildUser:Ljava/lang/String;

    .line 138
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->buildHost:Ljava/lang/String;

    .line 139
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->androidOs:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->androidAPILevel:Ljava/lang/String;

    .line 141
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->buildId:Ljava/lang/String;

    .line 142
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->fingerprint:Ljava/lang/String;

    .line 143
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->ICustomTabsCallback()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->isRooted:Z

    .line 144
    new-instance v0, Lo/restoreViewState;

    invoke-direct {v0, p0}, Lo/restoreViewState;-><init>(Lcom/dreamplug/deviceattributes/DeviceFingerPrint;)V

    const-string v1, "command"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3035
    sget-object v1, Lo/keepAll;->onMessageChannelReady:Lo/keepAll;

    check-cast v1, Lo/isFromUser;

    invoke-static {}, Lo/setTrackedQueryKeys;->onPostMessage()Lo/zombifyForRemove;

    move-result-object v2

    check-cast v2, Lo/isZombied;

    new-instance v3, Lo/addAllInternal$onNavigationEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lo/addAllInternal$onNavigationEvent;-><init>(Ljava/lang/Runnable;Lo/setSessionPersistenceKey;)V

    check-cast v3, Lo/nextTransactionOrder;

    const/4 v0, 0x2

    .line 4001
    invoke-static {v1, v2, v4, v3, v0}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceFingerPrint{imei=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imei1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imei2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", androidId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->androidId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", board=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->board:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenWidth=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenWidth:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenHeight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenHeight:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenResolution=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenResolution:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenSize=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenDensity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->screenDensity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", androidOs=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->androidOs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", androidAPILevel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->androidAPILevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hardware=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->hardware:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", manufacturer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", brand=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->brand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serial=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->serial:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bootloaderValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->bootloaderValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", buildUser=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->buildUser:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", buildHost=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->buildHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", buildId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fingerprint=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isDualSim=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->isDualSim:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gaid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->gaid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
