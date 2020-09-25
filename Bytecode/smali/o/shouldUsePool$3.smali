.class final Lo/shouldUsePool$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldUsePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/shouldUsePool;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Parcel;)Lo/shouldUsePool;
    .locals 0

    .line 37
    new-instance p1, Lo/shouldUsePool;

    invoke-direct {p1}, Lo/shouldUsePool;-><init>()V

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lo/shouldUsePool$3;->ICustomTabsCallback(Landroid/os/Parcel;)Lo/shouldUsePool;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lo/shouldUsePool$3;->onPostMessage(I)[Lo/shouldUsePool;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(I)[Lo/shouldUsePool;
    .locals 0

    .line 42
    new-array p1, p1, [Lo/shouldUsePool;

    return-object p1
.end method
