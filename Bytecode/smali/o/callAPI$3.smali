.class final Lo/callAPI$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/callAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/callAPI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Parcel;)Lo/callAPI;
    .locals 1

    .line 167
    new-instance v0, Lo/callAPI;

    invoke-direct {v0, p1}, Lo/callAPI;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final ICustomTabsCallback(I)[Lo/callAPI;
    .locals 0

    .line 172
    new-array p1, p1, [Lo/callAPI;

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lo/callAPI$3;->ICustomTabsCallback(Landroid/os/Parcel;)Lo/callAPI;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lo/callAPI$3;->ICustomTabsCallback(I)[Lo/callAPI;

    move-result-object p1

    return-object p1
.end method
