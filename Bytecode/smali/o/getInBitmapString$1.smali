.class final Lo/getInBitmapString$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInBitmapString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/getInBitmapString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Parcel;)Lo/getInBitmapString;
    .locals 1

    .line 125
    new-instance v0, Lo/getInBitmapString;

    invoke-direct {v0, p1}, Lo/getInBitmapString;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lo/getInBitmapString$1;->ICustomTabsCallback(Landroid/os/Parcel;)Lo/getInBitmapString;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(I)[Lo/getInBitmapString;
    .locals 0

    .line 130
    new-array p1, p1, [Lo/getInBitmapString;

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lo/getInBitmapString$1;->extraCallback(I)[Lo/getInBitmapString;

    move-result-object p1

    return-object p1
.end method
