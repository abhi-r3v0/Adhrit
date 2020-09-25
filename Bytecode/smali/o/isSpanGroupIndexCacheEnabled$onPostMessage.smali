.class public final Lo/isSpanGroupIndexCacheEnabled$onPostMessage;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isSpanGroupIndexCacheEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/adapter/InstrumentSelectorListAdapter$BankSelectorViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "accountNumber",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "bankLogo",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "ifsc",
        "isChecked",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "issuerName",
        "logo",
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

.field private final asInterface:Landroidx/appcompat/widget/AppCompatImageView;

.field private final extraCallback:Landroidx/appcompat/widget/AppCompatImageView;

.field private final onMessageChannelReady:Lo/setSpeed;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 11010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 39
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->bankLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->onMessageChannelReady:Lo/setSpeed;

    .line 40
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->bankName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 41
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->accountNumber:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->onNavigationEvent:Landroid/widget/TextView;

    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->isChecked:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->extraCallback:Landroidx/appcompat/widget/AppCompatImageView;

    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ifsc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->onPostMessage:Landroid/widget/TextView;

    .line 44
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->instrumentTypeLogo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 13

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    instance-of v0, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string v1, "issuerName"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    .line 1070
    iget-object v1, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 49
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->onPostMessage:Landroid/widget/TextView;

    const-string v1, "ifsc"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IFSC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    iget-object v2, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->onNavigationEvent:Landroid/widget/TextView;

    const-string v1, "accountNumber"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1074
    iget-object v1, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->asInterface:Ljava/lang/String;

    .line 51
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    iget-boolean v0, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->onNavigationEvent:Z

    const/4 v1, 0x0

    const-string v2, "logo"

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v2, "$this$visible"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->asInterface:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v2, "$this$gone"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 3017
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :goto_0
    iget-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->onMessageChannelReady:Lo/setSpeed;

    const-string v2, "bankLogo"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 3216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    check-cast v0, Lo/setMaxFrame;

    .line 57
    check-cast v0, Lo/getComposition;

    .line 4459
    iget-object v4, v0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    const v5, 0x7f080300

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    .line 5433
    invoke-virtual {v0, v5, v4}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 6216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_7

    check-cast v0, Lo/setMaxFrame;

    .line 58
    check-cast v0, Lo/getComposition;

    const-string v4, "bankLogo.hierarchy"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/setFailureListener$extraCallback;->asInterface:Lo/setFailureListener$extraCallback;

    if-eqz v4, :cond_6

    const/4 v6, 0x2

    .line 8369
    invoke-virtual {v0, v6}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 8370
    instance-of v6, v0, Lo/fromAssets;

    if-eqz v6, :cond_1

    .line 8371
    check-cast v0, Lo/fromAssets;

    goto :goto_1

    .line 8373
    :cond_1
    sget-object v6, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v6}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 9094
    :goto_1
    iget-object v6, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v6, v4, :cond_2

    if-eqz v6, :cond_3

    .line 10053
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 9098
    iput-object v4, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 9099
    iput-object v3, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 9100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 9101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 59
    :cond_4
    iget-object v5, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10071
    iget-object v6, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    .line 59
    invoke-static/range {v5 .. v12}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 60
    iget-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage;->extraCallback:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10074
    iget-boolean p1, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->asBinder:Z

    if-eqz p1, :cond_5

    const p1, 0x7f0803cc

    goto :goto_2

    :cond_5
    const p1, 0x7f0803cd

    .line 60
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/isSpanGroupIndexCacheEnabled$onPostMessage$extraCallback;

    invoke-direct {v0, p0}, Lo/isSpanGroupIndexCacheEnabled$onPostMessage$extraCallback;-><init>(Lo/isSpanGroupIndexCacheEnabled$onPostMessage;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_3

    .line 8215
    :cond_6
    throw v3

    .line 7215
    :cond_7
    throw v3

    .line 4215
    :cond_8
    throw v3

    :cond_9
    :goto_3
    return-void
.end method
