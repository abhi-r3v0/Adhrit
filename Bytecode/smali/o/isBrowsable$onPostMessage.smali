.class final Lo/isBrowsable$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isBrowsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# static fields
.field static final extraCallback:Lo/isBrowsable$onPostMessage;

.field static final onNavigationEvent:Lo/isBrowsable$onPostMessage;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/Throwable;

.field final onMessageChannelReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 243
    sget-boolean v0, Lo/isBrowsable;->ICustomTabsCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    sput-object v1, Lo/isBrowsable$onPostMessage;->onNavigationEvent:Lo/isBrowsable$onPostMessage;

    .line 245
    sput-object v1, Lo/isBrowsable$onPostMessage;->extraCallback:Lo/isBrowsable$onPostMessage;

    return-void

    .line 247
    :cond_0
    new-instance v0, Lo/isBrowsable$onPostMessage;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo/isBrowsable$onPostMessage;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lo/isBrowsable$onPostMessage;->onNavigationEvent:Lo/isBrowsable$onPostMessage;

    .line 248
    new-instance v0, Lo/isBrowsable$onPostMessage;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lo/isBrowsable$onPostMessage;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lo/isBrowsable$onPostMessage;->extraCallback:Lo/isBrowsable$onPostMessage;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-boolean p1, p0, Lo/isBrowsable$onPostMessage;->onMessageChannelReady:Z

    .line 258
    iput-object p2, p0, Lo/isBrowsable$onPostMessage;->ICustomTabsCallback:Ljava/lang/Throwable;

    return-void
.end method
