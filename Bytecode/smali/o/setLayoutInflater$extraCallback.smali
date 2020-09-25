.class public final Lo/setLayoutInflater$extraCallback;
.super Lo/put;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/rating/RatingSelectionAdapter$RatingSelectionViewHolder;",
        "Lcom/dreamplug/androidapp/utils/DiffAwareHolder;",
        "view",
        "Landroid/view/View;",
        "clickListener",
        "Lkotlin/Function1;",
        "Lcom/dreamplug/androidapp/ui/rating/RatingTag;",
        "",
        "(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V",
        "filterText",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "kotlin.jvm.PlatformType",
        "bind",
        "item",
        "Lcom/dreamplug/androidapp/utils/ListItem;",
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
.field private final ICustomTabsCallback:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Lcom/dreamplug/androidapp/ui/rating/RatingTag;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lcom/dreamplug/androidapp/ui/rating/RatingTag;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lo/put;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/setLayoutInflater$extraCallback;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 31
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->filterText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lo/setLayoutInflater$extraCallback;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/setLayoutInflater$extraCallback;)Lo/onDisconnectSetValue;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/setLayoutInflater$extraCallback;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    return-object p0
.end method


# virtual methods
.method public final onNavigationEvent(Lo/create;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p1, Lcom/dreamplug/androidapp/ui/rating/RatingTag;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lo/setLayoutInflater$extraCallback;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "filterText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/dreamplug/androidapp/ui/rating/RatingTag;

    .line 1056
    iget-object v3, v2, Lcom/dreamplug/androidapp/ui/rating/RatingTag;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_0

    .line 2000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 34
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lo/setLayoutInflater$extraCallback;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2058
    iget-boolean v3, v2, Lcom/dreamplug/androidapp/ui/rating/RatingTag;->onNavigationEvent:Z

    .line 35
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 36
    iget-object v0, p0, Lo/setLayoutInflater$extraCallback;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3058
    iget-boolean v2, v2, Lcom/dreamplug/androidapp/ui/rating/RatingTag;->onNavigationEvent:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 36
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setAlpha(F)V

    .line 37
    iget-object v0, p0, Lo/setLayoutInflater$extraCallback;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/setLayoutInflater$extraCallback$onPostMessage;

    invoke-direct {v1, p0, p1}, Lo/setLayoutInflater$extraCallback$onPostMessage;-><init>(Lo/setLayoutInflater$extraCallback;Lo/create;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_2
    return-void
.end method
