.class Landroidx/preference/MultiSelectListPreference$extraCallback;
.super Landroidx/preference/Preference$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/MultiSelectListPreference;
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
            "Landroidx/preference/MultiSelectListPreference$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field onNavigationEvent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 264
    new-instance v0, Landroidx/preference/MultiSelectListPreference$extraCallback$3;

    invoke-direct {v0}, Landroidx/preference/MultiSelectListPreference$extraCallback$3;-><init>()V

    sput-object v0, Landroidx/preference/MultiSelectListPreference$extraCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 244
    invoke-direct {p0, p1}, Landroidx/preference/Preference$onNavigationEvent;-><init>(Landroid/os/Parcel;)V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/preference/MultiSelectListPreference$extraCallback;->onNavigationEvent:Ljava/util/Set;

    .line 247
    new-array v0, v0, [Ljava/lang/String;

    .line 248
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Landroidx/preference/MultiSelectListPreference$extraCallback;->onNavigationEvent:Ljava/util/Set;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Landroidx/preference/Preference$onNavigationEvent;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 259
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$onNavigationEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 260
    iget-object p2, p0, Landroidx/preference/MultiSelectListPreference$extraCallback;->onNavigationEvent:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object p2, p0, Landroidx/preference/MultiSelectListPreference$extraCallback;->onNavigationEvent:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
