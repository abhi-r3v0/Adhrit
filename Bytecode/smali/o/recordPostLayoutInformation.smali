.class public final Lo/recordPostLayoutInformation;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RC1TemplateViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "onItemClickListener",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$OnItemClickListener;",
        "(Landroid/view/View;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$OnItemClickListener;)V",
        "controllerImage",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "controllerSubtext",
        "Lcom/dreamplug/widget/CredTextView;",
        "controllerTag",
        "controllerText",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "getOnItemClickListener",
        "()Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$OnItemClickListener;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "setTag",
        "props",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;",
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
.field final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field final extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

.field final onMessageChannelReady:Lo/setSpeed;

.field final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field final onPostMessage:Lo/onAnimationStarted$onMessageChannelReady;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/onAnimationStarted$onMessageChannelReady;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/recordPostLayoutInformation;->onPostMessage:Lo/onAnimationStarted$onMessageChannelReady;

    const p2, 0x7f0b020c

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.findViewById(R.id.controller_text)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lo/recordPostLayoutInformation;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    const p2, 0x7f0b020b

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.findViewById(R.id.controller_subtext)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/createFullSpanItemFromEnd;

    iput-object p2, p0, Lo/recordPostLayoutInformation;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const p2, 0x7f0b0209

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.findViewById(R.id.controller_image)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/setSpeed;

    iput-object p2, p0, Lo/recordPostLayoutInformation;->onMessageChannelReady:Lo/setSpeed;

    const p2, 0x7f0b04a2

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.itemTag)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/recordPostLayoutInformation;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    return-void
.end method
