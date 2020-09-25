.class final Lo/getComponents$2;
.super Lo/confirmPasswordReset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getComponents;


# direct methods
.method constructor <init>(Lo/getComponents;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lo/getComponents$2;->onMessageChannelReady:Lo/getComponents;

    invoke-direct {p0}, Lo/confirmPasswordReset;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 172
    iget-object p1, p0, Lo/getComponents$2;->onMessageChannelReady:Lo/getComponents;

    .line 3126
    iget-object p2, p1, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 3348
    iget-boolean p2, p2, Lo/FirebaseAnalytics;->INotificationSideChannel$Stub:Z

    if-eqz p2, :cond_0

    .line 172
    iget-object p2, p0, Lo/getComponents$2;->onMessageChannelReady:Lo/getComponents;

    .line 4126
    iget-object p2, p2, Lo/getComponents;->onNavigationEvent:Lo/FirebaseAnalytics;

    .line 4555
    iget-object p2, p2, Lo/FirebaseAnalytics;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    goto :goto_0

    .line 172
    :cond_0
    iget-object p2, p0, Lo/getComponents$2;->onMessageChannelReady:Lo/getComponents;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p1, p0, Lo/getComponents$2;->onMessageChannelReady:Lo/getComponents;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 174
    iget-object p1, p0, Lo/getComponents$2;->onMessageChannelReady:Lo/getComponents;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 0

    return-void
.end method
