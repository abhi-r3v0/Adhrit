.class final Lo/JuspaySessionToken$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JuspaySessionToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/JuspaySessionToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)[Lo/JuspaySessionToken;
    .locals 0

    .line 138
    new-array p1, p1, [Lo/JuspaySessionToken;

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lo/JuspaySessionToken$3;->onPostMessage(Landroid/os/Parcel;)Lo/JuspaySessionToken;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lo/JuspaySessionToken$3;->ICustomTabsCallback(I)[Lo/JuspaySessionToken;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Landroid/os/Parcel;)Lo/JuspaySessionToken;
    .locals 1

    .line 133
    new-instance v0, Lo/JuspaySessionToken;

    invoke-direct {v0, p1}, Lo/JuspaySessionToken;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
