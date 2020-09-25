.class public abstract Lo/getLogoUrl;
.super Lo/getTransformToApply;
.source ""

# interfaces
.implements Lo/getBackgroundImage;


# direct methods
.method public static onPostMessage(Landroid/os/IBinder;)Lo/getBackgroundImage;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    .line 3
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lo/getBackgroundImage;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lo/getBackgroundImage;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lo/getParentCategory;

    invoke-direct {v0, p0}, Lo/getParentCategory;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
