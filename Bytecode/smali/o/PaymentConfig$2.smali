.class final Lo/PaymentConfig$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PaymentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/PaymentConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Parcel;)Lo/PaymentConfig;
    .locals 1

    .line 232
    new-instance v0, Lo/PaymentConfig;

    invoke-direct {v0, p1}, Lo/PaymentConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lo/PaymentConfig$2;->ICustomTabsCallback(Landroid/os/Parcel;)Lo/PaymentConfig;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(I)[Lo/PaymentConfig;
    .locals 0

    .line 237
    new-array p1, p1, [Lo/PaymentConfig;

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lo/PaymentConfig$2;->extraCallback(I)[Lo/PaymentConfig;

    move-result-object p1

    return-object p1
.end method
