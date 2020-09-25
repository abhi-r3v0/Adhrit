.class final Lo/parseApp$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/parseApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/parseApp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lo/parseApp$3;->createFromParcel(Landroid/os/Parcel;)Lo/parseApp;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lo/parseApp;
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lo/parseApp;

    invoke-direct {v0, p1}, Lo/parseApp;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lo/parseApp$3;->newArray(I)[Lo/parseApp;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lo/parseApp;
    .locals 0

    .line 4
    new-array p1, p1, [Lo/parseApp;

    return-object p1
.end method
