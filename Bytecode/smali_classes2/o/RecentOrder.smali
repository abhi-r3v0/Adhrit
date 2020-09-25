.class public final Lo/RecentOrder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private final extraCallback:Landroid/content/Context;

.field private onNavigationEvent:Lo/AddressListResponseJsonAdapter;

.field private onPostMessage:Lo/StatementDetailsRequestJsonAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/StatementDetailsRequestJsonAdapter;Lo/AddressListResponseJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RecentOrder;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/RecentOrder;->onPostMessage:Lo/StatementDetailsRequestJsonAdapter;

    iput-object p3, p0, Lo/RecentOrder;->onNavigationEvent:Lo/AddressListResponseJsonAdapter;

    if-nez p3, :cond_0

    new-instance p1, Lo/AddressListResponseJsonAdapter;

    invoke-direct {p1}, Lo/AddressListResponseJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/RecentOrder;->onNavigationEvent:Lo/AddressListResponseJsonAdapter;

    :cond_0
    return-void
.end method

.method private final extraCallback()Z
    .locals 1

    iget-object v0, p0, Lo/RecentOrder;->onPostMessage:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/StatementDetailsRequestJsonAdapter;->ICustomTabsCallback()Lo/NudgeJsonAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lo/NudgeJsonAdapter;->asInterface:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/RecentOrder;->onNavigationEvent:Lo/AddressListResponseJsonAdapter;

    iget-boolean v0, v0, Lo/AddressListResponseJsonAdapter;->ICustomTabsCallback:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    invoke-direct {p0}, Lo/RecentOrder;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/RecentOrder;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/RecentOrder;->ICustomTabsCallback:Z

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lo/RecentOrder;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lo/RecentOrder;->onPostMessage:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-interface {v1, p1, v0, v2}, Lo/StatementDetailsRequestJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    :cond_2
    iget-object v1, p0, Lo/RecentOrder;->onNavigationEvent:Lo/AddressListResponseJsonAdapter;

    iget-boolean v1, v1, Lo/AddressListResponseJsonAdapter;->ICustomTabsCallback:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/RecentOrder;->onNavigationEvent:Lo/AddressListResponseJsonAdapter;

    iget-object v1, v1, Lo/AddressListResponseJsonAdapter;->extraCallback:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/RecentOrder;->onNavigationEvent:Lo/AddressListResponseJsonAdapter;

    iget-object v1, v1, Lo/AddressListResponseJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{NAVIGATION_URL}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v3, p0, Lo/RecentOrder;->extraCallback:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method
