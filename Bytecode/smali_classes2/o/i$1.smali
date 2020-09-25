.class public final Lo/i$1;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/i$1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onNavigationEvent:Lo/getCsat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/commit;

    invoke-direct {v0}, Lo/commit;-><init>()V

    sput-object v0, Lo/i$1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/getCsat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/i$1;->onNavigationEvent:Lo/getCsat;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getCsat;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/i$1;->onNavigationEvent:Lo/getCsat;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 6
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lo/i$1;->onNavigationEvent:Lo/getCsat;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v2, v1, p2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 11
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
