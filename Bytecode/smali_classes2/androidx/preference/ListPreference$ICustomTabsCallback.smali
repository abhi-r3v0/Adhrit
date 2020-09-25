.class Landroidx/preference/ListPreference$ICustomTabsCallback;
.super Landroidx/preference/Preference$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/ListPreference;
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
            "Landroidx/preference/ListPreference$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 307
    new-instance v0, Landroidx/preference/ListPreference$ICustomTabsCallback$3;

    invoke-direct {v0}, Landroidx/preference/ListPreference$ICustomTabsCallback$3;-><init>()V

    sput-object v0, Landroidx/preference/ListPreference$ICustomTabsCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Landroidx/preference/Preference$onNavigationEvent;-><init>(Landroid/os/Parcel;)V

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/ListPreference$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Landroidx/preference/Preference$onNavigationEvent;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 299
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$onNavigationEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    iget-object p2, p0, Landroidx/preference/ListPreference$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
