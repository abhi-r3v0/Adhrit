.class final Lo/hasAlpha$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/hasAlpha;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)[Lo/hasAlpha;
    .locals 0

    .line 107
    new-array p1, p1, [Lo/hasAlpha;

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lo/hasAlpha$5;->onPostMessage(Landroid/os/Parcel;)Lo/hasAlpha;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lo/hasAlpha$5;->ICustomTabsCallback(I)[Lo/hasAlpha;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Landroid/os/Parcel;)Lo/hasAlpha;
    .locals 1

    .line 102
    new-instance v0, Lo/hasAlpha;

    invoke-direct {v0, p1}, Lo/hasAlpha;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
