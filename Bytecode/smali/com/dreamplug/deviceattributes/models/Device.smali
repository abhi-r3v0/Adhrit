.class public Lcom/dreamplug/deviceattributes/models/Device;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private identifier:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "identifier"
    .end annotation
.end field

.field private operatingSystem:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "operating_system"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/Device;->identifier:Ljava/lang/String;

    const-string p1, "Mobile"

    .line 19
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/Device;->type:Ljava/lang/String;

    const-string p1, "Android"

    .line 20
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/Device;->operatingSystem:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/Device;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatingSystem()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/Device;->operatingSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/Device;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/Device;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setOperatingSystem(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/Device;->operatingSystem:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/Device;->type:Ljava/lang/String;

    return-void
.end method
