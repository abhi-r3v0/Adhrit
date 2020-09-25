.class public final Lo/onGenericMotionEvent;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u001e\u001a\u00020\u001fH\u0016R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \r*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0016\u0010\u0016\u001a\n \r*\u0004\u0018\u00010\u00170\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013R\u0016\u0010\u001d\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/InadequateCurrencyBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "context",
        "Landroid/content/Context;",
        "id",
        "",
        "title",
        "content",
        "currencyType",
        "source",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "cta",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "ctaButton",
        "Landroid/widget/LinearLayout;",
        "ctaIcon",
        "Landroid/widget/ImageView;",
        "getCurrencyType",
        "()Ljava/lang/String;",
        "descriptionView",
        "getId",
        "image",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "isCoinFlow",
        "",
        "sheetView",
        "Landroid/view/View;",
        "getSource",
        "titleTv",
        "show",
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
.field final ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

.field private final ICustomTabsService:Landroid/widget/TextView;

.field final extraCallback:Ljava/lang/String;

.field private final getInterfaceDescriptor:Landroidx/appcompat/widget/AppCompatImageView;

.field private final newSession:Z

.field final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Landroid/view/View;

.field private final onPostMessage:Landroid/widget/TextView;

.field private final onRelationshipValidationResult:Landroid/widget/LinearLayout;

.field private final warmup:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyType"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f140105

    .line 23
    invoke-direct {p0, p1, v0}, Lo/createAbtInstance;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lo/onGenericMotionEvent;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p5, p0, Lo/onGenericMotionEvent;->onMessageChannelReady:Ljava/lang/String;

    iput-object p6, p0, Lo/onGenericMotionEvent;->extraCallback:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p5, 0x7f0e0104

    const/4 p6, 0x0

    invoke-virtual {p2, p5, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string p5, "LayoutInflater.from(cont\u2026msheet_util_dialog, null)"

    invoke-static {p2, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/onGenericMotionEvent;->onNavigationEvent:Landroid/view/View;

    .line 27
    sget p5, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onGenericMotionEvent;->onPostMessage:Landroid/widget/TextView;

    .line 28
    iget-object p2, p0, Lo/onGenericMotionEvent;->onNavigationEvent:Landroid/view/View;

    sget p5, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lo/onGenericMotionEvent;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    .line 29
    iget-object p2, p0, Lo/onGenericMotionEvent;->onNavigationEvent:Landroid/view/View;

    sget p5, Lo/getSwitchMinWidth$onPostMessage;->icon:I

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/onGenericMotionEvent;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    .line 30
    iget-object p2, p0, Lo/onGenericMotionEvent;->onNavigationEvent:Landroid/view/View;

    sget p5, Lo/getSwitchMinWidth$onPostMessage;->text:I

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onGenericMotionEvent;->ICustomTabsService:Landroid/widget/TextView;

    .line 31
    iget-object p2, p0, Lo/onGenericMotionEvent;->onNavigationEvent:Landroid/view/View;

    sget p5, Lo/getSwitchMinWidth$onPostMessage;->description:I

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onGenericMotionEvent;->warmup:Landroid/widget/TextView;

    .line 32
    iget-object p2, p0, Lo/onGenericMotionEvent;->onNavigationEvent:Landroid/view/View;

    sget p5, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lo/onGenericMotionEvent;->getInterfaceDescriptor:Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    iget-object p2, p0, Lo/onGenericMotionEvent;->onMessageChannelReady:Ljava/lang/String;

    const-string p5, "coins"

    invoke-static {p2, p5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lo/onGenericMotionEvent;->newSession:Z

    .line 36
    iget-object p2, p0, Lo/onGenericMotionEvent;->ICustomTabsService:Landroid/widget/TextView;

    const-string/jumbo p5, "titleTv"

    invoke-static {p2, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p2, p0, Lo/onGenericMotionEvent;->warmup:Landroid/widget/TextView;

    const-string p3, "descriptionView"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p2, p0, Lo/onGenericMotionEvent;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    const-string p3, "ctaButton"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance p3, Lo/onGenericMotionEvent$3;

    invoke-direct {p3, p0}, Lo/onGenericMotionEvent$3;-><init>(Lo/onGenericMotionEvent;)V

    check-cast p3, Lo/onDisconnectSetValue;

    invoke-static {p2, p3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 53
    iget-object p2, p0, Lo/onGenericMotionEvent;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    const-string p3, "ctaIcon"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p3, p0, Lo/onGenericMotionEvent;->newSession:Z

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object p2, p0, Lo/onGenericMotionEvent;->onPostMessage:Landroid/widget/TextView;

    const-string p3, "cta"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    iget-boolean p3, p0, Lo/onGenericMotionEvent;->newSession:Z

    if-eqz p3, :cond_1

    const p3, 0x7f13028c

    goto :goto_1

    :cond_1
    const p3, 0x7f13028e

    :goto_1
    invoke-static {p3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p2, p0, Lo/onGenericMotionEvent;->getInterfaceDescriptor:Landroidx/appcompat/widget/AppCompatImageView;

    iget-boolean p3, p0, Lo/onGenericMotionEvent;->newSession:Z

    if-eqz p3, :cond_2

    const p3, 0x7f080436

    goto :goto_2

    :cond_2
    const p3, 0x7f080437

    :goto_2
    invoke-static {p1, p3}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object p1, p0, Lo/onGenericMotionEvent;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/onGenericMotionEvent;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lo/onGenericMotionEvent;->newSession:Z

    return p0
.end method


# virtual methods
.method public final show()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Lo/addWrite;

    .line 61
    iget-object v2, p0, Lo/onGenericMotionEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 1043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "reward_ID"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 62
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v2}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "cred_balance"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 63
    iget-object v2, p0, Lo/onGenericMotionEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string v4, "currency"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 64
    iget-object v2, p0, Lo/onGenericMotionEvent;->extraCallback:Ljava/lang/String;

    .line 4043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "source"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 60
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "reward_purchase_failure_bottom_sheet_shown"

    .line 60
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 66
    invoke-super {p0}, Lo/createAbtInstance;->show()V

    return-void
.end method
