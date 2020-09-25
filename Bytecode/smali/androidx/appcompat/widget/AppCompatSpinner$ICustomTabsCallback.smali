.class Landroidx/appcompat/widget/AppCompatSpinner$ICustomTabsCallback;
.super Landroid/view/View$BaseSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/widget/AppCompatSpinner$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 671
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$ICustomTabsCallback$3;

    invoke-direct {v0}, Landroidx/appcompat/widget/AppCompatSpinner$ICustomTabsCallback$3;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatSpinner$ICustomTabsCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 661
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$ICustomTabsCallback;->onPostMessage:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 657
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 667
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 668
    iget-boolean p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$ICustomTabsCallback;->onPostMessage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
