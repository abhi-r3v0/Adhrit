.class Landroidx/preference/PreferenceGroup$onPostMessage;
.super Landroidx/preference/Preference$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceGroup;
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
            "Landroidx/preference/PreferenceGroup$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 578
    new-instance v0, Landroidx/preference/PreferenceGroup$onPostMessage$3;

    invoke-direct {v0}, Landroidx/preference/PreferenceGroup$onPostMessage$3;-><init>()V

    sput-object v0, Landroidx/preference/PreferenceGroup$onPostMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 563
    invoke-direct {p0, p1}, Landroidx/preference/Preference$onNavigationEvent;-><init>(Landroid/os/Parcel;)V

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/preference/PreferenceGroup$onPostMessage;->onPostMessage:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .line 568
    invoke-direct {p0, p1}, Landroidx/preference/Preference$onNavigationEvent;-><init>(Landroid/os/Parcelable;)V

    .line 569
    iput p2, p0, Landroidx/preference/PreferenceGroup$onPostMessage;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 574
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$onNavigationEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 575
    iget p2, p0, Landroidx/preference/PreferenceGroup$onPostMessage;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
