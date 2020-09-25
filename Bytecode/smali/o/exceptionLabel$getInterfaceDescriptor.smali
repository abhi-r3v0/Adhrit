.class final Lo/exceptionLabel$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/exceptionLabel;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/holders/ClaimedRewardHolder$bind$3$9"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic extraCallback:Lo/exceptionLabel;

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

.field private synthetic onPostMessage:Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Landroid/content/ClipboardManager;Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;Lo/exceptionLabel;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/exceptionLabel$getInterfaceDescriptor;->onPostMessage:Landroid/content/ClipboardManager;

    iput-object p2, p0, Lo/exceptionLabel$getInterfaceDescriptor;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    iput-object p3, p0, Lo/exceptionLabel$getInterfaceDescriptor;->extraCallback:Lo/exceptionLabel;

    iput-object p4, p0, Lo/exceptionLabel$getInterfaceDescriptor;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 40
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    iget-object p1, p0, Lo/exceptionLabel$getInterfaceDescriptor;->extraCallback:Lo/exceptionLabel;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "itemView.context"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0xa

    .line 2014
    invoke-static {p1, v2, v3}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 1208
    iget-object p1, p0, Lo/exceptionLabel$getInterfaceDescriptor;->extraCallback:Lo/exceptionLabel;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "$this$loadAnimation"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f010041

    .line 3009
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-string v2, "AnimationUtils.loadAnimation(this, id)"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1210
    iget-object v2, p0, Lo/exceptionLabel$getInterfaceDescriptor;->extraCallback:Lo/exceptionLabel;

    invoke-static {v2}, Lo/exceptionLabel;->ICustomTabsCallback(Lo/exceptionLabel;)Lo/getRemainingScrollVertical;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string/jumbo p1, "text"

    .line 1211
    check-cast p1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lo/exceptionLabel$getInterfaceDescriptor;->extraCallback:Lo/exceptionLabel;

    invoke-static {v2}, Lo/exceptionLabel;->onMessageChannelReady(Lo/exceptionLabel;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "voucherCodeText"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 1212
    iget-object v2, p0, Lo/exceptionLabel$getInterfaceDescriptor;->onPostMessage:Landroid/content/ClipboardManager;

    invoke-virtual {v2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1213
    iget-object p1, p0, Lo/exceptionLabel$getInterfaceDescriptor;->extraCallback:Lo/exceptionLabel;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Code Copied"

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x50

    const/4 v2, 0x0

    .line 3168
    invoke-static {p1, v0, v1, v2}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    const/4 p1, 0x2

    new-array v0, p1, [Lo/addWrite;

    .line 1215
    iget-object v1, p0, Lo/exceptionLabel$getInterfaceDescriptor;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    .line 4033
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 4076
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v1, :cond_1

    .line 4090
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->extraCallback:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "NA"

    .line 5043
    :cond_2
    new-instance v3, Lo/addWrite;

    const-string v4, "cta_type"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    const/4 v1, 0x1

    .line 1217
    iget-object v2, p0, Lo/exceptionLabel$getInterfaceDescriptor;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lo/updateAnchorInfoForLayout;

    .line 5077
    iget v2, v2, Lo/updateAnchorInfoForLayout;->onNavigationEvent:I

    .line 1217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "section count"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 1214
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "reward_voucher_copied"

    .line 1214
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1219
    iget-object p1, p0, Lo/exceptionLabel$getInterfaceDescriptor;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    .line 7033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 7076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_3

    .line 7089
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 1220
    iget-object p1, p0, Lo/exceptionLabel$getInterfaceDescriptor;->extraCallback:Lo/exceptionLabel;

    iget-object v0, p0, Lo/exceptionLabel$getInterfaceDescriptor;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v0, Lo/updateAnchorInfoForLayout;

    invoke-static {p1, v0}, Lo/exceptionLabel;->extraCallback(Lo/exceptionLabel;Lo/updateAnchorInfoForLayout;)V

    .line 40
    :cond_4
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
