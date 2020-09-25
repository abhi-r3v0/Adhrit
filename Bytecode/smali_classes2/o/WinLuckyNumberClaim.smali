.class public final Lo/WinLuckyNumberClaim;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/WinLuckyNumberClaim;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/WinLuckyNumberClaimJsonAdapter;

    invoke-direct {v0}, Lo/WinLuckyNumberClaimJsonAdapter;-><init>()V

    sput-object v0, Lo/WinLuckyNumberClaim;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/WinLuckyNumberClaim;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/extraCallback$onNavigationEvent;)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    invoke-virtual {p1}, Lo/extraCallback$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/WinLuckyNumberClaim;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lo/WinLuckyNumberClaim;->onNavigationEvent:Ljava/lang/String;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
