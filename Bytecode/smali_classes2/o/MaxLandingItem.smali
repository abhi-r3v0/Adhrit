.class public final Lo/MaxLandingItem;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/MaxLandingItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:[B

.field public final asBinder:J

.field public final asInterface:[Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:[Ljava/lang/String;

.field public final onNavigationEvent:Z

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/MaxLandingItemJsonAdapter;

    invoke-direct {v0}, Lo/MaxLandingItemJsonAdapter;-><init>()V

    sput-object v0, Lo/MaxLandingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;I[B[Ljava/lang/String;[Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-boolean p1, p0, Lo/MaxLandingItem;->onNavigationEvent:Z

    iput-object p2, p0, Lo/MaxLandingItem;->extraCallback:Ljava/lang/String;

    iput p3, p0, Lo/MaxLandingItem;->onPostMessage:I

    iput-object p4, p0, Lo/MaxLandingItem;->ICustomTabsCallback:[B

    iput-object p5, p0, Lo/MaxLandingItem;->onMessageChannelReady:[Ljava/lang/String;

    iput-object p6, p0, Lo/MaxLandingItem;->asInterface:[Ljava/lang/String;

    iput-boolean p7, p0, Lo/MaxLandingItem;->onRelationshipValidationResult:Z

    iput-wide p8, p0, Lo/MaxLandingItem;->asBinder:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Lo/MaxLandingItem;->onNavigationEvent:Z

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lo/MaxLandingItem;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lo/MaxLandingItem;->onPostMessage:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lo/MaxLandingItem;->ICustomTabsCallback:[B

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;I[BZ)V

    iget-object v0, p0, Lo/MaxLandingItem;->onMessageChannelReady:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v0, p0, Lo/MaxLandingItem;->asInterface:[Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lo/MaxLandingItem;->onRelationshipValidationResult:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-wide v0, p0, Lo/MaxLandingItem;->asBinder:J

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
