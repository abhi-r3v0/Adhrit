.class public final Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;
.super Lo/pause;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:F

.field extraCallback:I

.field onMessageChannelReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1865
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady$4;

    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady$4;-><init>()V

    sput-object v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1847
    invoke-direct {p0, p1, p2}, Lo/pause;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->extraCallback:I

    .line 1849
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->ICustomTabsCallback:F

    .line 1850
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->onMessageChannelReady:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1854
    invoke-direct {p0, p1}, Lo/pause;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1859
    invoke-super {p0, p1, p2}, Lo/pause;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1860
    iget p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    iget p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->ICustomTabsCallback:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1862
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->onMessageChannelReady:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
