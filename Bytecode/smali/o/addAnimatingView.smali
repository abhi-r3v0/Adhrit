.class public final Lo/addAnimatingView;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderboardItemViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "view",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "photo",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "rank",
        "Lcom/dreamplug/widget/CredTextView;",
        "score",
        "subTitle",
        "title",
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
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final extraCallback:Lo/setSpeed;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 16010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0144

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->photo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/addAnimatingView;->extraCallback:Lo/setSpeed;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/addAnimatingView;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/addAnimatingView;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->rank:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/addAnimatingView;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->score:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/addAnimatingView;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p1, Lo/setViewCacheExtension;

    if-eqz v0, :cond_13

    .line 30
    iget-object v0, p0, Lo/addAnimatingView;->extraCallback:Lo/setSpeed;

    const-string v1, "photo"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    check-cast v0, Lo/setMaxFrame;

    .line 30
    check-cast v0, Lo/getComposition;

    const-string v3, "photo.hierarchy"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onPostMessage()Lo/setFailureListener$extraCallback;

    move-result-object v3

    if-eqz v3, :cond_11

    const/4 v4, 0x2

    .line 3369
    invoke-virtual {v0, v4}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 3370
    instance-of v5, v0, Lo/fromAssets;

    if-eqz v5, :cond_0

    .line 3371
    check-cast v0, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_0
    sget-object v5, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v5}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 4094
    :goto_0
    iget-object v5, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v3, :cond_2

    if-eqz v5, :cond_1

    .line 5053
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_3

    .line 4098
    iput-object v3, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object v2, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 32
    :cond_3
    check-cast p1, Lo/setViewCacheExtension;

    .line 6046
    iget-object v0, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 32
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getPhoto_url()Ljava/lang/String;

    move-result-object v0

    .line 34
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v6, 0x1

    :cond_5
    if-nez v6, :cond_6

    .line 35
    iget-object v2, p0, Lo/addAnimatingView;->extraCallback:Lo/setSpeed;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lo/setInflatedId;->onPostMessage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    .line 37
    :cond_6
    iget-object v0, p0, Lo/addAnimatingView;->extraCallback:Lo/setSpeed;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    .line 7046
    iget-object v1, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 37
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/onActivityPostCreated;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lo/setInflatedId;->ICustomTabsCallback(Landroid/widget/ImageView;I)V

    .line 40
    :goto_3
    iget-object v0, p0, Lo/addAnimatingView;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8046
    iget-object v1, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 40
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lo/addAnimatingView;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "subTitle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9046
    iget-object v1, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 41
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lo/addAnimatingView;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "score"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10046
    iget-object v1, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 42
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getFormatted_score()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const-string v1, ""

    :goto_4
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11046
    iget-object v0, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 44
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getRank()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 12046
    iget-object v0, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 45
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getRank()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xb

    .line 13005
    rem-int/lit8 v3, v0, 0x64

    if-le v2, v3, :cond_9

    goto :goto_5

    :cond_9
    if-ge v1, v3, :cond_d

    :goto_5
    rem-int/lit8 v0, v0, 0xa

    if-eq v0, v7, :cond_c

    if-eq v0, v4, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    goto :goto_6

    :cond_a
    const-string v0, "rd"

    goto :goto_7

    :cond_b
    const-string v0, "nd"

    goto :goto_7

    :cond_c
    const-string/jumbo v0, "st"

    goto :goto_7

    :cond_d
    :goto_6
    const-string/jumbo v0, "th"

    .line 46
    :goto_7
    iget-object v1, p0, Lo/addAnimatingView;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string v2, "rank"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 58
    new-instance v3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 13046
    iget-object p1, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 47
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getRank()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 48
    check-cast v0, Ljava/lang/CharSequence;

    const p1, 0x3f4ccccd    # 0.8f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v4, "span"

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13120
    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v5}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_e

    .line 13122
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {v5, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v5}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 48
    :cond_e
    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14059
    iget-object p1, v3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_f

    .line 14156
    iget-object p1, v3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p1, Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_8

    .line 15156
    :cond_f
    iget-object p1, v3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p1, Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_10
    :goto_8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/addAnimatingView$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/addAnimatingView$ICustomTabsCallback;-><init>(Lo/addAnimatingView;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_9

    .line 3215
    :cond_11
    throw v2

    .line 2215
    :cond_12
    throw v2

    :cond_13
    :goto_9
    return-void
.end method
