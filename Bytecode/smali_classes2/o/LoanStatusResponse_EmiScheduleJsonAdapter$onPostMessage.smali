.class public final Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;
.super Lo/LoanStatusResponse$Incorrect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "TT;*>;>",
        "Lo/LoanStatusResponse$Incorrect<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private onMessageChannelReady:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/LoanStatusResponse$Incorrect;-><init>()V

    iput-object p1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onPostMessage;->onMessageChannelReady:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    return-void
.end method
