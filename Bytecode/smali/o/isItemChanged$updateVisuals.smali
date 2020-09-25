.class final Lo/isItemChanged$updateVisuals;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/addWrite<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lo/snapFromFling$extraCallback;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000122\u0010\u0002\u001a.\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004 \u0007*\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lkotlin/Pair;",
        "",
        "Lcom/dreamplug/upi/UpiViewModel$SetMPinItem;",
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
.field private synthetic onMessageChannelReady:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$updateVisuals;->onMessageChannelReady:Lo/isItemChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 67
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1328
    :goto_0
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_3

    .line 2027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1329
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x2f6e0a

    if-eq v1, v2, :cond_2

    const v2, 0x67622a8

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "retry"

    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1331
    iget-object v0, p0, Lo/isItemChanged$updateVisuals;->onMessageChannelReady:Lo/isItemChanged;

    .line 2028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1331
    check-cast p1, Lo/snapFromFling$extraCallback;

    invoke-virtual {v0, p1}, Lo/isItemChanged;->extraCallback(Lo/snapFromFling$extraCallback;)V

    return-void

    :cond_2
    const-string v1, "edit"

    .line 1333
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1334
    iget-object v0, p0, Lo/isItemChanged$updateVisuals;->onMessageChannelReady:Lo/isItemChanged;

    .line 3028
    iget-object v1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1334
    check-cast v1, Lo/snapFromFling$extraCallback;

    .line 3054
    iget-object v1, v1, Lo/snapFromFling$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 4028
    iget-object v2, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1334
    check-cast v2, Lo/snapFromFling$extraCallback;

    .line 4054
    iget-object v2, v2, Lo/snapFromFling$extraCallback;->extraCallback:Ljava/lang/String;

    .line 5028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1334
    check-cast p1, Lo/snapFromFling$extraCallback;

    invoke-virtual {v0, v1, v2, p1}, Lo/isItemChanged;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/snapFromFling$extraCallback;)V

    :cond_3
    :goto_1
    return-void
.end method
