.class final Lo/GlideException$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GlideException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/GlideException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lo/GlideException$5;->onNavigationEvent(Landroid/os/Parcel;)Lo/GlideException;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lo/GlideException$5;->onNavigationEvent(I)[Lo/GlideException;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/os/Parcel;)Lo/GlideException;
    .locals 1

    .line 89
    new-instance v0, Lo/GlideException;

    invoke-direct {v0, p1}, Lo/GlideException;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final onNavigationEvent(I)[Lo/GlideException;
    .locals 0

    .line 94
    new-array p1, p1, [Lo/GlideException;

    return-object p1
.end method
