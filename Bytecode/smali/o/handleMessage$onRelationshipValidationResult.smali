.class final Lo/handleMessage$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSessionToken$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/handleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/handleMessage;


# direct methods
.method constructor <init>(Lo/handleMessage;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lo/handleMessage$onRelationshipValidationResult;->onMessageChannelReady:Lo/handleMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/AudioAttributesImplBaseParcelizer;Z)V
    .locals 2

    .line 769
    instance-of v0, p1, Lo/getItem;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->asBinder()Lo/AudioAttributesImplBaseParcelizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    .line 772
    :cond_0
    iget-object v0, p0, Lo/handleMessage$onRelationshipValidationResult;->onMessageChannelReady:Lo/handleMessage;

    .line 2158
    iget-object v0, v0, Lo/AudioAttributesCompatParcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    if-eqz v0, :cond_1

    .line 774
    invoke-interface {v0, p1, p2}, Lo/getSessionToken$extraCallback;->onNavigationEvent(Lo/AudioAttributesImplBaseParcelizer;Z)V

    :cond_1
    return-void
.end method

.method public final onPostMessage(Lo/AudioAttributesImplBaseParcelizer;)Z
    .locals 2

    .line 760
    iget-object v0, p0, Lo/handleMessage$onRelationshipValidationResult;->onMessageChannelReady:Lo/handleMessage;

    invoke-static {v0}, Lo/handleMessage;->onMessageChannelReady(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 762
    :cond_0
    move-object v0, p1

    check-cast v0, Lo/getItem;

    invoke-virtual {v0}, Lo/getItem;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 763
    iget-object v0, p0, Lo/handleMessage$onRelationshipValidationResult;->onMessageChannelReady:Lo/handleMessage;

    .line 1158
    iget-object v0, v0, Lo/AudioAttributesCompatParcelizer;->onMessageChannelReady:Lo/getSessionToken$extraCallback;

    if-eqz v0, :cond_1

    .line 764
    invoke-interface {v0, p1}, Lo/getSessionToken$extraCallback;->onPostMessage(Lo/AudioAttributesImplBaseParcelizer;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
