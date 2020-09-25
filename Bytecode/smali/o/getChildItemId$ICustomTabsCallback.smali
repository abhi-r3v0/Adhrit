.class final Lo/getChildItemId$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createMultiAutoCompleteTextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildItemId;->onPostMessage(Ljava/util/List;)V
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
        "Lo/createMultiAutoCompleteTextView<",
        "Lo/createCheckBox;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/airbnb/lottie/LottieComposition;",
        "kotlin.jvm.PlatformType",
        "onResult",
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachinePreFetcher$addLottiePrefetchTasks$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/createSeekBar;

.field private synthetic extraCallback:Lo/getChildItemId;


# direct methods
.method constructor <init>(Lo/createSeekBar;Lo/getChildItemId;)V
    .locals 0

    iput-object p1, p0, Lo/getChildItemId$ICustomTabsCallback;->ICustomTabsCallback:Lo/createSeekBar;

    iput-object p2, p0, Lo/getChildItemId$ICustomTabsCallback;->extraCallback:Lo/getChildItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 3

    .line 1061
    iget-object p1, p0, Lo/getChildItemId$ICustomTabsCallback;->extraCallback:Lo/getChildItemId;

    .line 2017
    iget-object p1, p1, Lo/getChildItemId;->onMessageChannelReady:Ljava/util/Map;

    .line 1061
    iget-object v0, p0, Lo/getChildItemId$ICustomTabsCallback;->ICustomTabsCallback:Lo/createSeekBar;

    const-string/jumbo v1, "task"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    iget-object p1, p0, Lo/getChildItemId$ICustomTabsCallback;->extraCallback:Lo/getChildItemId;

    .line 3017
    iget v0, p1, Lo/getChildItemId;->extraCallback:I

    add-int/2addr v0, v1

    .line 4017
    iput v0, p1, Lo/getChildItemId;->extraCallback:I

    .line 1063
    iget-object p1, p0, Lo/getChildItemId$ICustomTabsCallback;->extraCallback:Lo/getChildItemId;

    invoke-static {p1}, Lo/getChildItemId;->onMessageChannelReady(Lo/getChildItemId;)V

    return-void
.end method
