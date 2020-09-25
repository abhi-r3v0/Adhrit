.class final Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetPositionRecordsForRemove;-><init>()V
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
        "Lo/saveOldPositions$onPostMessage;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberViewModel$OpenInadequateCurrencyDialog;",
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
.field private synthetic onNavigationEvent:Lo/offsetPositionRecordsForRemove;


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 56
    check-cast p1, Lo/saveOldPositions$onPostMessage;

    .line 1068
    new-instance v7, Lo/onGenericMotionEvent;

    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "requireContext()"

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->onTransact(Lo/offsetPositionRecordsForRemove;)Lo/offsetPositionRecordsForRemove$ICustomTabsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 2147
    iget-object v3, p1, Lo/saveOldPositions$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 2148
    iget-object v4, p1, Lo/saveOldPositions$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 2149
    iget-object v5, p1, Lo/saveOldPositions$onPostMessage;->onPostMessage:Ljava/lang/String;

    const-string v6, "lucky_number"

    move-object v0, v7

    .line 1068
    invoke-direct/range {v0 .. v6}, Lo/onGenericMotionEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1073
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;I)V

    return-void
.end method
