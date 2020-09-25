.class final Lo/getDiffCallback$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDiffCallback;->onStart()V
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
        "onCancel",
        "com/dreamplug/fabrik/ui/control/link/CardLinkPitchDialog$onStart$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getDiffCallback;


# direct methods
.method constructor <init>(Lo/getDiffCallback;)V
    .locals 0

    iput-object p1, p0, Lo/getDiffCallback$ICustomTabsCallback;->onPostMessage:Lo/getDiffCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 1043
    new-instance v1, Lo/addWrite;

    const-string v2, "cta_type"

    const-string/jumbo v3, "skip"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "pairs"

    .line 103
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "link_card_init_screen_cta"

    .line 103
    invoke-static {p1, v1}, Lo/getDiffCallback;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    iget-object p1, p0, Lo/getDiffCallback$ICustomTabsCallback;->onPostMessage:Lo/getDiffCallback;

    invoke-static {p1}, Lo/getDiffCallback;->onNavigationEvent(Lo/getDiffCallback;)V

    return-void
.end method
