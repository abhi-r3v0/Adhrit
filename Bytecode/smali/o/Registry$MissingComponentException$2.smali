.class final Lo/Registry$MissingComponentException$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Registry$MissingComponentException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/Registry$MissingComponentException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Parcel;)Lo/Registry$MissingComponentException;
    .locals 1

    .line 98
    new-instance v0, Lo/Registry$MissingComponentException;

    invoke-direct {v0, p1}, Lo/Registry$MissingComponentException;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lo/Registry$MissingComponentException$2;->ICustomTabsCallback(Landroid/os/Parcel;)Lo/Registry$MissingComponentException;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lo/Registry$MissingComponentException$2;->onNavigationEvent(I)[Lo/Registry$MissingComponentException;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(I)[Lo/Registry$MissingComponentException;
    .locals 0

    .line 103
    new-array p1, p1, [Lo/Registry$MissingComponentException;

    return-object p1
.end method
