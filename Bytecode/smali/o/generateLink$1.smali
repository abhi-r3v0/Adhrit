.class final Lo/generateLink$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/generateLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/generateLink;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lo/generateLink$1;->extraCallback(Landroid/os/Parcel;)Lo/generateLink;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/os/Parcel;)Lo/generateLink;
    .locals 1

    .line 253
    new-instance v0, Lo/generateLink;

    invoke-direct {v0, p1}, Lo/generateLink;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lo/generateLink$1;->onMessageChannelReady(I)[Lo/generateLink;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(I)[Lo/generateLink;
    .locals 0

    .line 258
    new-array p1, p1, [Lo/generateLink;

    return-object p1
.end method
