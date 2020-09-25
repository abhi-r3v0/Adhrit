.class final Lo/getAndroidUri;
.super Lo/zzatm;


# instance fields
.field private final onNavigationEvent:Lo/getPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPaymentMethod<",
            "Lo/preferLastSpan$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final onMessageChannelReady(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lo/getAndroidUri;->onNavigationEvent:Lo/getPaymentMethod;

    new-instance v1, Lo/getIosUri;

    invoke-direct {v1, p0, p1}, Lo/getIosUri;-><init>(Lo/getAndroidUri;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lo/getPaymentMethod;->extraCallback(Lo/getPaymentMethod$onMessageChannelReady;)V

    return-void
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lo/getAndroidUri;->onNavigationEvent:Lo/getPaymentMethod;

    new-instance v1, Lo/setIosUri;

    invoke-direct {v1, p0, p1}, Lo/setIosUri;-><init>(Lo/getAndroidUri;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lo/getPaymentMethod;->extraCallback(Lo/getPaymentMethod$onMessageChannelReady;)V

    return-void
.end method
