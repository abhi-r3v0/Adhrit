.class final Lo/getInfoKey$AudioAttributesImplBaseParcelizer$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey$AudioAttributesImplBaseParcelizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/getInfoKey$AudioAttributesImplBaseParcelizer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 736
    invoke-direct {p0}, Lo/getInfoKey$AudioAttributesImplBaseParcelizer$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2740
    new-instance v0, Lo/getInfoKey$AudioAttributesImplBaseParcelizer;

    invoke-direct {v0, p1}, Lo/getInfoKey$AudioAttributesImplBaseParcelizer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1745
    new-array p1, p1, [Lo/getInfoKey$AudioAttributesImplBaseParcelizer;

    return-object p1
.end method
