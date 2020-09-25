.class final Lo/getAndroidMinimumVersion$9;
.super Lo/onSessionDestroyed;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAndroidMinimumVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getAndroidMinimumVersion;


# direct methods
.method constructor <init>(Lo/getAndroidMinimumVersion;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lo/getAndroidMinimumVersion$9;->onPostMessage:Lo/getAndroidMinimumVersion;

    invoke-direct {p0}, Lo/onSessionDestroyed;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 1

    .line 374
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    .line 375
    iget-object p1, p0, Lo/getAndroidMinimumVersion$9;->onPostMessage:Lo/getAndroidMinimumVersion;

    .line 1059
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->onRelationshipValidationResult:Landroid/view/View;

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/getAndroidMinimumVersion$9;->onPostMessage:Lo/getAndroidMinimumVersion;

    sget v0, Lo/toStringMap$onTransact;->mtrl_picker_toggle_to_year_selection:I

    .line 377
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/getAndroidMinimumVersion$9;->onPostMessage:Lo/getAndroidMinimumVersion;

    sget v0, Lo/toStringMap$onTransact;->mtrl_picker_toggle_to_day_selection:I

    .line 378
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 375
    :goto_0
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->onRelationshipValidationResult(Ljava/lang/CharSequence;)V

    return-void
.end method
