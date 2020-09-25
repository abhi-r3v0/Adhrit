.class final Lo/p$a$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/p$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)[Lo/p$a;
    .locals 0

    .line 1628
    new-array p1, p1, [Lo/p$a;

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1619
    invoke-virtual {p0, p1}, Lo/p$a$3;->onMessageChannelReady(Landroid/os/Parcel;)Lo/p$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1619
    invoke-virtual {p0, p1}, Lo/p$a$3;->ICustomTabsCallback(I)[Lo/p$a;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/os/Parcel;)Lo/p$a;
    .locals 1

    .line 1623
    new-instance v0, Lo/p$a;

    invoke-direct {v0, p1}, Lo/p$a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
