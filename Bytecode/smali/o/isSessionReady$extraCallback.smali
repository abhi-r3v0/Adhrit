.class public final Lo/isSessionReady$extraCallback;
.super Lo/pause;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isSessionReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/isSessionReady$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:I

.field extraCallback:I

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2124
    new-instance v0, Lo/isSessionReady$extraCallback$3;

    invoke-direct {v0}, Lo/isSessionReady$extraCallback$3;-><init>()V

    sput-object v0, Lo/isSessionReady$extraCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 2102
    invoke-direct {p0, p1, p2}, Lo/pause;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    const/4 p2, 0x0

    .line 2095
    iput p2, p0, Lo/isSessionReady$extraCallback;->onMessageChannelReady:I

    .line 2103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lo/isSessionReady$extraCallback;->onMessageChannelReady:I

    .line 2104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lo/isSessionReady$extraCallback;->onNavigationEvent:I

    .line 2105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lo/isSessionReady$extraCallback;->extraCallback:I

    .line 2106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lo/isSessionReady$extraCallback;->onPostMessage:I

    .line 2107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/isSessionReady$extraCallback;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2111
    invoke-direct {p0, p1}, Lo/pause;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 2095
    iput p1, p0, Lo/isSessionReady$extraCallback;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2116
    invoke-super {p0, p1, p2}, Lo/pause;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2117
    iget p2, p0, Lo/isSessionReady$extraCallback;->onMessageChannelReady:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    iget p2, p0, Lo/isSessionReady$extraCallback;->onNavigationEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    iget p2, p0, Lo/isSessionReady$extraCallback;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    iget p2, p0, Lo/isSessionReady$extraCallback;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    iget p2, p0, Lo/isSessionReady$extraCallback;->ICustomTabsCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
