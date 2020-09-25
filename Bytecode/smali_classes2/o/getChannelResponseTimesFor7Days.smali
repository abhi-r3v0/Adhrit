.class public final Lo/getChannelResponseTimesFor7Days;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getChannelResponseTimesFor7Days;",
            ">;"
        }
    .end annotation
.end field

.field static final extraCallback:Lo/setWebViewClient;

.field static final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CardCtaItem$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CardCtaItem$$Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Lo/setWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/getChannelResponseTimesFor7Days;->onPostMessage:Ljava/util/List;

    new-instance v0, Lo/setWebViewClient;

    invoke-direct {v0}, Lo/setWebViewClient;-><init>()V

    sput-object v0, Lo/getChannelResponseTimesFor7Days;->extraCallback:Lo/setWebViewClient;

    new-instance v0, Lo/getChannelResponseTime;

    invoke-direct {v0}, Lo/getChannelResponseTime;-><init>()V

    sput-object v0, Lo/getChannelResponseTimesFor7Days;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lo/setWebViewClient;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setWebViewClient;",
            "Ljava/util/List<",
            "Lo/CardCtaItem$$Parcelable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/getChannelResponseTimesFor7Days;->onNavigationEvent:Lo/setWebViewClient;

    iput-object p2, p0, Lo/getChannelResponseTimesFor7Days;->ICustomTabsCallback:Ljava/util/List;

    iput-object p3, p0, Lo/getChannelResponseTimesFor7Days;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lo/getChannelResponseTimesFor7Days;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lo/getChannelResponseTimesFor7Days;

    iget-object v0, p0, Lo/getChannelResponseTimesFor7Days;->onNavigationEvent:Lo/setWebViewClient;

    iget-object v2, p1, Lo/getChannelResponseTimesFor7Days;->onNavigationEvent:Lo/setWebViewClient;

    invoke-static {v0, v2}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getChannelResponseTimesFor7Days;->ICustomTabsCallback:Ljava/util/List;

    iget-object v2, p1, Lo/getChannelResponseTimesFor7Days;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v0, v2}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getChannelResponseTimesFor7Days;->onMessageChannelReady:Ljava/lang/String;

    iget-object p1, p1, Lo/getChannelResponseTimesFor7Days;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/getPaymentData;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lo/getChannelResponseTimesFor7Days;->onNavigationEvent:Lo/setWebViewClient;

    invoke-virtual {v0}, Lo/setWebViewClient;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lo/getChannelResponseTimesFor7Days;->onNavigationEvent:Lo/setWebViewClient;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lo/getChannelResponseTimesFor7Days;->ICustomTabsCallback:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p2, p0, Lo/getChannelResponseTimesFor7Days;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
