.class final Lo/getCustomActions$asInterface$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions$asInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lo/getCustomActions$asInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 3415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lo/getCustomActions$asInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/getCustomActions$asInterface;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :cond_0
    new-instance v0, Lo/getCustomActions$asInterface;

    invoke-direct {v0, p1}, Lo/getCustomActions$asInterface;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2

    .line 1415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lo/getCustomActions$asInterface;

    invoke-direct {v0, p1, p2}, Lo/getCustomActions$asInterface;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :cond_0
    new-instance p2, Lo/getCustomActions$asInterface;

    invoke-direct {p2, p1}, Lo/getCustomActions$asInterface;-><init>(Landroid/os/Parcel;)V

    return-object p2
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1427
    new-array p1, p1, [Lo/getCustomActions$asInterface;

    return-object p1
.end method
