.class final Lo/requestSimpleAnimationsInNextLayout$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestSimpleAnimationsInNextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setExactMeasureSpecsFrom;

.field private synthetic onMessageChannelReady:Lo/getSelectionModeForAccessibility;


# direct methods
.method constructor <init>(Lo/getSelectionModeForAccessibility;Lo/setExactMeasureSpecsFrom;)V
    .locals 0

    iput-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$onRelationshipValidationResult;->onMessageChannelReady:Lo/getSelectionModeForAccessibility;

    iput-object p2, p0, Lo/requestSimpleAnimationsInNextLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setExactMeasureSpecsFrom;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    iget-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$onRelationshipValidationResult;->onMessageChannelReady:Lo/getSelectionModeForAccessibility;

    iget-object v0, p0, Lo/requestSimpleAnimationsInNextLayout$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setExactMeasureSpecsFrom;

    .line 2020
    iget v0, v0, Lo/setExactMeasureSpecsFrom;->ICustomTabsCallback:I

    const/4 v1, 0x1

    .line 1048
    invoke-virtual {p1, v0, v1}, Lo/getSelectionModeForAccessibility;->onPostMessage(II)V

    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
