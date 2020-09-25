.class public final Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;
.super Lo/pause;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:Z

.field extraCallback:Z

.field onMessageChannelReady:Z

.field onNavigationEvent:I

.field final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1448
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent$4;

    invoke-direct {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent$4;-><init>()V

    sput-object v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 1406
    invoke-direct {p0, p1, p2}, Lo/pause;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onPostMessage:I

    .line 1409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onNavigationEvent:I

    .line 1410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->ICustomTabsCallback:Z

    .line 1411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->extraCallback:Z

    .line 1412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onMessageChannelReady:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 1416
    invoke-direct {p0, p1}, Lo/pause;-><init>(Landroid/os/Parcelable;)V

    .line 1417
    iget p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onPostMessage:I

    .line 2075
    iget p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent:I

    .line 1418
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onNavigationEvent:I

    .line 3075
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    .line 1419
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->ICustomTabsCallback:Z

    .line 1420
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->extraCallback:Z

    .line 4075
    iget-boolean p1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 1421
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1440
    invoke-super {p0, p1, p2}, Lo/pause;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1441
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onNavigationEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->ICustomTabsCallback:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1444
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->extraCallback:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onNavigationEvent;->onMessageChannelReady:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
