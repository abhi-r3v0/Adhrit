.class public final Lo/MarketingMessageStatus$onPostMessage;
.super Lo/setQuestion;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MarketingMessageStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/MarketingMessageStatus<",
        "TT;*>;>",
        "Lo/setQuestion<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/MarketingMessageStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/MarketingMessageStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/setQuestion;-><init>()V

    .line 2
    iput-object p1, p0, Lo/MarketingMessageStatus$onPostMessage;->onMessageChannelReady:Lo/MarketingMessageStatus;

    return-void
.end method
