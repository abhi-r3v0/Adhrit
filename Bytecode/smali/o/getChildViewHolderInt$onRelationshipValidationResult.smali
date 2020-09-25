.class final Lo/getChildViewHolderInt$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildViewHolderInt;
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
        "Lo/findContainingItemView$onNavigationEvent;",
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$WinMachineViewData;",
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
.field private synthetic onNavigationEvent:Lo/getChildViewHolderInt;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt;)V
    .locals 0

    iput-object p1, p0, Lo/getChildViewHolderInt$onRelationshipValidationResult;->onNavigationEvent:Lo/getChildViewHolderInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 54
    check-cast p1, Lo/findContainingItemView$onNavigationEvent;

    .line 1258
    iget-object v0, p0, Lo/getChildViewHolderInt$onRelationshipValidationResult;->onNavigationEvent:Lo/getChildViewHolderInt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getChildViewHolderInt;->onPostMessage(Lo/getChildViewHolderInt;Z)V

    .line 1259
    iget-object v0, p0, Lo/getChildViewHolderInt$onRelationshipValidationResult;->onNavigationEvent:Lo/getChildViewHolderInt;

    .line 1301
    iget p1, p1, Lo/findContainingItemView$onNavigationEvent;->ICustomTabsCallback:I

    .line 1259
    invoke-static {v0, p1}, Lo/getChildViewHolderInt;->ICustomTabsCallback(Lo/getChildViewHolderInt;I)V

    .line 1260
    iget-object p1, p0, Lo/getChildViewHolderInt$onRelationshipValidationResult;->onNavigationEvent:Lo/getChildViewHolderInt;

    invoke-static {p1}, Lo/getChildViewHolderInt;->asInterface(Lo/getChildViewHolderInt;)V

    return-void
.end method
