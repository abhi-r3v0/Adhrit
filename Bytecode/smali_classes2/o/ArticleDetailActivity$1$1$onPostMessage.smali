.class public final Lo/ArticleDetailActivity$1$1$onPostMessage;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ArticleDetailActivity$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/ArticleDetailActivity$1$1;",
        "Lo/ArticleDetailActivity$1$1$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/ArticleDetailActivity$1$1;->ICustomTabsCallback()Lo/ArticleDetailActivity$1$1;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ArticleDetailActivity$2$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/ArticleDetailActivity$1$1$onPostMessage;-><init>()V

    return-void
.end method
