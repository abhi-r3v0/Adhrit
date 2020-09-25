.class public final Lo/generateLink;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/generateLink$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/generateLink$extraCallback;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/generateLink;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:I

.field private final extraCallback:[Lo/generateLink$extraCallback;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 248
    new-instance v0, Lo/generateLink$1;

    invoke-direct {v0}, Lo/generateLink$1;-><init>()V

    sput-object v0, Lo/generateLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    .line 143
    sget-object v0, Lo/generateLink$extraCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/generateLink$extraCallback;

    iput-object p1, p0, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    .line 144
    array-length p1, p1

    iput p1, p0, Lo/generateLink;->onPostMessage:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/generateLink$extraCallback;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lo/generateLink$extraCallback;

    .line 109
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lo/generateLink$extraCallback;

    invoke-direct {p0, p1, v0, p2}, Lo/generateLink;-><init>(Ljava/lang/String;Z[Lo/generateLink$extraCallback;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Lo/generateLink$extraCallback;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p3}, [Lo/generateLink$extraCallback;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lo/generateLink$extraCallback;

    .line 133
    :cond_0
    iput-object p3, p0, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    .line 134
    array-length p1, p3

    iput p1, p0, Lo/generateLink;->onPostMessage:I

    .line 137
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lo/generateLink$extraCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, p1, v0, p2}, Lo/generateLink;-><init>(Ljava/lang/String;Z[Lo/generateLink$extraCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/generateLink$extraCallback;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lo/generateLink$extraCallback;

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/generateLink$extraCallback;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lo/generateLink;-><init>(Ljava/lang/String;Z[Lo/generateLink$extraCallback;)V

    return-void
.end method

.method public static extraCallback(Lo/generateLink;Lo/generateLink;)Lo/generateLink;
    .locals 8

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 61
    iget-object v3, p0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    .line 62
    iget-object p0, p0, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    .line 63
    invoke-virtual {v6}, Lo/generateLink$extraCallback;->onPostMessage()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 64
    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :cond_2
    if-eqz p1, :cond_5

    if-nez v3, :cond_3

    .line 71
    iget-object p0, p1, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    move-object v3, p0

    .line 73
    :cond_3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    .line 74
    iget-object p1, p1, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    array-length v4, p1

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v5, p1, v1

    .line 75
    invoke-virtual {v5}, Lo/generateLink$extraCallback;->onPostMessage()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lo/generateLink$extraCallback;->onPostMessage(Lo/generateLink$extraCallback;)Ljava/util/UUID;

    move-result-object v6

    invoke-static {v0, p0, v6}, Lo/generateLink;->onNavigationEvent(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 76
    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v2

    :cond_6
    new-instance p0, Lo/generateLink;

    invoke-direct {p0, v3, v0}, Lo/generateLink;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method private static onNavigationEvent(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/generateLink$extraCallback;",
            ">;I",
            "Ljava/util/UUID;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 268
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/generateLink$extraCallback;

    invoke-static {v2}, Lo/generateLink$extraCallback;->onPostMessage(Lo/generateLink$extraCallback;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/generateLink$extraCallback;Lo/generateLink$extraCallback;)I
    .locals 2

    .line 231
    sget-object v0, Lo/$$c;->ICustomTabsCallback:Ljava/util/UUID;

    invoke-static {p1}, Lo/generateLink$extraCallback;->onPostMessage(Lo/generateLink$extraCallback;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lo/$$c;->ICustomTabsCallback:Ljava/util/UUID;

    invoke-static {p2}, Lo/generateLink$extraCallback;->onPostMessage(Lo/generateLink$extraCallback;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 232
    :cond_1
    invoke-static {p1}, Lo/generateLink$extraCallback;->onPostMessage(Lo/generateLink$extraCallback;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Lo/generateLink$extraCallback;->onPostMessage(Lo/generateLink$extraCallback;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    return p1
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lo/generateLink$extraCallback;

    check-cast p2, Lo/generateLink$extraCallback;

    invoke-virtual {p0, p1, p2}, Lo/generateLink;->ICustomTabsCallback(Lo/generateLink$extraCallback;Lo/generateLink$extraCallback;)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    check-cast p1, Lo/generateLink;

    .line 225
    iget-object v2, p0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    iget-object p1, p1, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    .line 226
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 208
    iget v0, p0, Lo/generateLink;->ICustomTabsCallback:I

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 210
    iget-object v1, p0, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    iput v0, p0, Lo/generateLink;->ICustomTabsCallback:I

    .line 213
    :cond_1
    iget v0, p0, Lo/generateLink;->ICustomTabsCallback:I

    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/generateLink;
    .locals 3

    .line 181
    iget-object v0, p0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 184
    :cond_0
    new-instance v0, Lo/generateLink;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    invoke-direct {v0, p1, v1, v2}, Lo/generateLink;-><init>(Ljava/lang/String;Z[Lo/generateLink$extraCallback;)V

    return-object v0
.end method

.method public final onPostMessage(I)Lo/generateLink$extraCallback;
    .locals 1

    .line 171
    iget-object v0, p0, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final onPostMessage(Lo/generateLink;)Lo/generateLink;
    .locals 2

    .line 196
    iget-object v0, p0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 199
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 196
    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 200
    iget-object v0, p0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    .line 201
    :goto_2
    iget-object v1, p0, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    iget-object p1, p1, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    .line 202
    invoke-static {v1, p1}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/generateLink$extraCallback;

    .line 203
    new-instance v1, Lo/generateLink;

    invoke-direct {v1, v0, p1}, Lo/generateLink;-><init>(Ljava/lang/String;[Lo/generateLink$extraCallback;)V

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 244
    iget-object p2, p0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lo/generateLink;->extraCallback:[Lo/generateLink$extraCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
