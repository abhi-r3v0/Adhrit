.class final Lo/onInitializeAccessibilityNodeInfoForItem$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onInitializeAccessibilityNodeInfoForItem;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "haveInternet",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onInitializeAccessibilityNodeInfoForItem;


# direct methods
.method constructor <init>(Lo/onInitializeAccessibilityNodeInfoForItem;)V
    .locals 0

    iput-object p1, p0, Lo/onInitializeAccessibilityNodeInfoForItem$onPostMessage;->onPostMessage:Lo/onInitializeAccessibilityNodeInfoForItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    .line 1057
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1058
    iget-object p1, p0, Lo/onInitializeAccessibilityNodeInfoForItem$onPostMessage;->onPostMessage:Lo/onInitializeAccessibilityNodeInfoForItem;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 1059
    sget-object p1, Lo/onLayoutCompleted;->onTransact:Lo/onLayoutCompleted;

    new-instance v0, Lo/throwIfInMutationOperation;

    iget-object v1, p0, Lo/onInitializeAccessibilityNodeInfoForItem$onPostMessage;->onPostMessage:Lo/onInitializeAccessibilityNodeInfoForItem;

    .line 2025
    iget-object v1, v1, Lo/onInitializeAccessibilityNodeInfoForItem;->extraCallback:Lo/getRowCountForAccessibility$ICustomTabsCallback;

    if-nez v1, :cond_0

    .line 1059
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
