.class final Lo/getExitTransition$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getExitTransition;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getExitTransition;


# direct methods
.method constructor <init>(Lo/getExitTransition;)V
    .locals 0

    iput-object p1, p0, Lo/getExitTransition$onPostMessage;->onMessageChannelReady:Lo/getExitTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 37
    iget-object p1, p0, Lo/getExitTransition$onPostMessage;->onMessageChannelReady:Lo/getExitTransition;

    const-string/jumbo p2, "toggle_checked"

    invoke-virtual {p1, p2}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    iget-object p1, p0, Lo/getExitTransition$onPostMessage;->onMessageChannelReady:Lo/getExitTransition;

    const-string/jumbo p2, "toggle_unchecked"

    invoke-virtual {p1, p2}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method
