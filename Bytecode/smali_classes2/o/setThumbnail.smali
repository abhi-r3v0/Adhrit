.class final Lo/setThumbnail;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getPaymentMethod$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getPaymentMethod$onMessageChannelReady<",
        "Lo/onPostMessage$extraCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Landroid/location/Location;


# direct methods
.method constructor <init>(Lo/FragmentType;Landroid/location/Location;)V
    .locals 0

    iput-object p2, p0, Lo/setThumbnail;->onNavigationEvent:Landroid/location/Location;

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

    check-cast p1, Lo/onPostMessage$extraCallback;

    iget-object v0, p0, Lo/setThumbnail;->onNavigationEvent:Landroid/location/Location;

    invoke-interface {p1, v0}, Lo/onPostMessage$extraCallback;->onPostMessage(Landroid/location/Location;)V

    return-void
.end method
