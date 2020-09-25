.class public final Lo/findMinMaxChildLayoutPositions;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\"\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u001f2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0010+\u001a\u0004\u0018\u00010\u0017J\u0010\u0010,\u001a\u00020\'2\u0006\u0010-\u001a\u00020.H\u0002R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001b\"\u0004\u0008\"\u0010\u001dR\u001a\u0010#\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001b\"\u0004\u0008%\u0010\u001d\u00a8\u0006/"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinVoucherWidget;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "copyCode",
        "Landroid/widget/ImageView;",
        "getCopyCode",
        "()Landroid/widget/ImageView;",
        "setCopyCode",
        "(Landroid/widget/ImageView;)V",
        "displayCopy",
        "Landroidx/constraintlayout/widget/Group;",
        "getDisplayCopy",
        "()Landroidx/constraintlayout/widget/Group;",
        "setDisplayCopy",
        "(Landroidx/constraintlayout/widget/Group;)V",
        "gameID",
        "",
        "secondaryCta",
        "Landroid/widget/TextView;",
        "getSecondaryCta",
        "()Landroid/widget/TextView;",
        "setSecondaryCta",
        "(Landroid/widget/TextView;)V",
        "sectionData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;",
        "voucherCodeText",
        "getVoucherCodeText",
        "setVoucherCodeText",
        "voucherCodeTitle",
        "getVoucherCodeTitle",
        "setVoucherCodeTitle",
        "setData",
        "",
        "section",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "gameId",
        "stateChange",
        "buttonView",
        "",
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
.field private ICustomTabsCallback:Landroid/widget/TextView;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field extraCallback:Landroid/widget/ImageView;

.field onMessageChannelReady:Landroid/widget/TextView;

.field onNavigationEvent:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

.field onPostMessage:Landroid/widget/TextView;

.field private onRelationshipValidationResult:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/findMinMaxChildLayoutPositions;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/findMinMaxChildLayoutPositions;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lo/findMinMaxChildLayoutPositions;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    const-string p4, "context"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x7f0e0198

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 52
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->voucherCodeTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string/jumbo p3, "view.voucherCodeTitle"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/findMinMaxChildLayoutPositions;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 53
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->voucherCodeText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string/jumbo p3, "view.voucherCodeText"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/findMinMaxChildLayoutPositions;->onPostMessage:Landroid/widget/TextView;

    .line 54
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo p3, "view.secondaryCta"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/findMinMaxChildLayoutPositions;->onMessageChannelReady:Landroid/widget/TextView;

    .line 55
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string/jumbo p3, "view.displayCopy"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/findMinMaxChildLayoutPositions;->onNavigationEvent:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 56
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    const-string/jumbo p2, "view.copyCode"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions;->extraCallback:Landroid/widget/ImageView;

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lo/findMinMaxChildLayoutPositions;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/findMinMaxChildLayoutPositions;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/findMinMaxChildLayoutPositions;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/findMinMaxChildLayoutPositions;Z)V
    .locals 2

    .line 3102
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v0, Lo/findMinMaxChildLayoutPositions$onPostMessage;

    invoke-direct {v0, p0, p1}, Lo/findMinMaxChildLayoutPositions$onPostMessage;-><init>(Lo/findMinMaxChildLayoutPositions;Z)V

    check-cast v0, Lo/getServerTime;

    const-string p0, "command"

    invoke-static {v0, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4018
    new-instance p0, Lo/updateItemAt$extraCallback;

    invoke-direct {p0, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast p0, Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1, p0}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/findMinMaxChildLayoutPositions;->onRelationshipValidationResult:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/findMinMaxChildLayoutPositions;->onRelationshipValidationResult:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/findMinMaxChildLayoutPositions;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/findMinMaxChildLayoutPositions;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final setCopyCode(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions;->extraCallback:Landroid/widget/ImageView;

    return-void
.end method

.method public final setData(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;Lo/hasGapsToFix$onMessageChannelReady;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "section"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p3, p0, Lo/findMinMaxChildLayoutPositions;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 63
    iget-object p3, p0, Lo/findMinMaxChildLayoutPositions;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 1086
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;->extraCallback:Ljava/lang/String;

    .line 63
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p3, p0, Lo/findMinMaxChildLayoutPositions;->onPostMessage:Landroid/widget/TextView;

    .line 1087
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;->onNavigationEvent:Ljava/lang/String;

    .line 64
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p3, p0, Lo/findMinMaxChildLayoutPositions;->onMessageChannelReady:Landroid/widget/TextView;

    .line 1088
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v0, :cond_0

    .line 2052
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p3, p0, Lo/findMinMaxChildLayoutPositions;->onMessageChannelReady:Landroid/widget/TextView;

    check-cast p3, Landroid/view/View;

    new-instance v0, Lo/findMinMaxChildLayoutPositions$ICustomTabsCallback;

    invoke-direct {v0, p1, p2}, Lo/findMinMaxChildLayoutPositions$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p3, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 2085
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;->onMessageChannelReady:Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x521dd8ce

    const/16 v1, 0x8

    if-eq p3, v0, :cond_5

    const v0, 0x63a518c2

    if-eq p3, v0, :cond_4

    const v0, 0x6f7e005a

    if-eq p3, v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "display_w_copy"

    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroid/content/ClipboardManager;

    .line 76
    iget-object p3, p0, Lo/findMinMaxChildLayoutPositions;->extraCallback:Landroid/widget/ImageView;

    check-cast p3, Landroid/view/View;

    new-instance v0, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;

    invoke-direct {v0, p0, p2, p1}, Lo/findMinMaxChildLayoutPositions$onNavigationEvent;-><init>(Lo/findMinMaxChildLayoutPositions;Landroid/content/ClipboardManager;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p3, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 75
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "display"

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 72
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions;->extraCallback:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$gone"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    const-string p1, "button"

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 93
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions;->onNavigationEvent:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions;->extraCallback:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions;->onMessageChannelReady:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final setDisplayCopy(Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions;->onNavigationEvent:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    return-void
.end method

.method public final setSecondaryCta(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions;->onMessageChannelReady:Landroid/widget/TextView;

    return-void
.end method

.method public final setVoucherCodeText(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions;->onPostMessage:Landroid/widget/TextView;

    return-void
.end method

.method public final setVoucherCodeTitle(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions;->ICustomTabsCallback:Landroid/widget/TextView;

    return-void
.end method
