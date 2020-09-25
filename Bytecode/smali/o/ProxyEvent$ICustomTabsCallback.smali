.class final Lo/ProxyEvent$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ProxyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/GoogleReferrer;

.field private onMessageChannelReady:I

.field private onNavigationEvent:Z

.field private onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ProxyEvent$5;)V
    .locals 0

    .line 1904
    invoke-direct {p0}, Lo/ProxyEvent$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ProxyEvent$ICustomTabsCallback;)I
    .locals 0

    .line 1904
    iget p0, p0, Lo/ProxyEvent$ICustomTabsCallback;->onPostMessage:I

    return p0
.end method

.method static synthetic extraCallback(Lo/ProxyEvent$ICustomTabsCallback;)Z
    .locals 0

    .line 1904
    iget-boolean p0, p0, Lo/ProxyEvent$ICustomTabsCallback;->onNavigationEvent:Z

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/ProxyEvent$ICustomTabsCallback;)I
    .locals 0

    .line 1904
    iget p0, p0, Lo/ProxyEvent$ICustomTabsCallback;->onMessageChannelReady:I

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 3

    .line 1926
    iget-boolean v0, p0, Lo/ProxyEvent$ICustomTabsCallback;->onNavigationEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lo/ProxyEvent$ICustomTabsCallback;->onMessageChannelReady:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1930
    :goto_0
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    return-void

    .line 1933
    :cond_1
    iput-boolean v1, p0, Lo/ProxyEvent$ICustomTabsCallback;->onNavigationEvent:Z

    .line 1934
    iput p1, p0, Lo/ProxyEvent$ICustomTabsCallback;->onMessageChannelReady:I

    return-void
.end method

.method public final ICustomTabsCallback(Lo/GoogleReferrer;)V
    .locals 0

    .line 1916
    iput-object p1, p0, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback:Lo/GoogleReferrer;

    const/4 p1, 0x0

    .line 1917
    iput p1, p0, Lo/ProxyEvent$ICustomTabsCallback;->onPostMessage:I

    .line 1918
    iput-boolean p1, p0, Lo/ProxyEvent$ICustomTabsCallback;->onNavigationEvent:Z

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    .line 1922
    iget v0, p0, Lo/ProxyEvent$ICustomTabsCallback;->onPostMessage:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/ProxyEvent$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method

.method public final onPostMessage(Lo/GoogleReferrer;)Z
    .locals 1

    .line 1912
    iget-object v0, p0, Lo/ProxyEvent$ICustomTabsCallback;->ICustomTabsCallback:Lo/GoogleReferrer;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lo/ProxyEvent$ICustomTabsCallback;->onPostMessage:I

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lo/ProxyEvent$ICustomTabsCallback;->onNavigationEvent:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
