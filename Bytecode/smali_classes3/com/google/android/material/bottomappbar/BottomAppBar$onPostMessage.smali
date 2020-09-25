.class final Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;
.super Lo/pause;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:I

.field onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1027
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage$3;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage$3;-><init>()V

    sput-object v0, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1015
    invoke-direct {p0, p1, p2}, Lo/pause;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1016
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;->ICustomTabsCallback:I

    .line 1017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;->onNavigationEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1011
    invoke-direct {p0, p1}, Lo/pause;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1022
    invoke-super {p0, p1, p2}, Lo/pause;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1023
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;->ICustomTabsCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$onPostMessage;->onNavigationEvent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
