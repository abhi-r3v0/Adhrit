.class public Lcom/dreamplug/deviceattributes/models/InternalAttributes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field application:Lcom/dreamplug/deviceattributes/models/AppFingerprint;

.field carrier:Lcom/dreamplug/deviceattributes/CarrierFingerPrint;

.field device:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

.field location:Lcom/dreamplug/deviceattributes/LocationFingerPrint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/deviceattributes/DeviceFingerPrint;Lcom/dreamplug/deviceattributes/LocationFingerPrint;Lcom/dreamplug/deviceattributes/CarrierFingerPrint;Lcom/dreamplug/deviceattributes/models/AppFingerprint;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/InternalAttributes;->device:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    .line 21
    iput-object p2, p0, Lcom/dreamplug/deviceattributes/models/InternalAttributes;->location:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    .line 22
    iput-object p3, p0, Lcom/dreamplug/deviceattributes/models/InternalAttributes;->carrier:Lcom/dreamplug/deviceattributes/CarrierFingerPrint;

    .line 23
    iput-object p4, p0, Lcom/dreamplug/deviceattributes/models/InternalAttributes;->application:Lcom/dreamplug/deviceattributes/models/AppFingerprint;

    return-void
.end method
