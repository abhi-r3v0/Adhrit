.class final Lo/PopupMenu$OnDismissListener$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PopupMenu$OnDismissListener;
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
        "TS;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000128\u0010\u0002\u001a4\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u0006 \u0008*\u001a\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003j\u0004\u0018\u0001`\u00070\u0003j\u0002`\u0007H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/util/ArrayMap;",
        "",
        "Lcom/cred/pay/ui/visa/RequestId;",
        "Lcom/cred/pay/repository/visa/ViesEligibilityResponse;",
        "Lcom/cred/pay/ui/visa/EligibilityStatus;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/PopupMenu$OnDismissListener;


# direct methods
.method constructor <init>(Lo/PopupMenu$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$OnDismissListener$onPostMessage;->onNavigationEvent:Lo/PopupMenu$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 1054
    iget-object p1, p0, Lo/PopupMenu$OnDismissListener$onPostMessage;->onNavigationEvent:Lo/PopupMenu$OnDismissListener;

    invoke-static {p1}, Lo/PopupMenu$OnDismissListener;->extraCallback(Lo/PopupMenu$OnDismissListener;)V

    return-void
.end method
