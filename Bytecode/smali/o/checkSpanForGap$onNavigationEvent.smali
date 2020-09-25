.class final Lo/checkSpanForGap$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Ljava/util/List;

.field final synthetic extraCallback:Lo/checkSpanForGap;

.field final synthetic onMessageChannelReady:Ljava/util/List;

.field final synthetic onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/checkSpanForGap;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lo/checkSpanForGap$onNavigationEvent;->extraCallback:Lo/checkSpanForGap;

    iput-object p2, p0, Lo/checkSpanForGap$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    iput-object p3, p0, Lo/checkSpanForGap$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    iput p4, p0, Lo/checkSpanForGap$onNavigationEvent;->onNavigationEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 224
    new-instance v0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;

    invoke-direct {v0, p0}, Lo/checkSpanForGap$onNavigationEvent$extraCallback;-><init>(Lo/checkSpanForGap$onNavigationEvent;)V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    const-string v1, "DiffUtil.calculateDiff(o\u2026         }\n            })"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lo/checkSpanForGap;->onNavigationEvent()Lo/checkSpanForGap$ICustomTabsCallback;

    move-result-object v1

    new-instance v2, Lo/checkSpanForGap$onNavigationEvent$4;

    invoke-direct {v2, p0, v0}, Lo/checkSpanForGap$onNavigationEvent$4;-><init>(Lo/checkSpanForGap$onNavigationEvent;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/checkSpanForGap$ICustomTabsCallback;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
