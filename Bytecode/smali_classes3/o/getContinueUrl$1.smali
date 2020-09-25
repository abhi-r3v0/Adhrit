.class final Lo/getContinueUrl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContinueUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getContinueUrl;

.field private synthetic onMessageChannelReady:I


# direct methods
.method constructor <init>(Lo/getContinueUrl;I)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/getContinueUrl$1;->ICustomTabsCallback:Lo/getContinueUrl;

    iput p2, p0, Lo/getContinueUrl$1;->onMessageChannelReady:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget p1, p0, Lo/getContinueUrl$1;->onMessageChannelReady:I

    iget-object v0, p0, Lo/getContinueUrl$1;->ICustomTabsCallback:Lo/getContinueUrl;

    .line 1031
    iget-object v0, v0, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 1283
    iget-object v0, v0, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    .line 87
    iget v0, v0, Lo/setUrl;->ICustomTabsCallback:I

    invoke-static {p1, v0}, Lo/setUrl;->onNavigationEvent(II)Lo/setUrl;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lo/getContinueUrl$1;->ICustomTabsCallback:Lo/getContinueUrl;

    .line 2031
    iget-object v0, v0, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 88
    invoke-virtual {v0, p1}, Lo/getAndroidMinimumVersion;->extraCallback(Lo/setUrl;)V

    .line 89
    iget-object p1, p0, Lo/getContinueUrl$1;->ICustomTabsCallback:Lo/getContinueUrl;

    .line 3031
    iget-object p1, p1, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 89
    sget-object v0, Lo/getAndroidMinimumVersion$onPostMessage;->onPostMessage:Lo/getAndroidMinimumVersion$onPostMessage;

    invoke-virtual {p1, v0}, Lo/getAndroidMinimumVersion;->extraCallback(Lo/getAndroidMinimumVersion$onPostMessage;)V

    return-void
.end method
