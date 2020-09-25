.class final Lo/peekValue$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/peekValue;-><init>()V
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
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private synthetic onNavigationEvent:Lo/peekValue;


# direct methods
.method constructor <init>(Lo/peekValue;)V
    .locals 0

    iput-object p1, p0, Lo/peekValue$ICustomTabsCallback;->onNavigationEvent:Lo/peekValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 1043
    iget-object p1, p0, Lo/peekValue$ICustomTabsCallback;->onNavigationEvent:Lo/peekValue;

    invoke-static {p1}, Lo/peekValue;->extraCallback(Lo/peekValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1044
    iget-object p1, p0, Lo/peekValue$ICustomTabsCallback;->onNavigationEvent:Lo/peekValue;

    invoke-static {p1}, Lo/peekValue;->onMessageChannelReady(Lo/peekValue;)V

    :cond_0
    return-void
.end method
