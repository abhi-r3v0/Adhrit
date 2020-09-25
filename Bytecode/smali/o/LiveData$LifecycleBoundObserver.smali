.class public final Lo/LiveData$LifecycleBoundObserver;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/festives/manage/InvitesHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cta",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "name",
        "phone",
        "profileIcon",
        "Landroid/widget/ImageView;",
        "status",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final ICustomTabsCallback$Stub:Lo/hasGapsToFix$onMessageChannelReady;

.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Landroid/widget/ImageView;

.field private final onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 4010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0140

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/LiveData$LifecycleBoundObserver;->ICustomTabsCallback$Stub:Lo/hasGapsToFix$onMessageChannelReady;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b05af

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->extraCallback:Landroid/widget/TextView;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b065f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->onMessageChannelReady:Landroid/widget/TextView;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0807

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->onPostMessage:Landroid/widget/TextView;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0490

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0693

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->onNavigationEvent:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/LiveData$LifecycleBoundObserver;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/LiveData$LifecycleBoundObserver;->ICustomTabsCallback$Stub:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;

    if-eqz v0, :cond_4

    .line 37
    iget-object v0, p0, Lo/LiveData$LifecycleBoundObserver;->extraCallback:Landroid/widget/TextView;

    const-string v1, "name"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;

    .line 1040
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->onNavigationEvent:Ljava/lang/String;

    .line 37
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lo/LiveData$LifecycleBoundObserver;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v2, "phone"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->extraCallback:Ljava/lang/String;

    .line 38
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lo/LiveData$LifecycleBoundObserver;->extraCallback:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->ICustomTabsService()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f06023f

    goto :goto_0

    :cond_0
    const v4, 0x7f0600bc

    :goto_0
    invoke-static {v2, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v0, p0, Lo/LiveData$LifecycleBoundObserver;->onMessageChannelReady:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->ICustomTabsService()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f06023b

    goto :goto_1

    :cond_1
    const v4, 0x7f0600b7

    :goto_1
    invoke-static {v2, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lo/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string v2, "cta"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->ICustomTabsService()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    goto :goto_2

    :cond_2
    const/4 v4, 0x7

    :goto_2
    sget-object v5, Lo/calculateScrollDirectionForPosition$onPostMessage;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onPostMessage;

    check-cast v5, Lo/calculateScrollDirectionForPosition;

    invoke-static {v0, v4, v5}, Lo/extraCallback;->onPostMessage(Landroid/widget/TextView;ILo/calculateScrollDirectionForPosition;)V

    .line 42
    iget-object v0, p0, Lo/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v4, Lo/LiveData$LifecycleBoundObserver$onNavigationEvent;

    invoke-direct {v4, p0, p1}, Lo/LiveData$LifecycleBoundObserver$onNavigationEvent;-><init>(Lo/LiveData$LifecycleBoundObserver;Lo/StaggeredGridLayoutManager;)V

    check-cast v4, Lo/onDisconnectSetValue;

    invoke-static {v0, v4}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 45
    iget-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->onNavigationEvent:Landroid/widget/ImageView;

    const-string v0, "profileIcon"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    .line 2042
    iget-object v0, v1, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->extraCallback:Ljava/lang/String;

    .line 45
    invoke-static {v0}, Lo/onActivityPostCreated;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lo/setInflatedId;->ICustomTabsCallback(Landroid/widget/ImageView;I)V

    .line 46
    iget-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->onPostMessage:Landroid/widget/TextView;

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2045
    iget-object v0, v1, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->onPostMessage:Ljava/lang/String;

    .line 46
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3043
    iget-object p1, v1, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "invited"

    .line 47
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 48
    iget-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->onPostMessage:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0601e9

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 51
    :cond_3
    iget-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->onPostMessage:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600c8

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object p1, p0, Lo/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
