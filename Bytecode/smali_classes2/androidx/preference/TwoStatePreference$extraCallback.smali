.class Landroidx/preference/TwoStatePreference$extraCallback;
.super Landroidx/preference/Preference$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/TwoStatePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/preference/TwoStatePreference$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 284
    new-instance v0, Landroidx/preference/TwoStatePreference$extraCallback$5;

    invoke-direct {v0}, Landroidx/preference/TwoStatePreference$extraCallback$5;-><init>()V

    sput-object v0, Landroidx/preference/TwoStatePreference$extraCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 270
    invoke-direct {p0, p1}, Landroidx/preference/Preference$onNavigationEvent;-><init>(Landroid/os/Parcel;)V

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/preference/TwoStatePreference$extraCallback;->ICustomTabsCallback:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Landroidx/preference/Preference$onNavigationEvent;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 276
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$onNavigationEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 277
    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference$extraCallback;->ICustomTabsCallback:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
