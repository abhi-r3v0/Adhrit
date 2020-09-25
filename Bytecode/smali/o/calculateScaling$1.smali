.class final Lo/calculateScaling$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/calculateScaling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/calculateScaling;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lo/calculateScaling$1;->onPostMessage(Landroid/os/Parcel;)Lo/calculateScaling;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lo/calculateScaling$1;->onPostMessage(I)[Lo/calculateScaling;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Landroid/os/Parcel;)Lo/calculateScaling;
    .locals 1

    .line 86
    new-instance v0, Lo/calculateScaling;

    invoke-direct {v0, p1}, Lo/calculateScaling;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final onPostMessage(I)[Lo/calculateScaling;
    .locals 0

    .line 91
    new-array p1, p1, [Lo/calculateScaling;

    return-object p1
.end method
