.class final Lo/ArticleDetailActivity$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ArticleDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# static fields
.field static final onPostMessage:Lo/onFinish;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onFinish<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lo/fJ;->ICustomTabsCallback$Stub:Lo/fJ;

    sget-object v1, Lo/fJ;->ICustomTabsCallback$Stub:Lo/fJ;

    const-string v2, ""

    .line 2
    invoke-static {v0, v2, v1, v2}, Lo/onFinish;->onNavigationEvent(Lo/fJ;Ljava/lang/Object;Lo/fJ;Ljava/lang/Object;)Lo/onFinish;

    move-result-object v0

    sput-object v0, Lo/ArticleDetailActivity$onPostMessage;->onPostMessage:Lo/onFinish;

    return-void
.end method
