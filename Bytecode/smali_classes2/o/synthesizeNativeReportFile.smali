.class final Lo/synthesizeNativeReportFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/synthesizeReportFile;",
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
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 6
    new-instance v0, Lo/synthesizeReportFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/synthesizeReportFile;-><init>(Landroid/os/Parcel;Lo/synthesizeNativeReportFile;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3
    new-array p1, p1, [Lo/synthesizeReportFile;

    return-object p1
.end method
