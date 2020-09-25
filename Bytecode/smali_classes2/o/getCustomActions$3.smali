.class final Lo/getCustomActions$3;
.super Lo/getCustomActions$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCustomActions;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getCustomActions;


# direct methods
.method constructor <init>(Lo/getCustomActions;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lo/getCustomActions$3;->ICustomTabsCallback:Lo/getCustomActions;

    invoke-direct {p0}, Lo/getCustomActions$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/getCustomActions$3;->ICustomTabsCallback:Lo/getCustomActions;

    iget v0, v0, Lo/getCustomActions;->extraCallback:I

    if-eq v0, p1, :cond_0

    .line 216
    iget-object v0, p0, Lo/getCustomActions$3;->ICustomTabsCallback:Lo/getCustomActions;

    iput p1, v0, Lo/getCustomActions;->extraCallback:I

    .line 217
    iget-object p1, p0, Lo/getCustomActions$3;->ICustomTabsCallback:Lo/getCustomActions;

    iget-object p1, p1, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getCustomActions$onMessageChannelReady;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 224
    iget-object p1, p0, Lo/getCustomActions$3;->ICustomTabsCallback:Lo/getCustomActions;

    invoke-virtual {p1}, Lo/getCustomActions;->onNavigationEvent()V

    :cond_0
    return-void
.end method
