.class final Lo/MyCardsResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getText2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getText2<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onPostMessage:Lo/PaymentModeListResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/CtasJsonAdapter;Lo/PaymentModeListResponseJsonAdapter;)V
    .locals 0

    iput-object p2, p0, Lo/MyCardsResponseJsonAdapter;->onPostMessage:Lo/PaymentModeListResponseJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lo/CtasJsonAdapter;->extraCallback()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lo/MyCardsResponseJsonAdapter;->onPostMessage:Lo/PaymentModeListResponseJsonAdapter;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lo/CtasJsonAdapter;->extraCallback()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lo/MyCardsResponseJsonAdapter;->onPostMessage:Lo/PaymentModeListResponseJsonAdapter;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
