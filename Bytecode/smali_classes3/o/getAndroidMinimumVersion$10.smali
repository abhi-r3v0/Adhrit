.class final Lo/getAndroidMinimumVersion$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAndroidMinimumVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getAndroidMinimumVersion;


# direct methods
.method constructor <init>(Lo/getAndroidMinimumVersion;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lo/getAndroidMinimumVersion$10;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 422
    iget-object p1, p0, Lo/getAndroidMinimumVersion$10;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    .line 1356
    iget-object v0, p1, Lo/getAndroidMinimumVersion;->onMessageChannelReady:Lo/getAndroidMinimumVersion$onPostMessage;

    sget-object v1, Lo/getAndroidMinimumVersion$onPostMessage;->ICustomTabsCallback:Lo/getAndroidMinimumVersion$onPostMessage;

    if-ne v0, v1, :cond_0

    .line 1357
    sget-object v0, Lo/getAndroidMinimumVersion$onPostMessage;->onPostMessage:Lo/getAndroidMinimumVersion$onPostMessage;

    invoke-virtual {p1, v0}, Lo/getAndroidMinimumVersion;->extraCallback(Lo/getAndroidMinimumVersion$onPostMessage;)V

    return-void

    .line 1358
    :cond_0
    iget-object v0, p1, Lo/getAndroidMinimumVersion;->onMessageChannelReady:Lo/getAndroidMinimumVersion$onPostMessage;

    sget-object v1, Lo/getAndroidMinimumVersion$onPostMessage;->onPostMessage:Lo/getAndroidMinimumVersion$onPostMessage;

    if-ne v0, v1, :cond_1

    .line 1359
    sget-object v0, Lo/getAndroidMinimumVersion$onPostMessage;->ICustomTabsCallback:Lo/getAndroidMinimumVersion$onPostMessage;

    invoke-virtual {p1, v0}, Lo/getAndroidMinimumVersion;->extraCallback(Lo/getAndroidMinimumVersion$onPostMessage;)V

    :cond_1
    return-void
.end method
