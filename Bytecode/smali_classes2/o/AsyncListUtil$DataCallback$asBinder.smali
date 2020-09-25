.class public final Lo/AsyncListUtil$DataCallback$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncListUtil$DataCallback;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/payments/CustomPaymentsView$suggestedAmountSelectionListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic onNavigationEvent:Lo/AsyncListUtil$DataCallback;


# direct methods
.method constructor <init>(Lo/AsyncListUtil$DataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lo/AsyncListUtil$DataCallback$asBinder;->onNavigationEvent:Lo/AsyncListUtil$DataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 8

    const-string p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$asBinder;->onNavigationEvent:Lo/AsyncListUtil$DataCallback;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p1, p3}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    check-cast p2, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->getAmount()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double p3, v3, v5

    if-lez p3, :cond_0

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0xb6

    invoke-static/range {v0 .. v7}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$asBinder;->onNavigationEvent:Lo/AsyncListUtil$DataCallback;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p1, p3}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object p3, p0, Lo/AsyncListUtil$DataCallback$asBinder;->onNavigationEvent:Lo/AsyncListUtil$DataCallback;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p3, v0}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const-string v0, "payAmount"

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 52
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$asBinder;->onNavigationEvent:Lo/AsyncListUtil$DataCallback;

    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->getAmount()D

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lo/AsyncListUtil$DataCallback;->ICustomTabsCallback(Lo/AsyncListUtil$DataCallback;D)V

    :cond_1
    return-void
.end method
