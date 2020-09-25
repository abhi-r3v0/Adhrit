.class final Lo/getAccessibilityNodeProvider$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAccessibilityNodeProvider;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/getAccessibilityNodeProvider$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getAccessibilityNodeProvider$onMessageChannelReady;

    invoke-direct {v0}, Lo/getAccessibilityNodeProvider$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/getAccessibilityNodeProvider$onMessageChannelReady;->extraCallback:Lo/getAccessibilityNodeProvider$onMessageChannelReady;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 112
    sget-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    invoke-static {v0}, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback(Lo/getAccessibilityNodeProvider;)Lo/sendAccessibilityEventUnchecked;

    move-result-object v0

    .line 1082
    iget-object v0, v0, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {v0}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object v0

    invoke-virtual {v0}, Lo/performAccessibilityAction;->extraCallback()V

    return-void
.end method
