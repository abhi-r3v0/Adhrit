.class public Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private attributes:Lcom/dreamplug/deviceattributes/models/InternalAttributes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "attributes"
    .end annotation
.end field

.field private versionNumber:Ljava/lang/Integer;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "version_number"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/dreamplug/deviceattributes/models/InternalAttributes;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;->versionNumber:Ljava/lang/Integer;

    .line 17
    iput-object p2, p0, Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;->attributes:Lcom/dreamplug/deviceattributes/models/InternalAttributes;

    return-void
.end method


# virtual methods
.method public getAttributes()Lcom/dreamplug/deviceattributes/models/InternalAttributes;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;->attributes:Lcom/dreamplug/deviceattributes/models/InternalAttributes;

    return-object v0
.end method

.method public getVersionNumber()Ljava/lang/Integer;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;->versionNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAttributes(Lcom/dreamplug/deviceattributes/models/InternalAttributes;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;->attributes:Lcom/dreamplug/deviceattributes/models/InternalAttributes;

    return-void
.end method

.method public setVersionNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;->versionNumber:Ljava/lang/Integer;

    return-void
.end method
