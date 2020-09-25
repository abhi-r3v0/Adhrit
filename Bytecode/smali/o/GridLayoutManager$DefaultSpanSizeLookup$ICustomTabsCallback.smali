.class final Lo/GridLayoutManager$DefaultSpanSizeLookup$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GridLayoutManager$DefaultSpanSizeLookup;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
.field private synthetic onNavigationEvent:Lo/GridLayoutManager$DefaultSpanSizeLookup;


# direct methods
.method constructor <init>(Lo/GridLayoutManager$DefaultSpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$ICustomTabsCallback;->onNavigationEvent:Lo/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$ICustomTabsCallback;->onNavigationEvent:Lo/GridLayoutManager$DefaultSpanSizeLookup;

    const-string/jumbo v0, "schedule"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method
