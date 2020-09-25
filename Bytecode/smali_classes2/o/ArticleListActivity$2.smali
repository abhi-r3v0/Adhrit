.class final Lo/ArticleListActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ConversationDetailActivity$13;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ConversationDetailActivity$13<",
        "Ljava/lang/Integer;",
        "Lo/ArticleListActivity$4;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lo/ArticleListActivity$4;->onMessageChannelReady(I)Lo/ArticleListActivity$4;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lo/ArticleListActivity$4;->onMessageChannelReady:Lo/ArticleListActivity$4;

    :cond_0
    return-object p1
.end method
