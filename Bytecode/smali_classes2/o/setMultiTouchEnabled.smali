.class public final Lo/setMultiTouchEnabled;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/setMaxCropResultSize;


# direct methods
.method public static onNavigationEvent(Landroid/os/IBinder;)Lo/setMaxCropResultSize;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/setMaxCropResultSize;

    if-eqz v1, :cond_1

    check-cast v0, Lo/setMaxCropResultSize;

    return-object v0

    :cond_1
    new-instance v0, Lo/setRotatedDegrees;

    invoke-direct {v0, p0}, Lo/setRotatedDegrees;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
