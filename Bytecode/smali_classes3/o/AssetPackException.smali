.class public final Lo/AssetPackException;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/AssetPackException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/FabTransformationSheetBehavior;

    invoke-direct {v0}, Lo/FabTransformationSheetBehavior;-><init>()V

    sput-object v0, Lo/AssetPackException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lo/AssetPackException;->onMessageChannelReady:I

    iput-boolean p2, p0, Lo/AssetPackException;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lo/AssetPackException;->onMessageChannelReady:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lo/AssetPackException;->onNavigationEvent:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
