.class final Lo/getReason$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getReason;->extraCallback(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getReason;

.field private synthetic extraCallback:Landroid/widget/TextView;

.field private synthetic onMessageChannelReady:Landroid/widget/TextView;

.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/getReason;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lo/getReason$2;->ICustomTabsCallback:Lo/getReason;

    iput p2, p0, Lo/getReason$2;->onPostMessage:I

    iput-object p3, p0, Lo/getReason$2;->extraCallback:Landroid/widget/TextView;

    iput p4, p0, Lo/getReason$2;->onNavigationEvent:I

    iput-object p5, p0, Lo/getReason$2;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 229
    iget-object p1, p0, Lo/getReason$2;->ICustomTabsCallback:Lo/getReason;

    iget v0, p0, Lo/getReason$2;->onPostMessage:I

    .line 1058
    iput v0, p1, Lo/getReason;->ICustomTabsCallback:I

    .line 230
    iget-object p1, p0, Lo/getReason$2;->ICustomTabsCallback:Lo/getReason;

    const/4 v0, 0x0

    .line 2058
    iput-object v0, p1, Lo/getReason;->onNavigationEvent:Landroid/animation/Animator;

    .line 231
    iget-object p1, p0, Lo/getReason$2;->extraCallback:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    .line 232
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget p1, p0, Lo/getReason$2;->onNavigationEvent:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lo/getReason$2;->ICustomTabsCallback:Lo/getReason;

    .line 3058
    iget-object p1, p1, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lo/getReason$2;->ICustomTabsCallback:Lo/getReason;

    .line 4058
    iget-object p1, p1, Lo/getReason;->onRelationshipValidationResult:Landroid/widget/TextView;

    .line 234
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    iget-object p1, p0, Lo/getReason$2;->onMessageChannelReady:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 239
    iget-object p1, p0, Lo/getReason$2;->onMessageChannelReady:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lo/getReason$2;->onMessageChannelReady:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
