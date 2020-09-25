.class final Lo/setIosUri;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getPaymentMethod$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getPaymentMethod$onMessageChannelReady<",
        "Lo/preferLastSpan$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lcom/google/android/gms/location/LocationResult;


# direct methods
.method constructor <init>(Lo/getAndroidUri;Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    iput-object p2, p0, Lo/setIosUri;->onMessageChannelReady:Lcom/google/android/gms/location/LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lo/preferLastSpan$onPostMessage;

    iget-object v0, p0, Lo/setIosUri;->onMessageChannelReady:Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {p1, v0}, Lo/preferLastSpan$onPostMessage;->extraCallback(Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method
