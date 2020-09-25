.class final Lo/onAddFocusables$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onAddFocusables;->onMessageChannelReady(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onDismiss",
        "com/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentFailure$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/dispatchLastEvent;

.field private synthetic extraCallback:Lo/onAddFocusables;


# direct methods
.method constructor <init>(Lo/dispatchLastEvent;Lo/onAddFocusables;)V
    .locals 0

    iput-object p1, p0, Lo/onAddFocusables$onRelationshipValidationResult;->ICustomTabsCallback:Lo/dispatchLastEvent;

    iput-object p2, p0, Lo/onAddFocusables$onRelationshipValidationResult;->extraCallback:Lo/onAddFocusables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lo/onAddFocusables$onRelationshipValidationResult;->ICustomTabsCallback:Lo/dispatchLastEvent;

    .line 1056
    iget-boolean p1, p1, Lo/dispatchLastEvent;->onMessageChannelReady:Z

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Lo/onAddFocusables$onRelationshipValidationResult;->extraCallback:Lo/onAddFocusables;

    .line 2034
    iget-object p1, p1, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 2224
    iget-object p1, p1, Lo/onAddFocusables$extraCallback;->asInterface:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 149
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    .line 150
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    iget-object v0, p0, Lo/onAddFocusables$onRelationshipValidationResult;->extraCallback:Lo/onAddFocusables;

    .line 3034
    iget-object v0, v0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 3224
    iget-object v0, v0, Lo/onAddFocusables$extraCallback;->asInterface:Ljava/lang/String;

    .line 150
    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object p1, p0, Lo/onAddFocusables$onRelationshipValidationResult;->extraCallback:Lo/onAddFocusables;

    invoke-virtual {p1}, Lo/getSplitTrack;->onPostMessage()V

    return-void
.end method
