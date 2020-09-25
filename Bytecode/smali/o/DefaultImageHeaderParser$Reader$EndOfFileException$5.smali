.class final Lo/DefaultImageHeaderParser$Reader$EndOfFileException$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultImageHeaderParser$Reader$EndOfFileException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/DefaultImageHeaderParser$Reader$EndOfFileException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)[Lo/DefaultImageHeaderParser$Reader$EndOfFileException;
    .locals 0

    .line 111
    new-array p1, p1, [Lo/DefaultImageHeaderParser$Reader$EndOfFileException;

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lo/DefaultImageHeaderParser$Reader$EndOfFileException$5;->extraCallback(Landroid/os/Parcel;)Lo/DefaultImageHeaderParser$Reader$EndOfFileException;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/os/Parcel;)Lo/DefaultImageHeaderParser$Reader$EndOfFileException;
    .locals 1

    .line 106
    new-instance v0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;

    invoke-direct {v0, p1}, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lo/DefaultImageHeaderParser$Reader$EndOfFileException$5;->ICustomTabsCallback(I)[Lo/DefaultImageHeaderParser$Reader$EndOfFileException;

    move-result-object p1

    return-object p1
.end method
