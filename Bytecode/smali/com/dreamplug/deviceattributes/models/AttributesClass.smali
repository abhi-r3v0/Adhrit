.class public Lcom/dreamplug/deviceattributes/models/AttributesClass;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private application:Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "application"
    .end annotation
.end field

.field private auxiliaryAttributes:Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "auxiliary_attributes"
    .end annotation
.end field

.field private device:Lcom/dreamplug/deviceattributes/models/Device;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "device"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/deviceattributes/models/Device;Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/AttributesClass;->device:Lcom/dreamplug/deviceattributes/models/Device;

    .line 23
    iput-object p2, p0, Lcom/dreamplug/deviceattributes/models/AttributesClass;->application:Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;

    .line 24
    iput-object p3, p0, Lcom/dreamplug/deviceattributes/models/AttributesClass;->auxiliaryAttributes:Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;

    return-void
.end method


# virtual methods
.method public getApplication()Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/AttributesClass;->application:Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;

    return-object v0
.end method

.method public getAuxiliaryAttributes()Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/AttributesClass;->auxiliaryAttributes:Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;

    return-object v0
.end method

.method public getDevice()Lcom/dreamplug/deviceattributes/models/Device;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/AttributesClass;->device:Lcom/dreamplug/deviceattributes/models/Device;

    return-object v0
.end method

.method public setApplication(Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/AttributesClass;->application:Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;

    return-void
.end method

.method public setAuxiliaryAttributes(Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/AttributesClass;->auxiliaryAttributes:Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;

    return-void
.end method

.method public setDevice(Lcom/dreamplug/deviceattributes/models/Device;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/AttributesClass;->device:Lcom/dreamplug/deviceattributes/models/Device;

    return-void
.end method
