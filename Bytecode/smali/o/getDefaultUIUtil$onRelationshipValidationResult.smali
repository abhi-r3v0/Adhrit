.class final Lo/getDefaultUIUtil$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDefaultUIUtil;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/lending/exitintent/StashExitIntentVariant2$onViewCreated$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getDefaultUIUtil;


# direct methods
.method constructor <init>(Lo/getDefaultUIUtil;)V
    .locals 0

    iput-object p1, p0, Lo/getDefaultUIUtil$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getDefaultUIUtil;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 37
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    iget-object p1, p0, Lo/getDefaultUIUtil$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getDefaultUIUtil;

    invoke-static {p1}, Lo/getDefaultUIUtil;->extraCallback(Lo/getDefaultUIUtil;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lo/getDefaultUIUtil$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getDefaultUIUtil;

    .line 2044
    iget v0, v0, Lo/getDefaultUIUtil;->onPostMessage:I

    const-string v1, "$this$getOrNull"

    .line 1113
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v0, :cond_0

    const-string v1, "$this$lastIndex"

    .line 2266
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 2266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1113
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;

    if-eqz p1, :cond_1

    .line 4019
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p1, :cond_1

    .line 1113
    iget-object v0, p0, Lo/getDefaultUIUtil$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getDefaultUIUtil;

    invoke-static {v0, p1}, Lo/getDefaultUIUtil;->extraCallback(Lo/getDefaultUIUtil;Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V

    .line 37
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
