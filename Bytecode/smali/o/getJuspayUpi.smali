.class public final Lo/getJuspayUpi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getJuspayUpi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:I

.field private final onMessageChannelReady:[Lo/p$a;

.field private onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Lo/getJuspayUpi$4;

    invoke-direct {v0}, Lo/getJuspayUpi$4;-><init>()V

    sput-object v0, Lo/getJuspayUpi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    .line 58
    new-array v0, v0, [Lo/p$a;

    iput-object v0, p0, Lo/getJuspayUpi;->onMessageChannelReady:[Lo/p$a;

    const/4 v0, 0x0

    .line 59
    :goto_0
    iget v1, p0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lo/getJuspayUpi;->onMessageChannelReady:[Lo/p$a;

    const-class v2, Lo/p$a;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lo/p$a;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lo/p$a;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 52
    iput-object p1, p0, Lo/getJuspayUpi;->onMessageChannelReady:[Lo/p$a;

    .line 53
    array-length p1, p1

    iput p1, p0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/p$a;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/getJuspayUpi;->onMessageChannelReady:[Lo/p$a;

    aget-object p1, v0, p1

    return-object p1
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

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    check-cast p1, Lo/getJuspayUpi;

    .line 111
    iget v2, p0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    iget v3, p1, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/getJuspayUpi;->onMessageChannelReady:[Lo/p$a;

    iget-object p1, p1, Lo/getJuspayUpi;->onMessageChannelReady:[Lo/p$a;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 94
    iget v0, p0, Lo/getJuspayUpi;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lo/getJuspayUpi;->onMessageChannelReady:[Lo/p$a;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 97
    iput v0, p0, Lo/getJuspayUpi;->onNavigationEvent:I

    .line 99
    :cond_0
    iget v0, p0, Lo/getJuspayUpi;->onNavigationEvent:I

    return v0
.end method

.method public final onMessageChannelReady(Lo/p$a;)I
    .locals 3

    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v1, p0, Lo/getJuspayUpi;->onMessageChannelReady:[Lo/p$a;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 85
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 123
    iget p2, p0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 124
    :goto_0
    iget v1, p0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lo/getJuspayUpi;->onMessageChannelReady:[Lo/p$a;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
