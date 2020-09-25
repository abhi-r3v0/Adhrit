.class final Lo/addIdTokenListener$2;
.super Lo/onSessionDestroyed;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addIdTokenListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/addIdTokenListener;


# direct methods
.method constructor <init>(Lo/addIdTokenListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/addIdTokenListener$2;->onNavigationEvent:Lo/addIdTokenListener;

    invoke-direct {p0}, Lo/onSessionDestroyed;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 64
    iget-object p1, p0, Lo/addIdTokenListener$2;->onNavigationEvent:Lo/addIdTokenListener;

    invoke-virtual {p1}, Lo/addIdTokenListener;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    .line 71
    iget-object p1, p0, Lo/addIdTokenListener$2;->onNavigationEvent:Lo/addIdTokenListener;

    .line 1144
    iget-boolean p1, p1, Lo/addIdTokenListener;->onMessageChannelReady:Z

    .line 71
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->onMessageChannelReady(Z)V

    .line 72
    iget-object p1, p0, Lo/addIdTokenListener$2;->onNavigationEvent:Lo/addIdTokenListener;

    invoke-virtual {p1}, Lo/addIdTokenListener;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->extraCallback(Z)V

    return-void
.end method
