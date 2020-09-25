.class final Lo/write$3$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/write$3;->onItemHoverEnter(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/write$ICustomTabsCallback;

.field final synthetic onMessageChannelReady:Lo/AudioAttributesImplBaseParcelizer;

.field final synthetic onNavigationEvent:Landroid/view/MenuItem;

.field final synthetic onPostMessage:Lo/write$3;


# direct methods
.method constructor <init>(Lo/write$3;Lo/write$ICustomTabsCallback;Landroid/view/MenuItem;Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lo/write$3$5;->onPostMessage:Lo/write$3;

    iput-object p2, p0, Lo/write$3$5;->ICustomTabsCallback:Lo/write$ICustomTabsCallback;

    iput-object p3, p0, Lo/write$3$5;->onNavigationEvent:Landroid/view/MenuItem;

    iput-object p4, p0, Lo/write$3$5;->onMessageChannelReady:Lo/AudioAttributesImplBaseParcelizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 178
    iget-object v0, p0, Lo/write$3$5;->ICustomTabsCallback:Lo/write$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lo/write$3$5;->onPostMessage:Lo/write$3;

    iget-object v0, v0, Lo/write$3;->onPostMessage:Lo/write;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/write;->onRelationshipValidationResult:Z

    .line 182
    iget-object v0, p0, Lo/write$3$5;->ICustomTabsCallback:Lo/write$ICustomTabsCallback;

    iget-object v0, v0, Lo/write$ICustomTabsCallback;->onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Z)V

    .line 183
    iget-object v0, p0, Lo/write$3$5;->onPostMessage:Lo/write$3;

    iget-object v0, v0, Lo/write$3;->onPostMessage:Lo/write;

    iput-boolean v1, v0, Lo/write;->onRelationshipValidationResult:Z

    .line 187
    :cond_0
    iget-object v0, p0, Lo/write$3$5;->onNavigationEvent:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/write$3$5;->onNavigationEvent:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lo/write$3$5;->onMessageChannelReady:Lo/AudioAttributesImplBaseParcelizer;

    iget-object v1, p0, Lo/write$3$5;->onNavigationEvent:Landroid/view/MenuItem;

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1975
    invoke-virtual {v0, v1, v2, v3}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Landroid/view/MenuItem;Lo/getSessionToken;I)Z

    :cond_1
    return-void
.end method
