.class public final Lo/isStateSaved;
.super Ljava/lang/Object;

# interfaces
.implements Lo/addLifecycleEventListener;


# instance fields
.field private final onMessageChannelReady:Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;


# direct methods
.method public constructor <init>(Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isStateSaved;->onMessageChannelReady:Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lo/isStateSaved;->onMessageChannelReady:Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;

    check-cast p1, Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 1043
    iget-object v1, v0, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;->onPostMessage:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->latitude:D

    .line 1044
    iget-object v1, v0, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;->onPostMessage:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->longitude:D

    .line 1045
    iget-object v1, v0, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;->onPostMessage:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-static {v1, p1}, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->access$302(Lcom/dreamplug/deviceattributes/LocationFingerPrint;F)F

    .line 1046
    iget-object p1, v0, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;->onPostMessage:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-static {p1}, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->access$000(Lcom/dreamplug/deviceattributes/LocationFingerPrint;)Lo/setArguments;

    move-result-object p1

    invoke-interface {p1}, Lo/setArguments;->onNavigationEvent()V

    :cond_0
    return-void
.end method
