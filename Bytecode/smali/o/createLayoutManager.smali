.class public final Lo/createLayoutManager;
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
        "\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u001e\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020%H\u0002R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001f\u00a8\u0006&"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/InputFormFillHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "field",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;",
        "getField",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;",
        "setField",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;)V",
        "fieldInput",
        "Landroid/widget/EditText;",
        "fieldTitle",
        "Landroid/widget/TextView;",
        "onTextChange",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem$OnTextChange;",
        "getOnTextChange",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem$OnTextChange;",
        "setOnTextChange",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem$OnTextChange;)V",
        "sectionId",
        "",
        "getSectionId",
        "()Ljava/lang/String;",
        "setSectionId",
        "(Ljava/lang/String;)V",
        "textWatcher",
        "com/dreamplug/fabrik/ui/lifestyle/holders/InputFormFillHolder$textWatcher$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/InputFormFillHolder$textWatcher$1;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "validate",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem;",
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

.field extraCallback:Lo/ensureRightGlow$extraCallback;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

.field private final onPostMessage:Landroid/widget/EditText;

.field private onTransact:Lo/createLayoutManager$ICustomTabsCallback;


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

    const v1, 0x7f0e0172

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b032e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.fieldTitle)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/createLayoutManager;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0b032d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.fieldInput)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    .line 65
    new-instance p1, Lo/createLayoutManager$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/createLayoutManager$ICustomTabsCallback;-><init>(Lo/createLayoutManager;)V

    iput-object p1, p0, Lo/createLayoutManager;->onTransact:Lo/createLayoutManager$ICustomTabsCallback;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/createLayoutManager;Lo/ensureRightGlow;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lo/createLayoutManager;->ICustomTabsCallback(Lo/ensureRightGlow;)V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/ensureRightGlow;)V
    .locals 2

    const/4 v0, 0x1

    .line 8072
    iput-boolean v0, p1, Lo/ensureRightGlow;->onPostMessage:Z

    .line 9070
    iget-object v0, p1, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 53
    iget-object v1, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onPostMessage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    .line 10070
    iget-object p1, p1, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 54
    iget-object v1, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 10072
    iput-boolean v0, p1, Lo/ensureRightGlow;->onPostMessage:Z

    .line 57
    iget-object p1, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/createLayoutManager;)Landroid/widget/EditText;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v0, p1, Lo/ensureRightGlow;

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, p0, Lo/createLayoutManager;->ICustomTabsCallback:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Lo/ensureRightGlow;

    .line 1070
    iget-object v2, v1, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 2065
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->extraCallback:Ljava/lang/String;

    .line 27
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    .line 2070
    iget-object v2, v1, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 3067
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onPostMessage:Ljava/lang/String;

    .line 28
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3073
    iget-object v0, v1, Lo/ensureRightGlow;->extraCallback:Lo/ensureRightGlow$extraCallback;

    .line 29
    iput-object v0, p0, Lo/createLayoutManager;->extraCallback:Lo/ensureRightGlow$extraCallback;

    .line 4069
    iget-object v0, v1, Lo/ensureRightGlow;->ICustomTabsCallback:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lo/createLayoutManager;->onMessageChannelReady:Ljava/lang/String;

    .line 4070
    iget-object v0, v1, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 31
    iput-object v0, p0, Lo/createLayoutManager;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 32
    iget-object v0, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    .line 5070
    iget-object v2, v1, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 5095
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "currency"

    .line 5098
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v4, "phone"

    .line 5099
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :sswitch_2
    const-string v3, "email"

    .line 5100
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :sswitch_3
    const-string v3, "name"

    .line 5096
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x60

    goto :goto_1

    :sswitch_4
    const-string v4, "number"

    .line 5097
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 32
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 33
    iget-object v0, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lo/createLayoutManager;->onTransact:Lo/createLayoutManager$ICustomTabsCallback;

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 34
    iget-object v0, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    .line 6071
    iget-object v2, v1, Lo/ensureRightGlow;->onMessageChannelReady:Ljava/lang/String;

    .line 34
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    .line 7071
    iget-object v2, v1, Lo/ensureRightGlow;->onMessageChannelReady:Ljava/lang/String;

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 36
    iget-object v0, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lo/createLayoutManager;->onTransact:Lo/createLayoutManager$ICustomTabsCallback;

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    iget-object v0, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    new-instance v2, Lo/createLayoutManager$onMessageChannelReady;

    invoke-direct {v2, p0, p1}, Lo/createLayoutManager$onMessageChannelReady;-><init>(Lo/createLayoutManager;Lo/StaggeredGridLayoutManager;)V

    check-cast v2, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 7072
    iget-boolean p1, v1, Lo/ensureRightGlow;->onPostMessage:Z

    if-eqz p1, :cond_2

    .line 43
    invoke-direct {p0, v1}, Lo/createLayoutManager;->ICustomTabsCallback(Lo/ensureRightGlow;)V

    return-void

    .line 45
    :cond_2
    iget-object p1, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lo/createLayoutManager;->onPostMessage:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x5c24b9c -> :sswitch_2
        0x65b3d6e -> :sswitch_1
        0x224bf011 -> :sswitch_0
    .end sparse-switch
.end method
