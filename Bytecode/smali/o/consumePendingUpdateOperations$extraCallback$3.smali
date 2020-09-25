.class final Lo/consumePendingUpdateOperations$extraCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/consumePendingUpdateOperations$extraCallback;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/fabrik/ui/address/Address;",
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
.field private synthetic onNavigationEvent:Lo/consumePendingUpdateOperations$extraCallback;


# direct methods
.method constructor <init>(Lo/consumePendingUpdateOperations$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/consumePendingUpdateOperations$extraCallback$3;->onNavigationEvent:Lo/consumePendingUpdateOperations$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 1300
    iget-object p1, p0, Lo/consumePendingUpdateOperations$extraCallback$3;->onNavigationEvent:Lo/consumePendingUpdateOperations$extraCallback;

    iget-object p1, p1, Lo/consumePendingUpdateOperations$extraCallback;->ICustomTabsCallback:Lo/consumePendingUpdateOperations;

    .line 2025
    iget-object p1, p1, Lo/consumePendingUpdateOperations;->onPostMessage:Ljava/lang/String;

    .line 1300
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 1301
    iget-object p1, p0, Lo/consumePendingUpdateOperations$extraCallback$3;->onNavigationEvent:Lo/consumePendingUpdateOperations$extraCallback;

    iget-object p1, p1, Lo/consumePendingUpdateOperations$extraCallback;->ICustomTabsCallback:Lo/consumePendingUpdateOperations;

    iget-object v0, p0, Lo/consumePendingUpdateOperations$extraCallback$3;->onNavigationEvent:Lo/consumePendingUpdateOperations$extraCallback;

    iget-object v0, v0, Lo/consumePendingUpdateOperations$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    if-eqz v0, :cond_2

    .line 3015
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;->onMessageChannelReady:Ljava/util/List;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 3021
    :goto_2
    invoke-virtual {p1, v0}, Lo/consumePendingUpdateOperations;->onMessageChannelReady(Ljava/util/List;)V

    goto :goto_3

    .line 1303
    :cond_3
    iget-object p1, p0, Lo/consumePendingUpdateOperations$extraCallback$3;->onNavigationEvent:Lo/consumePendingUpdateOperations$extraCallback;

    iget-object p1, p1, Lo/consumePendingUpdateOperations$extraCallback;->ICustomTabsCallback:Lo/consumePendingUpdateOperations;

    .line 4317
    iget-object v1, p1, Lo/consumePendingUpdateOperations;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 5058
    invoke-virtual {p1, v1, v0}, Lo/consumePendingUpdateOperations;->onPostMessage(Ljava/lang/String;Z)V

    .line 1305
    :cond_4
    :goto_3
    iget-object p1, p0, Lo/consumePendingUpdateOperations$extraCallback$3;->onNavigationEvent:Lo/consumePendingUpdateOperations$extraCallback;

    iget-object p1, p1, Lo/consumePendingUpdateOperations$extraCallback;->ICustomTabsCallback:Lo/consumePendingUpdateOperations;

    .line 6021
    invoke-virtual {p1}, Lo/consumePendingUpdateOperations;->onPostMessage()V

    return-void
.end method
