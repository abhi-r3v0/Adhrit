.class public final Lo/getDimensions;
.super Lo/round;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDimensions$ICustomTabsCallback;,
        Lo/getDimensions$extraCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getDimensions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getDimensions$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    new-instance v0, Lo/getDimensions$1;

    invoke-direct {v0}, Lo/getDimensions$1;-><init>()V

    sput-object v0, Lo/getDimensions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 226
    invoke-direct {p0}, Lo/round;-><init>()V

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 230
    invoke-static {p1}, Lo/getDimensions$extraCallback;->onPostMessage(Landroid/os/Parcel;)Lo/getDimensions$extraCallback;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/getDimensions;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lo/getDimensions$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/getDimensions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getDimensions$extraCallback;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lo/round;-><init>()V

    .line 223
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/getDimensions;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method static ICustomTabsCallback(Lo/DreamAppGlideModule;)Lo/getDimensions;
    .locals 4

    .line 236
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 239
    invoke-static {p0}, Lo/getDimensions$extraCallback;->onNavigationEvent(Lo/DreamAppGlideModule;)Lo/getDimensions$extraCallback;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_0
    new-instance p0, Lo/getDimensions;

    invoke-direct {p0, v1}, Lo/getDimensions;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 248
    iget-object p2, p0, Lo/getDimensions;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 249
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 251
    iget-object v1, p0, Lo/getDimensions;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getDimensions$extraCallback;

    invoke-static {v1, p1}, Lo/getDimensions$extraCallback;->onNavigationEvent(Lo/getDimensions$extraCallback;Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
