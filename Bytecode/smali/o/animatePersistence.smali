.class public final Lo/animatePersistence;
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RC3TemplateViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "onItemClickListener",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$OnItemClickListener;",
        "(Landroid/view/View;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RCTemplateAdapter$OnItemClickListener;)V",
        "controllerImage",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "controllerParent",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "controllerTag",
        "Lcom/dreamplug/widget/CredTextView;",
        "controllerText",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "forwardImage",
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
.field final ICustomTabsCallback:Lo/onChildrenLoaded;

.field final asInterface:Lo/onAnimationStarted$onMessageChannelReady;

.field final extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

.field final onMessageChannelReady:Lo/setSpeed;

.field final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field final onPostMessage:Lo/setSpeed;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/onAnimationStarted$onMessageChannelReady;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/animatePersistence;->asInterface:Lo/onAnimationStarted$onMessageChannelReady;

    const p2, 0x7f0b020a

    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.findViewById(R.id.controller_parent)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/onChildrenLoaded;

    iput-object p2, p0, Lo/animatePersistence;->ICustomTabsCallback:Lo/onChildrenLoaded;

    const p2, 0x7f0b020c

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.findViewById(R.id.controller_text)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lo/animatePersistence;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    const p2, 0x7f0b0209

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.findViewById(R.id.controller_image)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/setSpeed;

    iput-object p2, p0, Lo/animatePersistence;->onMessageChannelReady:Lo/setSpeed;

    const p2, 0x7f0b04a2

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.findViewById(R.id.itemTag)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/createFullSpanItemFromEnd;

    iput-object p2, p0, Lo/animatePersistence;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const p2, 0x7f0b0368

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.forward_image)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/animatePersistence;->onPostMessage:Lo/setSpeed;

    return-void
.end method
