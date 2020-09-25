.class public final Lo/setLayoutTransition;
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n \u000b*\u0004\u0018\u00010\u00170\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/ContactItemHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "isGiftingFlow",
        "",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;ZLcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cta",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "layoutBg",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "mainHandler",
        "Landroid/os/Handler;",
        "getMainHandler",
        "()Landroid/os/Handler;",
        "setMainHandler",
        "(Landroid/os/Handler;)V",
        "name",
        "phone",
        "profileIcon",
        "Landroid/widget/ImageView;",
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
.field ICustomTabsCallback:Landroid/os/Handler;

.field private final asInterface:Z

.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Landroid/widget/ImageView;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Landroid/widget/TextView;

.field private final onTransact:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ZLo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 8010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0120

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p3}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-boolean p2, p0, Lo/setLayoutTransition;->asInterface:Z

    iput-object p3, p0, Lo/setLayoutTransition;->onTransact:Lo/hasGapsToFix$onMessageChannelReady;

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b05af

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/setLayoutTransition;->extraCallback:Landroid/widget/TextView;

    .line 36
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b065f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/setLayoutTransition;->onPostMessage:Landroid/widget/TextView;

    .line 37
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0490

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/setLayoutTransition;->onNavigationEvent:Landroid/widget/TextView;

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b0693

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/setLayoutTransition;->onMessageChannelReady:Landroid/widget/ImageView;

    .line 39
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b04b9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 8096
    iget-object p2, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const-string p3, "context"

    .line 41
    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/setLayoutTransition;->ICustomTabsCallback:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/setLayoutTransition;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/setLayoutTransition;->onTransact:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/setLayoutTransition;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/setLayoutTransition;->onMessageChannelReady:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/setLayoutTransition;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lo/setLayoutTransition;->asInterface:Z

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    instance-of v0, p1, Lo/onActivityPrePaused;

    if-eqz v0, :cond_4

    .line 45
    iget-object v0, p0, Lo/setLayoutTransition;->extraCallback:Landroid/widget/TextView;

    const-string v1, "name"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lo/onActivityPrePaused;

    .line 1037
    iget-object v2, v1, Lo/onActivityPrePaused;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;

    .line 2013
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;->ICustomTabsCallback:Ljava/lang/String;

    .line 45
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lo/setLayoutTransition;->onPostMessage:Landroid/widget/TextView;

    const-string v2, "phone"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2037
    iget-object v2, v1, Lo/onActivityPrePaused;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;

    .line 3012
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;->onNavigationEvent:Ljava/lang/String;

    .line 46
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lo/setLayoutTransition;->onNavigationEvent:Landroid/widget/TextView;

    const-string v2, "cta"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3096
    iget-object v3, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 48
    iget-boolean v4, p0, Lo/setLayoutTransition;->asInterface:Z

    if-eqz v4, :cond_0

    const v4, 0x7f130268

    goto :goto_0

    :cond_0
    const v4, 0x7f1303ad

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lo/setLayoutTransition;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v3, Lo/setLayoutTransition$extraCallback;

    invoke-direct {v3, p0, p1}, Lo/setLayoutTransition$extraCallback;-><init>(Lo/setLayoutTransition;Lo/StaggeredGridLayoutManager;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v0, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 58
    iget-boolean p1, p0, Lo/setLayoutTransition;->asInterface:Z

    if-eqz p1, :cond_3

    .line 59
    sget-object p1, Lo/onActivitySaveInstanceState$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/onActivitySaveInstanceState$ICustomTabsCallback;

    .line 3320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_1
    check-cast p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;

    if-eqz p1, :cond_3

    .line 60
    iget-object v0, p0, Lo/setLayoutTransition;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4031
    iget v2, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onTransact:I

    .line 5025
    iget p1, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;->onPostMessage:I

    if-ge v2, p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 60
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_3
    iget-object p1, p0, Lo/setLayoutTransition;->onMessageChannelReady:Landroid/widget/ImageView;

    const-string v0, "profileIcon"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    .line 5037
    iget-object v0, v1, Lo/onActivityPrePaused;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;

    .line 6015
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;->onMessageChannelReady:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lo/onActivityPostCreated;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lo/setInflatedId;->ICustomTabsCallback(Landroid/widget/ImageView;I)V

    .line 65
    sget-object p1, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    .line 6037
    iget-object p1, v1, Lo/onActivityPrePaused;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;

    .line 7015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;->onMessageChannelReady:Ljava/lang/String;

    .line 65
    new-instance v0, Lo/setLayoutTransition$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/setLayoutTransition$ICustomTabsCallback;-><init>(Lo/setLayoutTransition;)V

    check-cast v0, Lo/setNestedScrollingEnabled;

    invoke-static {p1, v0}, Lo/onActivityPostCreated;->onPostMessage(Ljava/lang/String;Lo/setNestedScrollingEnabled;)V

    :cond_4
    return-void
.end method
