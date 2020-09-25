.class public Lcom/dreamplug/deviceattributes/CarrierFingerPrint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public carrierName:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "name"
    .end annotation
.end field

.field transient connectivityManager:Landroid/net/ConnectivityManager;

.field transient fpDataReady:Lo/setArguments;

.field isoCountryCode:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "iso_country_code"
    .end annotation
.end field

.field mobileCountryCode:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "mobile_country_code"
    .end annotation
.end field

.field mobileNetworkCode:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "mobile_network_code"
    .end annotation
.end field

.field public networkType:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "network_type"
    .end annotation
.end field

.field transient ti:Lo/requireArguments;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setArguments;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lo/requireArguments;

    invoke-direct {v0, p1}, Lo/requireArguments;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->ti:Lo/requireArguments;

    const-string v0, "connectivity"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 33
    iput-object p2, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->fpDataReady:Lo/setArguments;

    return-void
.end method

.method private getNetworkClass()Ljava/lang/String;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->connectivityManager:Landroid/net/ConnectivityManager;

    const-string v2, "Unknown"

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v0, "WiFi"

    return-object v0

    :cond_0
    if-nez v1, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->ti:Lo/requireArguments;

    .line 1162
    iget-object v0, v0, Lo/requireArguments;->extraCallback:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->carrierName:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->ti:Lo/requireArguments;

    .line 1166
    iget-object v0, v0, Lo/requireArguments;->asInterface:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->isoCountryCode:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->ti:Lo/requireArguments;

    .line 1170
    iget-object v0, v0, Lo/requireArguments;->onRelationshipValidationResult:Ljava/lang/String;

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->mobileCountryCode:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->mobileNetworkCode:Ljava/lang/String;

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->getNetworkClass()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->networkType:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->fpDataReady:Lo/setArguments;

    invoke-interface {v0}, Lo/setArguments;->onNavigationEvent()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarrierFingerPrint{carrierName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->carrierName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mobileCountryCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->mobileCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mobileNetworkCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->mobileNetworkCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isoCountryCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->isoCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", networkType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
