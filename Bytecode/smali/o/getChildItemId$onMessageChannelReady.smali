.class final Lo/getChildItemId$onMessageChannelReady;
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
        "Ljava/lang/Throwable;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onResult",
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachinePreFetcher$addLottiePrefetchTasks$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getChildItemId;


# direct methods
.method constructor <init>(Lo/getChildItemId;)V
    .locals 0

    iput-object p1, p0, Lo/getChildItemId$onMessageChannelReady;->onNavigationEvent:Lo/getChildItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 1

    .line 1068
    iget-object p1, p0, Lo/getChildItemId$onMessageChannelReady;->onNavigationEvent:Lo/getChildItemId;

    .line 2017
    iget v0, p1, Lo/getChildItemId;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    .line 3017
    iput v0, p1, Lo/getChildItemId;->ICustomTabsCallback:I

    .line 1069
    iget-object p1, p0, Lo/getChildItemId$onMessageChannelReady;->onNavigationEvent:Lo/getChildItemId;

    invoke-static {p1}, Lo/getChildItemId;->onMessageChannelReady(Lo/getChildItemId;)V

    return-void
.end method
