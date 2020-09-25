.class public final Lo/setPasswordVisibilityToggleContentDescription;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setPasswordVisibilityToggleContentDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:[B

.field private extraCallback:Landroid/os/ParcelFileDescriptor;

.field private onMessageChannelReady:Lcom/google/android/gms/common/data/DataHolder;

.field private onNavigationEvent:J

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ExpandableTransformationBehavior;

    invoke-direct {v0}, Lo/ExpandableTransformationBehavior;-><init>()V

    sput-object v0, Lo/setPasswordVisibilityToggleContentDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lo/setPasswordVisibilityToggleContentDescription;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Landroid/os/ParcelFileDescriptor;J[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Landroid/os/ParcelFileDescriptor;J[B)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/setPasswordVisibilityToggleContentDescription;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/setPasswordVisibilityToggleContentDescription;->onMessageChannelReady:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p3, p0, Lo/setPasswordVisibilityToggleContentDescription;->extraCallback:Landroid/os/ParcelFileDescriptor;

    iput-wide p4, p0, Lo/setPasswordVisibilityToggleContentDescription;->onNavigationEvent:J

    iput-object p6, p0, Lo/setPasswordVisibilityToggleContentDescription;->ICustomTabsCallback:[B

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    iget-wide v0, p0, Lo/setPasswordVisibilityToggleContentDescription;->onNavigationEvent:J

    return-wide v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setPasswordVisibilityToggleContentDescription;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lo/setPasswordVisibilityToggleContentDescription;->onMessageChannelReady:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public final onNavigationEvent()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lo/setPasswordVisibilityToggleContentDescription;->extraCallback:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public final onPostMessage()[B
    .locals 1

    iget-object v0, p0, Lo/setPasswordVisibilityToggleContentDescription;->ICustomTabsCallback:[B

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/ExpandableTransformationBehavior;->onPostMessage(Lo/setPasswordVisibilityToggleContentDescription;Landroid/os/Parcel;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lo/setPasswordVisibilityToggleContentDescription;->extraCallback:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
