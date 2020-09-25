.class public abstract Lo/getCard_reference;
.super Lo/setBgAssetId;
.source ""

# interfaces
.implements Lo/getIssuer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    .line 1
    invoke-direct {p0, v0}, Lo/setBgAssetId;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lo/getCard_reference;->onPostMessage()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lo/getCard_reference;->ICustomTabsCallback()V

    :goto_0
    return p2
.end method
