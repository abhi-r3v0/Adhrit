.class final Lo/getInfoKey$ICustomTabsService$Stub$Proxy$1;
.super Lo/addIndentation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey$ICustomTabsService$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/addIndentation<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 952
    invoke-direct {p0}, Lo/addIndentation;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1956
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostMessage(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 0

    .line 952
    check-cast p1, Landroid/os/IBinder;

    .line 1961
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
