.class final Lo/getAndroidMinimumVersion$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getAndroidMinimumVersion$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAndroidMinimumVersion;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getAndroidMinimumVersion;


# direct methods
.method constructor <init>(Lo/getAndroidMinimumVersion;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lo/getAndroidMinimumVersion$3;->onPostMessage:Lo/getAndroidMinimumVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(J)V
    .locals 1

    .line 192
    iget-object v0, p0, Lo/getAndroidMinimumVersion$3;->onPostMessage:Lo/getAndroidMinimumVersion;

    .line 1059
    iget-object v0, v0, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    .line 1077
    iget-object v0, v0, Lo/getMultiFactorInfo;->onPostMessage:Lo/getMultiFactorInfo$onNavigationEvent;

    .line 192
    invoke-interface {v0, p1, p2}, Lo/getMultiFactorInfo$onNavigationEvent;->ICustomTabsCallback(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lo/getAndroidMinimumVersion$3;->onPostMessage:Lo/getAndroidMinimumVersion;

    iget-object p1, p1, Lo/parseLink;->ICustomTabsCallback$Stub:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/setHandleCodeInApp;

    .line 195
    iget-object v0, p0, Lo/getAndroidMinimumVersion$3;->onPostMessage:Lo/getAndroidMinimumVersion;

    .line 3059
    iget-object v0, v0, Lo/getAndroidMinimumVersion;->ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;

    .line 195
    invoke-interface {v0}, Lo/AnalyticsConnectorRegistrar;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/setHandleCodeInApp;->ICustomTabsCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lo/getAndroidMinimumVersion$3;->onPostMessage:Lo/getAndroidMinimumVersion;

    .line 4059
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 199
    iget-object p1, p0, Lo/getAndroidMinimumVersion$3;->onPostMessage:Lo/getAndroidMinimumVersion;

    .line 5059
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asInterface:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p0, Lo/getAndroidMinimumVersion$3;->onPostMessage:Lo/getAndroidMinimumVersion;

    .line 6059
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asInterface:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
