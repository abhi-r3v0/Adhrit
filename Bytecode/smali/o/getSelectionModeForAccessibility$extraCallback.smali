.class final Lo/getSelectionModeForAccessibility$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSelectionModeForAccessibility;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/performAccessibilityActionForItem$extraCallback;


# direct methods
.method constructor <init>(Lo/performAccessibilityActionForItem$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/getSelectionModeForAccessibility$extraCallback;->extraCallback:Lo/performAccessibilityActionForItem$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lo/getSelectionModeForAccessibility$extraCallback;->extraCallback:Lo/performAccessibilityActionForItem$extraCallback;

    .line 1016
    iget-object p1, p1, Lo/performAccessibilityActionForItem$extraCallback;->onPostMessage:Lo/getServerTime;

    if-eqz p1, :cond_0

    .line 116
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method
