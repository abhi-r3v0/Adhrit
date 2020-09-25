.class public final Lo/PostRedemptionDetailJsonAdapter;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/PostRedemptionDetailJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/DataListJsonAdapter;

.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private final asInterface:Z

.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Landroid/content/pm/ApplicationInfo;

.field private final onNavigationEvent:Landroid/os/Bundle;

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

.field private final onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/PostRedemptionDetail;

    invoke-direct {v0}, Lo/PostRedemptionDetail;-><init>()V

    sput-object v0, Lo/PostRedemptionDetailJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lo/DataListJsonAdapter;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lo/DataListJsonAdapter;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/PostRedemptionDetailJsonAdapter;->onNavigationEvent:Landroid/os/Bundle;

    iput-object p2, p0, Lo/PostRedemptionDetailJsonAdapter;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iput-object p4, p0, Lo/PostRedemptionDetailJsonAdapter;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/PostRedemptionDetailJsonAdapter;->onMessageChannelReady:Landroid/content/pm/ApplicationInfo;

    iput-object p5, p0, Lo/PostRedemptionDetailJsonAdapter;->extraCallback:Ljava/util/List;

    iput-object p6, p0, Lo/PostRedemptionDetailJsonAdapter;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lo/PostRedemptionDetailJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-boolean p8, p0, Lo/PostRedemptionDetailJsonAdapter;->asInterface:Z

    iput-object p9, p0, Lo/PostRedemptionDetailJsonAdapter;->onTransact:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lo/PostRedemptionDetailJsonAdapter;->onNavigationEvent:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lo/PostRedemptionDetailJsonAdapter;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/PostRedemptionDetailJsonAdapter;->onMessageChannelReady:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/PostRedemptionDetailJsonAdapter;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/PostRedemptionDetailJsonAdapter;->extraCallback:Ljava/util/List;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lo/PostRedemptionDetailJsonAdapter;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lo/PostRedemptionDetailJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lo/PostRedemptionDetailJsonAdapter;->asInterface:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lo/PostRedemptionDetailJsonAdapter;->onTransact:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
