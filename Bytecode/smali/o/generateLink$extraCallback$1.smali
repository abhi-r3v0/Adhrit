.class final Lo/generateLink$extraCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/generateLink$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/generateLink$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lo/generateLink$extraCallback$1;->extraCallback(Landroid/os/Parcel;)Lo/generateLink$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/os/Parcel;)Lo/generateLink$extraCallback;
    .locals 1

    .line 437
    new-instance v0, Lo/generateLink$extraCallback;

    invoke-direct {v0, p1}, Lo/generateLink$extraCallback;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lo/generateLink$extraCallback$1;->onNavigationEvent(I)[Lo/generateLink$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(I)[Lo/generateLink$extraCallback;
    .locals 0

    .line 442
    new-array p1, p1, [Lo/generateLink$extraCallback;

    return-object p1
.end method
