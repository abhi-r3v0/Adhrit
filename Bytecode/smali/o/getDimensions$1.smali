.class final Lo/getDimensions$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDimensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/getDimensions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Parcel;)Lo/getDimensions;
    .locals 2

    .line 260
    new-instance v0, Lo/getDimensions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/getDimensions;-><init>(Landroid/os/Parcel;Lo/getDimensions$1;)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lo/getDimensions$1;->ICustomTabsCallback(Landroid/os/Parcel;)Lo/getDimensions;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lo/getDimensions$1;->onMessageChannelReady(I)[Lo/getDimensions;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(I)[Lo/getDimensions;
    .locals 0

    .line 265
    new-array p1, p1, [Lo/getDimensions;

    return-object p1
.end method
