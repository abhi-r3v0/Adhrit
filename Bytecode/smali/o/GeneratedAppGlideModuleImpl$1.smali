.class final Lo/GeneratedAppGlideModuleImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GeneratedAppGlideModuleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/GeneratedAppGlideModuleImpl;",
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
.method public final ICustomTabsCallback(Landroid/os/Parcel;)Lo/GeneratedAppGlideModuleImpl;
    .locals 1

    .line 89
    new-instance v0, Lo/GeneratedAppGlideModuleImpl;

    invoke-direct {v0, p1}, Lo/GeneratedAppGlideModuleImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lo/GeneratedAppGlideModuleImpl$1;->ICustomTabsCallback(Landroid/os/Parcel;)Lo/GeneratedAppGlideModuleImpl;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lo/GeneratedAppGlideModuleImpl$1;->onPostMessage(I)[Lo/GeneratedAppGlideModuleImpl;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(I)[Lo/GeneratedAppGlideModuleImpl;
    .locals 0

    .line 94
    new-array p1, p1, [Lo/GeneratedAppGlideModuleImpl;

    return-object p1
.end method
