.class public final Lo/setEndIconDrawable;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setEndIconDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:[B

.field private extraCallback:I

.field private onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ExpandableBehavior;

    invoke-direct {v0}, Lo/ExpandableBehavior;-><init>()V

    sput-object v0, Lo/setEndIconDrawable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/setEndIconDrawable;->onNavigationEvent:Ljava/lang/String;

    iput-object p2, p0, Lo/setEndIconDrawable;->ICustomTabsCallback:[B

    iput p3, p0, Lo/setEndIconDrawable;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget-object v1, p0, Lo/setEndIconDrawable;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/setEndIconDrawable;->ICustomTabsCallback:[B

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;I[BZ)V

    iget p2, p0, Lo/setEndIconDrawable;->extraCallback:I

    const/4 v1, 0x4

    .line 2039
    invoke-static {p1, v1, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v2, p2, v0

    sub-int/2addr v0, v1

    .line 4013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4014
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
