.class final Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateSupportNavigateUpTaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# static fields
.field static final onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

.field static final onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;


# instance fields
.field final extraCallback:Ljava/lang/Throwable;

.field final onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 245
    sget-boolean v0, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 246
    sput-object v1, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    .line 247
    sput-object v1, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    return-void

    .line 249
    :cond_0
    new-instance v0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    .line 250
    new-instance v0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-boolean p1, p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onNavigationEvent:Z

    .line 260
    iput-object p2, p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->extraCallback:Ljava/lang/Throwable;

    return-void
.end method
