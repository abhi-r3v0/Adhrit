.class final Lo/Registry$NoImageHeaderParserException$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Registry$NoImageHeaderParserException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/Registry$NoImageHeaderParserException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Parcel;)Lo/Registry$NoImageHeaderParserException;
    .locals 1

    .line 73
    new-instance v0, Lo/Registry$NoImageHeaderParserException;

    invoke-direct {v0, p1}, Lo/Registry$NoImageHeaderParserException;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lo/Registry$NoImageHeaderParserException$4;->ICustomTabsCallback(Landroid/os/Parcel;)Lo/Registry$NoImageHeaderParserException;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lo/Registry$NoImageHeaderParserException$4;->onMessageChannelReady(I)[Lo/Registry$NoImageHeaderParserException;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(I)[Lo/Registry$NoImageHeaderParserException;
    .locals 0

    .line 78
    new-array p1, p1, [Lo/Registry$NoImageHeaderParserException;

    return-object p1
.end method
