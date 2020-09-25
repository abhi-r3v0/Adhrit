.class final Lo/WinningStatisticsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lo/WinningStatisticsResponseJsonAdapter;

.field private final synthetic onPostMessage:Lo/WinRaffleTicketResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/WinningStatisticsResponseJsonAdapter;Lo/WinRaffleTicketResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/WinningStatisticsResponse;->onMessageChannelReady:Lo/WinningStatisticsResponseJsonAdapter;

    iput-object p2, p0, Lo/WinningStatisticsResponse;->onPostMessage:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/WinningStatisticsResponse;->onPostMessage:Lo/WinRaffleTicketResponseJsonAdapter;

    iget-object v1, p0, Lo/WinningStatisticsResponse;->onMessageChannelReady:Lo/WinningStatisticsResponseJsonAdapter;

    invoke-static {v1}, Lo/WinningStatisticsResponseJsonAdapter;->onPostMessage(Lo/WinningStatisticsResponseJsonAdapter;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/WinRaffleTicketResponseJsonAdapter;->onPostMessage(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
