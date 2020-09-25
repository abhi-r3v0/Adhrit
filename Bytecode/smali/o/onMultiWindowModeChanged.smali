.class public final Lo/onMultiWindowModeChanged;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onMultiWindowModeChanged$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\"B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J,\u0010\u0019\u001a\u00020\u00122\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001bH\u0002J\u0006\u0010\u001e\u001a\u00020\u0012J\u000e\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/widget/ErrorStateView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "ctaNeu",
        "Lcom/dreamplug/ui/NeuButton;",
        "errorHeader",
        "Landroid/widget/TextView;",
        "errorSubHeader",
        "image",
        "Landroid/widget/ImageView;",
        "onCtaClick",
        "Lkotlin/Function0;",
        "",
        "getOnCtaClick",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnCtaClick",
        "(Lkotlin/jvm/functions/Function0;)V",
        "parentLayout",
        "Landroid/view/View;",
        "ctaClickEvent",
        "source",
        "",
        "errorType",
        "healthStatus",
        "hide",
        "setData",
        "data",
        "Lcom/dreamplug/fabrik/helper/ui/widget/ErrorStateView$ErrorStateData;",
        "ErrorStateData",
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
.field private ICustomTabsCallback:Landroid/widget/ImageView;

.field private extraCallback:Landroid/widget/TextView;

.field private onNavigationEvent:Lo/saveOldPosition;

.field private onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/onMultiWindowModeChanged;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/onMultiWindowModeChanged;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x7f0e020a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 p2, 0x8

    .line 41
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0b0897

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.text_1)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onMultiWindowModeChanged;->extraCallback:Landroid/widget/TextView;

    const p2, 0x7f0b0898

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.text_2)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onMultiWindowModeChanged;->onPostMessage:Landroid/widget/TextView;

    const p2, 0x7f0b02e7

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.error_image)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/onMultiWindowModeChanged;->ICustomTabsCallback:Landroid/widget/ImageView;

    const p2, 0x7f0b06c7

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.refreshButton)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/saveOldPosition;

    iput-object p1, p0, Lo/onMultiWindowModeChanged;->onNavigationEvent:Lo/saveOldPosition;

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lo/onMultiWindowModeChanged;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 5043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "source"

    invoke-direct {v2, v3, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    .line 6043
    new-instance p0, Lo/addWrite;

    const-string v2, "error_type"

    invoke-direct {p0, v2, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object p0, v1, p1

    .line 7043
    new-instance p0, Lo/addWrite;

    const-string p1, "health_status"

    invoke-direct {p0, p1, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "pairs"

    .line 4066
    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7105
    new-instance p0, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "common_error_try_again_clicked"

    .line 4066
    invoke-static {p1, p0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method


# virtual methods
.method public final setData(Lo/onMultiWindowModeChanged$onPostMessage;)V
    .locals 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lo/onMultiWindowModeChanged;->extraCallback:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v2, "errorHeader"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    .line 1022
    iget v2, p1, Lo/onMultiWindowModeChanged$onPostMessage;->onNavigationEvent:I

    .line 50
    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lo/onMultiWindowModeChanged;->onPostMessage:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string v2, "errorSubHeader"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    .line 1023
    iget v2, p1, Lo/onMultiWindowModeChanged$onPostMessage;->onMessageChannelReady:I

    .line 51
    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lo/onMultiWindowModeChanged;->onNavigationEvent:Lo/saveOldPosition;

    const-string v2, "ctaNeu"

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    .line 1024
    iget v3, p1, Lo/onMultiWindowModeChanged$onPostMessage;->extraCallback:I

    .line 52
    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lo/onMultiWindowModeChanged;->onNavigationEvent:Lo/saveOldPosition;

    if-nez v1, :cond_3

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    check-cast v1, Landroid/view/View;

    new-instance v2, Lo/onMultiWindowModeChanged$onMessageChannelReady;

    invoke-direct {v2, p0, p1}, Lo/onMultiWindowModeChanged$onMessageChannelReady;-><init>(Lo/onMultiWindowModeChanged;Lo/onMultiWindowModeChanged$onPostMessage;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 57
    iget-object v1, p0, Lo/onMultiWindowModeChanged;->ICustomTabsCallback:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    const-string v2, "image"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    const v2, 0x7f080347

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x3

    new-array v2, v1, [Lo/addWrite;

    .line 1026
    iget-object v3, p1, Lo/onMultiWindowModeChanged$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 1043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v0

    const/4 v0, 0x1

    .line 2027
    iget-object v3, p1, Lo/onMultiWindowModeChanged$onPostMessage;->asBinder:Ljava/lang/String;

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "error_type"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v0

    const/4 v0, 0x2

    .line 3028
    iget-object p1, p1, Lo/onMultiWindowModeChanged$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string v4, "health_status"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const-string p1, "pairs"

    .line 59
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "common_error_empty_state_appeared"

    .line 58
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final setOnCtaClick(Lo/getServerTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
