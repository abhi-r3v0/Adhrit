.class final Lo/Registry$NoResultEncoderAvailableException$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Registry$NoResultEncoderAvailableException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/Registry$NoResultEncoderAvailableException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lo/Registry$NoResultEncoderAvailableException$4;->extraCallback(Landroid/os/Parcel;)Lo/Registry$NoResultEncoderAvailableException;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/os/Parcel;)Lo/Registry$NoResultEncoderAvailableException;
    .locals 1

    .line 117
    new-instance v0, Lo/Registry$NoResultEncoderAvailableException;

    invoke-direct {v0, p1}, Lo/Registry$NoResultEncoderAvailableException;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lo/Registry$NoResultEncoderAvailableException$4;->onPostMessage(I)[Lo/Registry$NoResultEncoderAvailableException;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(I)[Lo/Registry$NoResultEncoderAvailableException;
    .locals 0

    .line 122
    new-array p1, p1, [Lo/Registry$NoResultEncoderAvailableException;

    return-object p1
.end method
