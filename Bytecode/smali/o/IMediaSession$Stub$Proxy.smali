.class public final Lo/IMediaSession$Stub$Proxy;
.super Lo/previous;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/IMediaSession$Stub$Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public extraCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lo/IMediaSession$Stub$Proxy$4;

    invoke-direct {v0}, Lo/IMediaSession$Stub$Proxy$4;-><init>()V

    sput-object v0, Lo/IMediaSession$Stub$Proxy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lo/previous;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lo/previous;-><init>()V

    .line 53
    iput-boolean p1, p0, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 98
    iget-boolean p2, p0, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
